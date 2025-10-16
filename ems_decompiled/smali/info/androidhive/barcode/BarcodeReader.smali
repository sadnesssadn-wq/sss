.class public Linfo/androidhive/barcode/BarcodeReader;
.super Landroidx/fragment/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Le/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/androidhive/barcode/BarcodeReader$g;,
        Linfo/androidhive/barcode/BarcodeReader$i;,
        Linfo/androidhive/barcode/BarcodeReader$h;
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field public c:Z

.field public d:Z

.field public e:Le/a/a/j/a;

.field public f:Linfo/androidhive/barcode/camera/CameraSourcePreview;

.field public g:Linfo/androidhive/barcode/camera/GraphicOverlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/androidhive/barcode/camera/GraphicOverlay<",
            "Le/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/view/ScaleGestureDetector;

.field public i:Landroid/view/GestureDetector;

.field public j:Linfo/androidhive/barcode/BarcodeReader$g;

.field public k:Landroid/content/SharedPreferences;

.field public l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Linfo/androidhive/barcode/BarcodeReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/androidhive/barcode/BarcodeReader;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Linfo/androidhive/barcode/BarcodeReader;->c:Z

    iput-boolean v0, p0, Linfo/androidhive/barcode/BarcodeReader;->d:Z

    iput-boolean v0, p0, Linfo/androidhive/barcode/BarcodeReader;->l:Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 8

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "beep.mp3"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 9

    iget-boolean v0, p0, Linfo/androidhive/barcode/BarcodeReader;->c:Z

    iget-boolean v1, p0, Linfo/androidhive/barcode/BarcodeReader;->d:Z

    .line 1
    sget-object v2, Linfo/androidhive/barcode/BarcodeReader;->m:Ljava/lang/String;

    const-string v3, "createCameraSource:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    .line 2
    new-instance v4, Lc/d/a/b/i/n/r2;

    invoke-direct {v4}, Lc/d/a/b/i/n/r2;-><init>()V

    .line 3
    new-instance v5, Lc/d/a/b/i/n/k4;

    invoke-direct {v5, v3, v4}, Lc/d/a/b/i/n/k4;-><init>(Landroid/content/Context;Lc/d/a/b/i/n/r2;)V

    new-instance v3, Lc/d/a/b/q/e/b;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v4}, Lc/d/a/b/q/e/b;-><init>(Lc/d/a/b/i/n/k4;Lc/d/a/b/q/e/e;)V

    .line 4
    new-instance v5, Le/a/a/c;

    iget-object v6, p0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    invoke-direct {v5, v6, p0}, Le/a/a/c;-><init>(Linfo/androidhive/barcode/camera/GraphicOverlay;Le/a/a/b$a;)V

    .line 5
    new-instance v6, Lc/d/a/b/q/c;

    invoke-direct {v6, v4}, Lc/d/a/b/q/c;-><init>(Lc/d/a/b/q/h;)V

    .line 6
    iput-object v5, v6, Lc/d/a/b/q/c;->a:Lc/d/a/b/q/c$a;

    .line 7
    iget-object v5, v3, Lc/d/a/b/q/a;->a:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v7, v3, Lc/d/a/b/q/a;->b:Lc/d/a/b/q/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    check-cast v7, Lc/d/a/b/q/c;

    :try_start_1
    invoke-virtual {v7}, Lc/d/a/b/q/c;->b()V

    :cond_0
    iput-object v6, v3, Lc/d/a/b/q/a;->b:Lc/d/a/b/q/a$b;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    iget-object v5, v3, Lc/d/a/b/q/e/b;->c:Lc/d/a/b/i/n/k4;

    invoke-virtual {v5}, Lc/d/a/b/i/n/f5;->b()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    const-string v5, "Detector dependencies are not yet available."

    .line 9
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    sget v8, Le/a/a/h;->low_storage_error:I

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    .line 10
    new-instance v5, Le/a/a/j/a;

    invoke-direct {v5, v4}, Le/a/a/j/a;-><init>(Le/a/a/j/a$a;)V

    if-eqz v2, :cond_5

    .line 11
    iput-object v2, v5, Le/a/a/j/a;->a:Landroid/content/Context;

    .line 12
    iput v6, v5, Le/a/a/j/a;->d:I

    const/16 v2, 0x640

    const/16 v6, 0x400

    .line 13
    iput v2, v5, Le/a/a/j/a;->h:I

    .line 14
    iput v6, v5, Le/a/a/j/a;->i:I

    const/high16 v2, 0x41700000    # 15.0f

    .line 15
    iput v2, v5, Le/a/a/j/a;->g:F

    if-eqz v0, :cond_3

    const-string v0, "continuous-picture"

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 16
    :goto_1
    iput-object v0, v5, Le/a/a/j/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v4, "torch"

    .line 17
    :cond_4
    iput-object v4, v5, Le/a/a/j/a;->k:Ljava/lang/String;

    .line 18
    new-instance v0, Le/a/a/j/a$c;

    invoke-direct {v0, v5, v3}, Le/a/a/j/a$c;-><init>(Le/a/a/j/a;Lc/d/a/b/q/a;)V

    .line 19
    iput-object v0, v5, Le/a/a/j/a;->m:Le/a/a/j/a$c;

    .line 20
    iput-object v5, p0, Linfo/androidhive/barcode/BarcodeReader;->e:Le/a/a/j/a;

    return-void

    .line 21
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 22
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    const-string v0, "permissionStatus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader;->k:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    invoke-static {p1, v0}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1, v0}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Le/a/a/h;->grant_permission:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Le/a/a/h;->permission_camera:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Le/a/a/h;->grant:I

    new-instance v2, Linfo/androidhive/barcode/BarcodeReader$a;

    invoke-direct {v2, p0}, Linfo/androidhive/barcode/BarcodeReader$a;-><init>(Linfo/androidhive/barcode/BarcodeReader;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Linfo/androidhive/barcode/BarcodeReader$b;

    invoke-direct {v2, p0}, Linfo/androidhive/barcode/BarcodeReader$b;-><init>(Linfo/androidhive/barcode/BarcodeReader;)V

    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Linfo/androidhive/barcode/BarcodeReader;->k:Landroid/content/SharedPreferences;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Le/a/a/h;->grant_permission:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Le/a/a/h;->permission_camera:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Le/a/a/h;->grant:I

    new-instance v2, Linfo/androidhive/barcode/BarcodeReader$c;

    invoke-direct {v2, p0}, Linfo/androidhive/barcode/BarcodeReader$c;-><init>(Linfo/androidhive/barcode/BarcodeReader;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Le/a/a/h;->cancel:I

    new-instance v2, Linfo/androidhive/barcode/BarcodeReader$d;

    invoke-direct {v2, p0}, Linfo/androidhive/barcode/BarcodeReader$d;-><init>(Linfo/androidhive/barcode/BarcodeReader;)V

    goto :goto_0

    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x65

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_1
    iget-object p1, p0, Linfo/androidhive/barcode/BarcodeReader;->k:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Linfo/androidhive/barcode/BarcodeReader;->e()V

    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x66

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-string p2, "android.permission.CAMERA"

    invoke-static {p1, p2}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Linfo/androidhive/barcode/BarcodeReader;->e()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    instance-of v0, p1, Linfo/androidhive/barcode/BarcodeReader$g;

    if-eqz v0, :cond_0

    check-cast p1, Linfo/androidhive/barcode/BarcodeReader$g;

    iput-object p1, p0, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget p3, Le/a/a/g;->fragment_barcode_reader:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    const-string p3, "permissionStatus"

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Linfo/androidhive/barcode/BarcodeReader;->k:Landroid/content/SharedPreferences;

    sget p2, Le/a/a/e;->preview:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Linfo/androidhive/barcode/camera/CameraSourcePreview;

    iput-object p2, p0, Linfo/androidhive/barcode/BarcodeReader;->f:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    sget p2, Le/a/a/e;->graphicOverlay:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Linfo/androidhive/barcode/camera/GraphicOverlay;

    iput-object p2, p0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    new-instance v0, Linfo/androidhive/barcode/BarcodeReader$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/androidhive/barcode/BarcodeReader$h;-><init>(Linfo/androidhive/barcode/BarcodeReader;Linfo/androidhive/barcode/BarcodeReader$a;)V

    invoke-direct {p2, p3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Linfo/androidhive/barcode/BarcodeReader;->i:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    new-instance v0, Linfo/androidhive/barcode/BarcodeReader$i;

    invoke-direct {v0, p0, v1}, Linfo/androidhive/barcode/BarcodeReader$i;-><init>(Linfo/androidhive/barcode/BarcodeReader;Linfo/androidhive/barcode/BarcodeReader$a;)V

    invoke-direct {p2, p3, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Linfo/androidhive/barcode/BarcodeReader;->h:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->f:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    .line 1
    iget-object v1, v0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Le/a/a/j/a;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Le/a/a/j/a;->c()V

    iget-object v1, v1, Le/a/a/j/a;->m:Le/a/a/j/a$c;

    invoke-virtual {v1}, Le/a/a/j/a$c;->a()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    sget-object p3, Le/a/a/i;->BarcodeReader:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Le/a/a/i;->BarcodeReader_auto_focus:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Linfo/androidhive/barcode/BarcodeReader;->c:Z

    sget p2, Le/a/a/i;->BarcodeReader_use_flash:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Linfo/androidhive/barcode/BarcodeReader;->d:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->f:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/a/j/a;->c()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x65

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p3

    if-ge p2, v1, :cond_0

    aget v0, p3, p2

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Linfo/androidhive/barcode/BarcodeReader;->e()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-string p2, "android.permission.CAMERA"

    invoke-static {p1, p2}, Lb/i/e/a;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Le/a/a/h;->grant_permission:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget p2, Le/a/a/h;->permission_camera:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget p2, Le/a/a/h;->grant:I

    new-instance p3, Linfo/androidhive/barcode/BarcodeReader$e;

    invoke-direct {p3, p0}, Linfo/androidhive/barcode/BarcodeReader$e;-><init>(Linfo/androidhive/barcode/BarcodeReader;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget p2, Le/a/a/h;->cancel:I

    new-instance p3, Linfo/androidhive/barcode/BarcodeReader$f;

    invoke-direct {p3, p0}, Linfo/androidhive/barcode/BarcodeReader$f;-><init>(Linfo/androidhive/barcode/BarcodeReader;)V

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    invoke-interface {p1}, Linfo/androidhive/barcode/BarcodeReader$g;->e()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 1
    sget-object v0, Lc/d/a/b/e/d;->c:Ljava/lang/Object;

    sget-object v0, Lc/d/a/b/e/d;->d:Lc/d/a/b/e/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/b/e/d;->d(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    const/16 v3, 0x2329

    invoke-virtual {v0, v2, v1, v3}, Lc/d/a/b/e/d;->c(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->e:Le/a/a/j/a;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Linfo/androidhive/barcode/BarcodeReader;->f:Linfo/androidhive/barcode/camera/CameraSourcePreview;

    iget-object v2, p0, Linfo/androidhive/barcode/BarcodeReader;->g:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 2
    iput-object v2, v1, Linfo/androidhive/barcode/camera/CameraSourcePreview;->h:Linfo/androidhive/barcode/camera/GraphicOverlay;

    .line 3
    iput-object v0, v1, Linfo/androidhive/barcode/camera/CameraSourcePreview;->g:Le/a/a/j/a;

    const/4 v0, 0x1

    iput-boolean v0, v1, Linfo/androidhive/barcode/camera/CameraSourcePreview;->e:Z

    invoke-virtual {v1}, Linfo/androidhive/barcode/camera/CameraSourcePreview;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Linfo/androidhive/barcode/BarcodeReader;->m:Ljava/lang/String;

    const-string v2, "Unable to start camera source."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->e:Le/a/a/j/a;

    .line 5
    iget-object v1, v0, Le/a/a/j/a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-virtual {v0}, Le/a/a/j/a;->c()V

    iget-object v0, v0, Le/a/a/j/a;->m:Le/a/a/j/a$c;

    invoke-virtual {v0}, Le/a/a/j/a$c;->a()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->e:Le/a/a/j/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-boolean v0, p0, Linfo/androidhive/barcode/BarcodeReader;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lb/i/f/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Linfo/androidhive/barcode/BarcodeReader;->e()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->j:Linfo/androidhive/barcode/BarcodeReader$g;

    invoke-interface {v0}, Linfo/androidhive/barcode/BarcodeReader$g;->e()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Linfo/androidhive/barcode/BarcodeReader;->h:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Linfo/androidhive/barcode/BarcodeReader;->i:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
