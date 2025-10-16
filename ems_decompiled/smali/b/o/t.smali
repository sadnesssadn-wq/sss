.class public Lb/o/t;
.super Landroid/app/Fragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/t$b;,
        Lb/o/t$a;
    }
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public c:Lb/o/t$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lb/o/f$a;)V
    .locals 2

    instance-of v0, p0, Lb/o/l;

    const-string v1, "handleLifecycleEvent"

    if-eqz v0, :cond_0

    check-cast p0, Lb/o/l;

    invoke-interface {p0}, Lb/o/l;->getLifecycle()Lb/o/k;

    move-result-object p0

    .line 1
    invoke-virtual {p0, v1}, Lb/o/k;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/o/f$a;->a()Lb/o/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/o/k;->g(Lb/o/f$b;)V

    return-void

    .line 2
    :cond_0
    instance-of v0, p0, Lb/o/j;

    if-eqz v0, :cond_1

    check-cast p0, Lb/o/j;

    invoke-interface {p0}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object p0

    instance-of v0, p0, Lb/o/k;

    if-eqz v0, :cond_1

    check-cast p0, Lb/o/k;

    .line 3
    invoke-virtual {p0, v1}, Lb/o/k;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/o/f$a;->a()Lb/o/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/o/k;->g(Lb/o/f$b;)V

    :cond_1
    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lb/o/t$b;->registerIn(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lb/o/t;

    invoke-direct {v2}, Lb/o/t;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lb/o/f$a;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lb/o/t;->a(Landroid/app/Activity;Lb/o/f$a;)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p1, Lb/o/f$a;->ON_CREATE:Lb/o/f$a;

    invoke-virtual {p0, p1}, Lb/o/t;->b(Lb/o/f$a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object v0, Lb/o/f$a;->ON_DESTROY:Lb/o/f$a;

    invoke-virtual {p0, v0}, Lb/o/t;->b(Lb/o/f$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/o/t;->c:Lb/o/t$a;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lb/o/f$a;->ON_PAUSE:Lb/o/f$a;

    invoke-virtual {p0, v0}, Lb/o/t;->b(Lb/o/f$a;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lb/o/t;->c:Lb/o/t$a;

    if-eqz v0, :cond_1

    .line 1
    check-cast v0, Lb/o/r$b;

    .line 2
    iget-object v0, v0, Lb/o/r$b;->a:Lb/o/r;

    .line 3
    iget v1, v0, Lb/o/r;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lb/o/r;->d:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v0, Lb/o/r;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lb/o/r;->h:Lb/o/k;

    sget-object v2, Lb/o/f$a;->ON_RESUME:Lb/o/f$a;

    invoke-virtual {v1, v2}, Lb/o/k;->e(Lb/o/f$a;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/o/r;->e:Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lb/o/r;->g:Landroid/os/Handler;

    iget-object v0, v0, Lb/o/r;->i:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lb/o/f$a;->ON_RESUME:Lb/o/f$a;

    invoke-virtual {p0, v0}, Lb/o/t;->b(Lb/o/f$a;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lb/o/t;->c:Lb/o/t$a;

    if-eqz v0, :cond_0

    .line 1
    check-cast v0, Lb/o/r$b;

    .line 2
    iget-object v0, v0, Lb/o/r$b;->a:Lb/o/r;

    .line 3
    iget v1, v0, Lb/o/r;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lb/o/r;->c:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lb/o/r;->f:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lb/o/r;->h:Lb/o/k;

    sget-object v2, Lb/o/f$a;->ON_START:Lb/o/f$a;

    invoke-virtual {v1, v2}, Lb/o/k;->e(Lb/o/f$a;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/o/r;->f:Z

    .line 4
    :cond_0
    sget-object v0, Lb/o/f$a;->ON_START:Lb/o/f$a;

    invoke-virtual {p0, v0}, Lb/o/t;->b(Lb/o/f$a;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object v0, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    invoke-virtual {p0, v0}, Lb/o/t;->b(Lb/o/f$a;)V

    return-void
.end method
