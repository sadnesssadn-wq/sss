.class public Lcom/emsportal/activity/SettingNotificationActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public c:Landroid/widget/Switch;

.field public d:Landroid/widget/Switch;

.field public e:Landroid/widget/Switch;

.field public f:Landroid/widget/Switch;

.field public g:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0051

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->c:Landroid/widget/Switch;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "4"

    invoke-virtual {p0, p2, v1, p1}, Lcom/emsportal/activity/SettingNotificationActivity;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->d:Landroid/widget/Switch;

    const-string v2, "2"

    const-string v3, "1"

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v2, p1}, Lcom/emsportal/activity/SettingNotificationActivity;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->e:Landroid/widget/Switch;

    if-ne p1, v0, :cond_2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "3"

    invoke-virtual {p0, v3, p2, p1}, Lcom/emsportal/activity/SettingNotificationActivity;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->f:Landroid/widget/Switch;

    if-ne p1, v0, :cond_3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, v3, p1}, Lcom/emsportal/activity/SettingNotificationActivity;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->g:Landroid/widget/Switch;

    if-ne p1, v0, :cond_5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v1, p1}, Lcom/emsportal/activity/SettingNotificationActivity;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100263

    invoke-static {p1, p2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/emsportal/base/BaseNavigationActivity;->onDestroy()V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->c:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 1
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "SETTING_NOTIFY_PROMOTION"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->d:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 3
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "SETTING_NOTIFY_STATUS_DELIVER_SUCCESS"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 5
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "SETTING_NOTIFY_STATUS_DELIVER_BACK"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->f:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 7
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "SETTING_NOTIFY_STATUS_DELIVER_FAIL"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 8
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->g:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 9
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "PREF_SETTING_NOTIFY_REQUEST"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->c:Landroid/widget/Switch;

    .line 1
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "SETTING_NOTIFY_PROMOTION"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->d:Landroid/widget/Switch;

    .line 3
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "SETTING_NOTIFY_STATUS_DELIVER_SUCCESS"

    invoke-virtual {v1, v2, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->e:Landroid/widget/Switch;

    .line 5
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "SETTING_NOTIFY_STATUS_DELIVER_BACK"

    invoke-virtual {v1, v2, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->f:Landroid/widget/Switch;

    .line 7
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "SETTING_NOTIFY_STATUS_DELIVER_FAIL"

    invoke-virtual {v1, v2, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->g:Landroid/widget/Switch;

    .line 9
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "PREF_SETTING_NOTIFY_REQUEST"

    invoke-virtual {v1, v2, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 11
    new-instance v0, Lc/b/h/s;

    invoke-direct {v0, p0}, Lc/b/h/s;-><init>(Lcom/emsportal/activity/SettingNotificationActivity;)V

    .line 12
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "http://ws.ems.com.vn/api/v1/merchants/get-list-notify"

    invoke-static {v2, v1, v3, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 13
    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->c:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->d:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->e:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->f:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->g:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f1003b1

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080401

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->c:Landroid/widget/Switch;

    const v0, 0x7f080409

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->d:Landroid/widget/Switch;

    const v0, 0x7f080407

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->e:Landroid/widget/Switch;

    const v0, 0x7f080408

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->f:Landroid/widget/Switch;

    const v0, 0x7f080403

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/activity/SettingNotificationActivity;->g:Landroid/widget/Switch;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/emsportal/activity/SettingNotificationActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/activity/SettingNotificationActivity$a;-><init>(Lcom/emsportal/activity/SettingNotificationActivity;)V

    .line 1
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    const-string v2, "active"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p3, "type"

    invoke-virtual {v1, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "1"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string p1, "sub_type"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x1

    const-string p2, "http://ws.ems.com.vn/api/v1/merchants/update-notify"

    invoke-static {p2, v1, p1, v0}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
