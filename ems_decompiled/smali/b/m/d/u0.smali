.class public Lb/m/d/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/s/d;
.implements Lb/o/d0;


# instance fields
.field public final c:Lb/o/c0;

.field public d:Lb/o/k;

.field public e:Lb/s/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lb/o/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/m/d/u0;->d:Lb/o/k;

    iput-object p1, p0, Lb/m/d/u0;->e:Lb/s/c;

    iput-object p2, p0, Lb/m/d/u0;->c:Lb/o/c0;

    return-void
.end method


# virtual methods
.method public a(Lb/o/f$a;)V
    .locals 2

    iget-object v0, p0, Lb/m/d/u0;->d:Lb/o/k;

    const-string v1, "handleLifecycleEvent"

    .line 1
    invoke-virtual {v0, v1}, Lb/o/k;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/o/f$a;->a()Lb/o/f$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/o/k;->g(Lb/o/f$b;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/m/d/u0;->d:Lb/o/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/o/k;

    invoke-direct {v0, p0}, Lb/o/k;-><init>(Lb/o/j;)V

    iput-object v0, p0, Lb/m/d/u0;->d:Lb/o/k;

    .line 1
    new-instance v0, Lb/s/c;

    invoke-direct {v0, p0}, Lb/s/c;-><init>(Lb/s/d;)V

    .line 2
    iput-object v0, p0, Lb/m/d/u0;->e:Lb/s/c;

    :cond_0
    return-void
.end method

.method public getLifecycle()Lb/o/f;
    .locals 1

    invoke-virtual {p0}, Lb/m/d/u0;->b()V

    iget-object v0, p0, Lb/m/d/u0;->d:Lb/o/k;

    return-object v0
.end method

.method public getSavedStateRegistry()Lb/s/b;
    .locals 1

    invoke-virtual {p0}, Lb/m/d/u0;->b()V

    iget-object v0, p0, Lb/m/d/u0;->e:Lb/s/c;

    .line 1
    iget-object v0, v0, Lb/s/c;->b:Lb/s/b;

    return-object v0
.end method

.method public getViewModelStore()Lb/o/c0;
    .locals 1

    invoke-virtual {p0}, Lb/m/d/u0;->b()V

    iget-object v0, p0, Lb/m/d/u0;->c:Lb/o/c0;

    return-object v0
.end method
