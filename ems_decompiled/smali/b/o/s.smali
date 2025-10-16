.class public Lb/o/s;
.super Lb/o/c;
.source ""


# instance fields
.field public final synthetic c:Lb/o/r;


# direct methods
.method public constructor <init>(Lb/o/r;)V
    .locals 0

    iput-object p1, p0, Lb/o/s;->c:Lb/o/r;

    invoke-direct {p0}, Lb/o/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget p2, Lb/o/t;->d:I

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lb/o/t;

    .line 2
    iget-object p2, p0, Lb/o/s;->c:Lb/o/r;

    iget-object p2, p2, Lb/o/r;->j:Lb/o/t$a;

    .line 3
    iput-object p2, p1, Lb/o/t;->c:Lb/o/t$a;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Lb/o/s;->c:Lb/o/r;

    .line 1
    iget v0, p1, Lb/o/r;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lb/o/r;->d:I

    if-nez v0, :cond_0

    iget-object v0, p1, Lb/o/r;->g:Landroid/os/Handler;

    iget-object p1, p1, Lb/o/r;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    iget-object p1, p0, Lb/o/s;->c:Lb/o/r;

    .line 1
    iget v0, p1, Lb/o/r;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lb/o/r;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p1, Lb/o/r;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb/o/r;->h:Lb/o/k;

    sget-object v2, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    invoke-virtual {v0, v2}, Lb/o/k;->e(Lb/o/f$a;)V

    iput-boolean v1, p1, Lb/o/r;->f:Z

    :cond_0
    return-void
.end method
