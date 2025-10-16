.class public Lcom/emsportal/activity/SplashActivity;
.super Lb/b/k/h;
.source ""


# instance fields
.field public c:Landroid/os/Handler;

.field public d:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 3

    .line 1
    const-class v0, Lc/d/a/d/a/a/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/d/a/d/a/a/e;->a:Lc/d/a/d/a/a/u;

    if-nez v1, :cond_1

    new-instance v1, Lc/d/a/d/a/a/j;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 3
    :goto_0
    invoke-direct {v1, v2}, Lc/d/a/d/a/a/j;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v2, Lc/d/a/d/a/a/u;

    invoke-direct {v2, v1}, Lc/d/a/d/a/a/u;-><init>(Lc/d/a/d/a/a/j;)V

    .line 5
    sput-object v2, Lc/d/a/d/a/a/e;->a:Lc/d/a/d/a/a/u;

    :cond_1
    sget-object v1, Lc/d/a/d/a/a/e;->a:Lc/d/a/d/a/a/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6
    iget-object v0, v1, Lc/d/a/d/a/a/u;->f:Lc/d/a/d/a/a/d/c;

    invoke-interface {v0}, Lc/d/a/d/a/a/d/c;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/d/a/a/b;

    .line 7
    invoke-interface {v0}, Lc/d/a/d/a/a/b;->a()Lc/d/a/b/p/l;

    move-result-object v1

    new-instance v2, Lc/b/h/b;

    invoke-direct {v2, p0, v0}, Lc/b/h/b;-><init>(Lcom/emsportal/activity/SplashActivity;Lc/d/a/d/a/a/b;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/l;->d(Lc/d/a/b/p/h;)Lc/d/a/b/p/l;

    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x7b

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/activity/SplashActivity;->n()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2
    invoke-super {p0, p1}, Lb/m/d/m;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b0052

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    const p1, 0x7f0801fa

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/emsportal/activity/SplashActivity;->d:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f100263

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lc/b/k/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lc/b/k/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Lc/b/h/t;

    invoke-direct {v2, p0}, Lc/b/h/t;-><init>(Lcom/emsportal/activity/SplashActivity;)V

    invoke-static {p1, v0, v1, v2}, Lc/b/s/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/t/b$d;)V

    .line 7
    invoke-virtual {p0}, Lcom/emsportal/activity/SplashActivity;->n()V

    invoke-static {}, Lc/b/k/a;->c()Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lb/m/d/m;->onResume()V

    return-void
.end method
