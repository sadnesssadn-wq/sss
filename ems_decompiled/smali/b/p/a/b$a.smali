.class public Lb/p/a/b$a;
.super Lb/o/o;
.source ""

# interfaces
.implements Lb/p/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lb/o/o<",
        "TD;>;",
        "Lb/p/b/b$a<",
        "TD;>;"
    }
.end annotation


# instance fields
.field public final l:I

.field public final m:Landroid/os/Bundle;

.field public final n:Lb/p/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/b/b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public o:Lb/o/j;

.field public p:Lb/p/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field public q:Lb/p/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/p/b/b<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILandroid/os/Bundle;Lb/p/b/b;Lb/p/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lb/p/b/b<",
            "TD;>;",
            "Lb/p/b/b<",
            "TD;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lb/o/o;-><init>()V

    iput p1, p0, Lb/p/a/b$a;->l:I

    iput-object p2, p0, Lb/p/a/b$a;->m:Landroid/os/Bundle;

    iput-object p3, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    iput-object p4, p0, Lb/p/a/b$a;->q:Lb/p/b/b;

    .line 1
    iget-object p2, p3, Lb/p/b/b;->b:Lb/p/b/b$a;

    if-nez p2, :cond_0

    iput-object p0, p3, Lb/p/b/b;->b:Lb/p/b/b$a;

    iput p1, p3, Lb/p/b/b;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "There is already a listener registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/p/b/b;->c:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/p/b/b;->e:Z

    iput-boolean v1, v0, Lb/p/b/b;->d:Z

    check-cast v0, Lc/d/a/b/a/a/e/b/e;

    .line 2
    iget-object v1, v0, Lc/d/a/b/a/a/e/b/e;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 3
    invoke-virtual {v0}, Lb/p/b/b;->b()Z

    new-instance v1, Lb/p/b/a$a;

    invoke-direct {v1, v0}, Lb/p/b/a$a;-><init>(Lb/p/b/a;)V

    iput-object v1, v0, Lb/p/b/a;->h:Lb/p/b/a$a;

    invoke-virtual {v0}, Lb/p/b/a;->d()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lb/p/b/b;->c:Z

    return-void
.end method

.method public h(Lb/o/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/p<",
            "-TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->h(Lb/o/p;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/p/a/b$a;->o:Lb/o/j;

    iput-object p1, p0, Lb/p/a/b$a;->p:Lb/p/a/b$b;

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lb/o/o;->i(Ljava/lang/Object;)V

    iget-object p1, p0, Lb/p/a/b$a;->q:Lb/p/b/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lb/p/b/b;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lb/p/b/b;->c:Z

    iput-boolean v0, p1, Lb/p/b/b;->d:Z

    iput-boolean v0, p1, Lb/p/b/b;->f:Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lb/p/a/b$a;->q:Lb/p/b/b;

    :cond_0
    return-void
.end method

.method public k(Z)Lb/p/b/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lb/p/b/b<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    invoke-virtual {v0}, Lb/p/b/b;->b()Z

    iget-object v0, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lb/p/b/b;->d:Z

    .line 2
    iget-object v0, p0, Lb/p/a/b$a;->p:Lb/p/a/b$b;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, v0}, Landroidx/lifecycle/LiveData;->h(Lb/o/p;)V

    iput-object v2, p0, Lb/p/a/b$a;->o:Lb/o/j;

    iput-object v2, p0, Lb/p/a/b$a;->p:Lb/p/a/b$b;

    if-eqz p1, :cond_0

    .line 4
    iget-boolean v3, v0, Lb/p/a/b$b;->c:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lb/p/a/b$b;->b:Lb/p/a/a$a;

    check-cast v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v3, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    .line 7
    iget-object v4, v3, Lb/p/b/b;->b:Lb/p/b/b$a;

    if-eqz v4, :cond_5

    if-ne v4, p0, :cond_4

    iput-object v2, v3, Lb/p/b/b;->b:Lb/p/b/b$a;

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, v0, Lb/p/a/b$b;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 9
    :cond_2
    iput-boolean v1, v3, Lb/p/b/b;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, v3, Lb/p/b/b;->c:Z

    iput-boolean p1, v3, Lb/p/b/b;->d:Z

    iput-boolean p1, v3, Lb/p/b/b;->f:Z

    .line 10
    iget-object p1, p0, Lb/p/a/b$a;->q:Lb/p/b/b;

    return-object p1

    :cond_3
    return-object v3

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lb/p/a/b$a;->o:Lb/o/j;

    iget-object v1, p0, Lb/p/a/b$a;->p:Lb/p/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->h(Lb/o/p;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->e(Lb/o/j;Lb/o/p;)V

    :cond_0
    return-void
.end method

.method public m(Lb/o/j;Lb/p/a/a$a;)Lb/p/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/o/j;",
            "Lb/p/a/a$a<",
            "TD;>;)",
            "Lb/p/b/b<",
            "TD;>;"
        }
    .end annotation

    new-instance v0, Lb/p/a/b$b;

    iget-object v1, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    invoke-direct {v0, v1, p2}, Lb/p/a/b$b;-><init>(Lb/p/b/b;Lb/p/a/a$a;)V

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->e(Lb/o/j;Lb/o/p;)V

    iget-object p2, p0, Lb/p/a/b$a;->p:Lb/p/a/b$b;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lb/p/a/b$a;->h(Lb/o/p;)V

    :cond_0
    iput-object p1, p0, Lb/p/a/b$a;->o:Lb/o/j;

    iput-object v0, p0, Lb/p/a/b$a;->p:Lb/p/a/b$b;

    iget-object p1, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/p/a/b$a;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/p/a/b$a;->n:Lb/p/b/b;

    invoke-static {v1, v0}, La/a/a/a/a;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
