.class public final Lc/d/a/b/e/m/m/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/l0;


# instance fields
.field public final a:Lc/d/a/b/e/m/m/o0;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final j(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/o0;->g(Lc/d/a/b/e/a;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->p:Lc/d/a/b/e/m/m/d1;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lc/d/a/b/e/m/m/d1;->a(IZ)V

    return-void
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/o0;->g(Lc/d/a/b/e/a;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final n(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/a;",
            "Lc/d/a/b/e/m/a<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final o(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc/d/a/b/e/m/a$b;",
            "T:",
            "Lc/d/a/b/e/m/m/d<",
            "+",
            "Lc/d/a/b/e/m/j;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/j0;->w:Lc/d/a/b/e/m/m/r1;

    .line 1
    iget-object v1, v0, Lc/d/a/b/e/m/m/r1;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lc/d/a/b/e/m/m/r1;->b:Lc/d/a/b/e/m/m/s1;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->o:Lc/d/a/b/e/m/m/j0;

    .line 4
    iget-object v1, p1, Lc/d/a/b/e/m/m/d;->n:Lc/d/a/b/e/m/a$c;

    .line 5
    iget-object v0, v0, Lc/d/a/b/e/m/m/j0;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/a$f;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v1, v1, Lc/d/a/b/e/m/m/o0;->i:Ljava/util/Map;

    .line 6
    iget-object v2, p1, Lc/d/a/b/e/m/m/d;->n:Lc/d/a/b/e/m/a$c;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0}, Lc/d/a/b/e/m/m/d;->n(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lc/d/a/b/e/m/m/d;->m(Lc/d/a/b/e/m/a$b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    new-instance v1, Lc/d/a/b/e/m/m/v;

    invoke-direct {v1, p0, p0}, Lc/d/a/b/e/m/m/v;-><init>(Lc/d/a/b/e/m/m/t;Lc/d/a/b/e/m/m/l0;)V

    .line 10
    iget-object v2, v0, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-object p1
.end method
