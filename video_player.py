#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
随机特效视频播放器
支持随机移动、变速、缩放、镜像、快进等特效
包含卡密验证系统
"""

import sys
import os
import random
import json
from datetime import datetime, timedelta
from pathlib import Path
from PyQt5.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout, 
                             QHBoxLayout, QPushButton, QLabel, QSlider, 
                             QFileDialog, QGroupBox, QSpinBox, QDoubleSpinBox,
                             QLineEdit, QDialog, QMessageBox, QCheckBox)
from PyQt5.QtCore import Qt, QTimer, QUrl
from PyQt5.QtMultimedia import QMediaPlayer, QMediaContent
from PyQt5.QtMultimediaWidgets import QVideoWidget
from PyQt5.QtGui import QTransform


class LicenseManager:
    """卡密管理系统"""
    
    def __init__(self):
        self.config_file = "license.json"
        self.load_license()
    
    def load_license(self):
        """加载许可证信息"""
        if os.path.exists(self.config_file):
            try:
                with open(self.config_file, 'r', encoding='utf-8') as f:
                    data = json.load(f)
                    self.license_key = data.get('key', '')
                    self.expiry_date = data.get('expiry', '')
            except:
                self.license_key = ''
                self.expiry_date = ''
        else:
            self.license_key = ''
            self.expiry_date = ''
    
    def save_license(self, key, days):
        """保存许可证"""
        expiry = datetime.now() + timedelta(days=days)
        data = {
            'key': key,
            'expiry': expiry.strftime('%Y-%m-%d %H:%M:%S')
        }
        with open(self.config_file, 'w', encoding='utf-8') as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
        self.license_key = key
        self.expiry_date = data['expiry']
    
    def verify_license(self, key):
        """验证卡密"""
        # 这里使用简单的卡密格式：DAY-XXXXX（天卡）或 MONTH-XXXXX（月卡）
        # 实际使用时可以连接服务器验证
        if key.startswith('DAY-'):
            return True, 1
        elif key.startswith('MONTH-'):
            return True, 30
        else:
            return False, 0
    
    def is_valid(self):
        """检查许可证是否有效"""
        if not self.expiry_date:
            return False
        try:
            expiry = datetime.strptime(self.expiry_date, '%Y-%m-%d %H:%M:%S')
            return datetime.now() < expiry
        except:
            return False
    
    def get_remaining_days(self):
        """获取剩余天数"""
        if not self.expiry_date:
            return 0
        try:
            expiry = datetime.strptime(self.expiry_date, '%Y-%m-%d %H:%M:%S')
            remaining = expiry - datetime.now()
            return max(0, remaining.days)
        except:
            return 0


class LicenseDialog(QDialog):
    """卡密输入对话框"""
    
    def __init__(self, license_manager, parent=None):
        super().__init__(parent)
        self.license_manager = license_manager
        self.init_ui()
    
    def init_ui(self):
        self.setWindowTitle('激活软件')
        self.setFixedSize(400, 200)
        
        layout = QVBoxLayout()
        
        # 说明文字
        info_label = QLabel('请输入卡密激活软件\n天卡格式：DAY-XXXXX\n月卡格式：MONTH-XXXXX')
        info_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(info_label)
        
        # 卡密输入
        self.key_input = QLineEdit()
        self.key_input.setPlaceholderText('请输入卡密')
        layout.addWidget(self.key_input)
        
        # 激活按钮
        activate_btn = QPushButton('激活')
        activate_btn.clicked.connect(self.activate)
        layout.addWidget(activate_btn)
        
        # 剩余时间显示
        remaining = self.license_manager.get_remaining_days()
        if remaining > 0:
            self.status_label = QLabel(f'当前许可证剩余 {remaining} 天')
        else:
            self.status_label = QLabel('未激活')
        self.status_label.setAlignment(Qt.AlignCenter)
        layout.addWidget(self.status_label)
        
        self.setLayout(layout)
    
    def activate(self):
        """激活卡密"""
        key = self.key_input.text().strip()
        if not key:
            QMessageBox.warning(self, '错误', '请输入卡密')
            return
        
        valid, days = self.license_manager.verify_license(key)
        if valid:
            self.license_manager.save_license(key, days)
            QMessageBox.information(self, '成功', f'激活成功！有效期 {days} 天')
            self.accept()
        else:
            QMessageBox.warning(self, '错误', '卡密无效，请检查后重试')


class VideoPlayer(QMainWindow):
    """视频播放器主窗口"""
    
    def __init__(self):
        super().__init__()
        
        # 卡密验证
        self.license_manager = LicenseManager()
        if not self.license_manager.is_valid():
            dialog = LicenseDialog(self.license_manager, self)
            if dialog.exec_() != QDialog.Accepted:
                sys.exit()
        
        self.video_files = []
        self.current_video_index = -1
        
        # 特效参数
        self.move_range = 50  # 移动幅度（像素）
        self.speed_min = 0.5  # 最小速度
        self.speed_max = 2.0  # 最大速度
        self.zoom_min = 0.8   # 最小缩放
        self.zoom_max = 1.5   # 最大缩放
        self.mirror_interval_min = 10  # 镜像间隔最小秒数
        self.mirror_interval_max = 20
        self.mirror_duration_min = 2   # 镜像持续最小秒数
        self.mirror_duration_max = 5
        self.skip_interval_min = 10    # 快进间隔最小秒数
        self.skip_interval_max = 20
        self.skip_duration_min = 1     # 快进秒数最小
        self.skip_duration_max = 3
        
        # 特效状态
        self.current_x = 0
        self.current_y = 0
        self.current_zoom = 1.0
        self.current_speed = 1.0
        self.is_mirrored = False
        
        # 特效启用状态
        self.enable_move = True
        self.enable_speed = True
        self.enable_zoom = True
        self.enable_mirror = True
        self.enable_skip = True
        
        self.init_ui()
        self.setup_timers()
    
    def init_ui(self):
        """初始化界面"""
        self.setWindowTitle('随机特效视频播放器')
        self.setGeometry(100, 100, 1200, 800)
        
        # 中心部件
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        
        main_layout = QHBoxLayout()
        
        # 左侧：视频播放区域
        video_layout = QVBoxLayout()
        
        self.video_widget = QVideoWidget()
        video_layout.addWidget(self.video_widget)
        
        # 播放控制按钮
        control_layout = QHBoxLayout()
        self.play_btn = QPushButton('播放')
        self.play_btn.clicked.connect(self.toggle_play)
        self.pause_btn = QPushButton('暂停')
        self.pause_btn.clicked.connect(self.pause_video)
        self.next_btn = QPushButton('下一个')
        self.next_btn.clicked.connect(self.play_next_video)
        
        control_layout.addWidget(self.play_btn)
        control_layout.addWidget(self.pause_btn)
        control_layout.addWidget(self.next_btn)
        video_layout.addLayout(control_layout)
        
        main_layout.addLayout(video_layout, 3)
        
        # 右侧：控制面板
        control_panel = self.create_control_panel()
        main_layout.addWidget(control_panel, 1)
        
        central_widget.setLayout(main_layout)
        
        # 媒体播放器
        self.media_player = QMediaPlayer(None, QMediaPlayer.VideoSurface)
        self.media_player.setVideoOutput(self.video_widget)
        self.media_player.mediaStatusChanged.connect(self.on_media_status_changed)
    
    def create_control_panel(self):
        """创建控制面板"""
        panel = QWidget()
        layout = QVBoxLayout()
        
        # 文件夹选择
        folder_group = QGroupBox('视频文件夹')
        folder_layout = QVBoxLayout()
        self.folder_btn = QPushButton('选择文件夹')
        self.folder_btn.clicked.connect(self.select_folder)
        self.folder_label = QLabel('未选择')
        folder_layout.addWidget(self.folder_btn)
        folder_layout.addWidget(self.folder_label)
        folder_group.setLayout(folder_layout)
        layout.addWidget(folder_group)
        
        # 移动控制
        move_group = QGroupBox('随机移动')
        move_layout = QVBoxLayout()
        self.move_check = QCheckBox('启用随机移动')
        self.move_check.setChecked(True)
        self.move_check.stateChanged.connect(lambda: setattr(self, 'enable_move', self.move_check.isChecked()))
        move_layout.addWidget(self.move_check)
        move_layout.addWidget(QLabel('移动幅度（像素）：'))
        self.move_slider = QSpinBox()
        self.move_slider.setRange(0, 200)
        self.move_slider.setValue(50)
        self.move_slider.valueChanged.connect(lambda v: setattr(self, 'move_range', v))
        move_layout.addWidget(self.move_slider)
        move_group.setLayout(move_layout)
        layout.addWidget(move_group)
        
        # 变速控制
        speed_group = QGroupBox('随机变速')
        speed_layout = QVBoxLayout()
        self.speed_check = QCheckBox('启用随机变速')
        self.speed_check.setChecked(True)
        self.speed_check.stateChanged.connect(lambda: setattr(self, 'enable_speed', self.speed_check.isChecked()))
        speed_layout.addWidget(self.speed_check)
        speed_layout.addWidget(QLabel('速度范围：'))
        speed_layout.addWidget(QLabel('最小速度：'))
        self.speed_min_spin = QDoubleSpinBox()
        self.speed_min_spin.setRange(0.1, 2.0)
        self.speed_min_spin.setValue(0.5)
        self.speed_min_spin.setSingleStep(0.1)
        self.speed_min_spin.valueChanged.connect(lambda v: setattr(self, 'speed_min', v))
        speed_layout.addWidget(self.speed_min_spin)
        speed_layout.addWidget(QLabel('最大速度：'))
        self.speed_max_spin = QDoubleSpinBox()
        self.speed_max_spin.setRange(0.1, 3.0)
        self.speed_max_spin.setValue(2.0)
        self.speed_max_spin.setSingleStep(0.1)
        self.speed_max_spin.valueChanged.connect(lambda v: setattr(self, 'speed_max', v))
        speed_layout.addWidget(self.speed_max_spin)
        speed_group.setLayout(speed_layout)
        layout.addWidget(speed_group)
        
        # 缩放控制
        zoom_group = QGroupBox('随机缩放')
        zoom_layout = QVBoxLayout()
        self.zoom_check = QCheckBox('启用随机缩放')
        self.zoom_check.setChecked(True)
        self.zoom_check.stateChanged.connect(lambda: setattr(self, 'enable_zoom', self.zoom_check.isChecked()))
        zoom_layout.addWidget(self.zoom_check)
        zoom_layout.addWidget(QLabel('缩放范围：'))
        zoom_layout.addWidget(QLabel('最小缩放：'))
        self.zoom_min_spin = QDoubleSpinBox()
        self.zoom_min_spin.setRange(0.5, 1.0)
        self.zoom_min_spin.setValue(0.8)
        self.zoom_min_spin.setSingleStep(0.1)
        self.zoom_min_spin.valueChanged.connect(lambda v: setattr(self, 'zoom_min', v))
        zoom_layout.addWidget(self.zoom_min_spin)
        zoom_layout.addWidget(QLabel('最大缩放：'))
        self.zoom_max_spin = QDoubleSpinBox()
        self.zoom_max_spin.setRange(1.0, 3.0)
        self.zoom_max_spin.setValue(1.5)
        self.zoom_max_spin.setSingleStep(0.1)
        self.zoom_max_spin.valueChanged.connect(lambda v: setattr(self, 'zoom_max', v))
        zoom_layout.addWidget(self.zoom_max_spin)
        zoom_group.setLayout(zoom_layout)
        layout.addWidget(zoom_group)
        
        # 镜像控制
        mirror_group = QGroupBox('随机镜像')
        mirror_layout = QVBoxLayout()
        self.mirror_check = QCheckBox('启用随机镜像')
        self.mirror_check.setChecked(True)
        self.mirror_check.stateChanged.connect(lambda: setattr(self, 'enable_mirror', self.mirror_check.isChecked()))
        mirror_layout.addWidget(self.mirror_check)
        mirror_layout.addWidget(QLabel('正常播放间隔（秒）：'))
        mirror_interval_h = QHBoxLayout()
        self.mirror_int_min = QSpinBox()
        self.mirror_int_min.setRange(1, 60)
        self.mirror_int_min.setValue(10)
        self.mirror_int_min.valueChanged.connect(lambda v: setattr(self, 'mirror_interval_min', v))
        self.mirror_int_max = QSpinBox()
        self.mirror_int_max.setRange(1, 60)
        self.mirror_int_max.setValue(20)
        self.mirror_int_max.valueChanged.connect(lambda v: setattr(self, 'mirror_interval_max', v))
        mirror_interval_h.addWidget(self.mirror_int_min)
        mirror_interval_h.addWidget(QLabel('-'))
        mirror_interval_h.addWidget(self.mirror_int_max)
        mirror_layout.addLayout(mirror_interval_h)
        mirror_layout.addWidget(QLabel('镜像持续时间（秒）：'))
        mirror_duration_h = QHBoxLayout()
        self.mirror_dur_min = QSpinBox()
        self.mirror_dur_min.setRange(1, 30)
        self.mirror_dur_min.setValue(2)
        self.mirror_dur_min.valueChanged.connect(lambda v: setattr(self, 'mirror_duration_min', v))
        self.mirror_dur_max = QSpinBox()
        self.mirror_dur_max.setRange(1, 30)
        self.mirror_dur_max.setValue(5)
        self.mirror_dur_max.valueChanged.connect(lambda v: setattr(self, 'mirror_duration_max', v))
        mirror_duration_h.addWidget(self.mirror_dur_min)
        mirror_duration_h.addWidget(QLabel('-'))
        mirror_duration_h.addWidget(self.mirror_dur_max)
        mirror_layout.addLayout(mirror_duration_h)
        mirror_group.setLayout(mirror_layout)
        layout.addWidget(mirror_group)
        
        # 快进控制
        skip_group = QGroupBox('随机快进')
        skip_layout = QVBoxLayout()
        self.skip_check = QCheckBox('启用随机快进')
        self.skip_check.setChecked(True)
        self.skip_check.stateChanged.connect(lambda: setattr(self, 'enable_skip', self.skip_check.isChecked()))
        skip_layout.addWidget(self.skip_check)
        skip_layout.addWidget(QLabel('正常播放间隔（秒）：'))
        skip_interval_h = QHBoxLayout()
        self.skip_int_min = QSpinBox()
        self.skip_int_min.setRange(1, 60)
        self.skip_int_min.setValue(10)
        self.skip_int_min.valueChanged.connect(lambda v: setattr(self, 'skip_interval_min', v))
        self.skip_int_max = QSpinBox()
        self.skip_int_max.setRange(1, 60)
        self.skip_int_max.setValue(20)
        self.skip_int_max.valueChanged.connect(lambda v: setattr(self, 'skip_interval_max', v))
        skip_interval_h.addWidget(self.skip_int_min)
        skip_interval_h.addWidget(QLabel('-'))
        skip_interval_h.addWidget(self.skip_int_max)
        skip_layout.addLayout(skip_interval_h)
        skip_layout.addWidget(QLabel('快进时长（秒）：'))
        skip_duration_h = QHBoxLayout()
        self.skip_dur_min = QSpinBox()
        self.skip_dur_min.setRange(1, 30)
        self.skip_dur_min.setValue(1)
        self.skip_dur_min.valueChanged.connect(lambda v: setattr(self, 'skip_duration_min', v))
        self.skip_dur_max = QSpinBox()
        self.skip_dur_max.setRange(1, 30)
        self.skip_dur_max.setValue(3)
        self.skip_dur_max.valueChanged.connect(lambda v: setattr(self, 'skip_duration_max', v))
        skip_duration_h.addWidget(self.skip_dur_min)
        skip_duration_h.addWidget(QLabel('-'))
        skip_duration_h.addWidget(self.skip_dur_max)
        skip_layout.addLayout(skip_duration_h)
        skip_group.setLayout(skip_layout)
        layout.addWidget(skip_group)
        
        # 许可证信息
        license_group = QGroupBox('许可证信息')
        license_layout = QVBoxLayout()
        remaining = self.license_manager.get_remaining_days()
        self.license_label = QLabel(f'剩余 {remaining} 天')
        license_layout.addWidget(self.license_label)
        license_btn = QPushButton('重新激活')
        license_btn.clicked.connect(self.show_license_dialog)
        license_layout.addWidget(license_btn)
        license_group.setLayout(license_layout)
        layout.addWidget(license_group)
        
        layout.addStretch()
        panel.setLayout(layout)
        return panel
    
    def setup_timers(self):
        """设置定时器"""
        # 移动效果定时器
        self.move_timer = QTimer()
        self.move_timer.timeout.connect(self.apply_random_move)
        self.move_timer.start(2000)  # 每2秒改变一次位置
        
        # 变速定时器
        self.speed_timer = QTimer()
        self.speed_timer.timeout.connect(self.apply_random_speed)
        self.speed_timer.start(3000)  # 每3秒改变一次速度
        
        # 缩放定时器
        self.zoom_timer = QTimer()
        self.zoom_timer.timeout.connect(self.apply_random_zoom)
        self.zoom_timer.start(2500)  # 每2.5秒改变一次缩放
        
        # 镜像定时器
        self.mirror_timer = QTimer()
        self.mirror_timer.timeout.connect(self.trigger_mirror)
        self.schedule_next_mirror()
        
        # 快进定时器
        self.skip_timer = QTimer()
        self.skip_timer.timeout.connect(self.trigger_skip)
        self.schedule_next_skip()
    
    def select_folder(self):
        """选择视频文件夹"""
        folder = QFileDialog.getExistingDirectory(self, '选择视频文件夹')
        if folder:
            self.load_videos(folder)
            self.folder_label.setText(f'已加载 {len(self.video_files)} 个视频')
    
    def load_videos(self, folder):
        """加载文件夹中的视频"""
        self.video_files = []
        for file in Path(folder).glob('*.mp4'):
            self.video_files.append(str(file))
        random.shuffle(self.video_files)
    
    def toggle_play(self):
        """播放/暂停切换"""
        if self.media_player.state() == QMediaPlayer.PlayingState:
            self.media_player.pause()
        else:
            if self.current_video_index == -1 and self.video_files:
                self.play_next_video()
            else:
                self.media_player.play()
    
    def pause_video(self):
        """暂停视频"""
        self.media_player.pause()
    
    def play_next_video(self):
        """播放下一个视频"""
        if not self.video_files:
            QMessageBox.warning(self, '提示', '请先选择视频文件夹')
            return
        
        # 随机选择下一个视频
        self.current_video_index = random.randint(0, len(self.video_files) - 1)
        video_path = self.video_files[self.current_video_index]
        
        self.media_player.setMedia(QMediaContent(QUrl.fromLocalFile(video_path)))
        self.media_player.play()
        
        # 重置特效
        self.schedule_next_mirror()
        self.schedule_next_skip()
    
    def on_media_status_changed(self, status):
        """媒体状态改变"""
        if status == QMediaPlayer.EndOfMedia:
            # 视频播放完毕，播放下一个
            self.play_next_video()
    
    def apply_random_move(self):
        """应用随机移动"""
        if not self.enable_move:
            return
        
        # 注意：QVideoWidget不支持直接移动内容，这里使用窗口位置模拟
        # 实际应用中可能需要使用OpenGL或其他方法
        self.current_x = random.randint(-self.move_range, self.move_range)
        self.current_y = random.randint(-self.move_range, self.move_range)
        # 这里只是示例，实际效果需要更复杂的实现
    
    def apply_random_speed(self):
        """应用随机变速"""
        if not self.enable_speed or self.media_player.state() != QMediaPlayer.PlayingState:
            return
        
        self.current_speed = random.uniform(self.speed_min, self.speed_max)
        self.media_player.setPlaybackRate(self.current_speed)
    
    def apply_random_zoom(self):
        """应用随机缩放"""
        if not self.enable_zoom:
            return
        
        self.current_zoom = random.uniform(self.zoom_min, self.zoom_max)
        # QVideoWidget缩放需要特殊处理
    
    def schedule_next_mirror(self):
        """安排下一次镜像"""
        if not self.enable_mirror:
            return
        interval = random.randint(self.mirror_interval_min, self.mirror_interval_max) * 1000
        self.mirror_timer.start(interval)
    
    def trigger_mirror(self):
        """触发镜像效果"""
        if not self.enable_mirror:
            return
        
        # 镜像画面
        duration = random.randint(self.mirror_duration_min, self.mirror_duration_max) * 1000
        # 实际镜像效果需要视频处理
        
        # 恢复正常
        QTimer.singleShot(duration, self.schedule_next_mirror)
    
    def schedule_next_skip(self):
        """安排下一次快进"""
        if not self.enable_skip:
            return
        interval = random.randint(self.skip_interval_min, self.skip_interval_max) * 1000
        self.skip_timer.start(interval)
    
    def trigger_skip(self):
        """触发快进"""
        if not self.enable_skip or self.media_player.state() != QMediaPlayer.PlayingState:
            self.schedule_next_skip()
            return
        
        # 快进指定秒数
        skip_seconds = random.randint(self.skip_duration_min, self.skip_duration_max)
        current_pos = self.media_player.position()
        new_pos = current_pos + skip_seconds * 1000
        self.media_player.setPosition(new_pos)
        
        self.schedule_next_skip()
    
    def show_license_dialog(self):
        """显示许可证对话框"""
        dialog = LicenseDialog(self.license_manager, self)
        if dialog.exec_() == QDialog.Accepted:
            remaining = self.license_manager.get_remaining_days()
            self.license_label.setText(f'剩余 {remaining} 天')


def main():
    app = QApplication(sys.argv)
    player = VideoPlayer()
    player.show()
    sys.exit(app.exec_())


if __name__ == '__main__':
    main()
