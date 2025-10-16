.class public final Lc/d/a/b/e/p/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/f$a;


# instance fields
.field public final synthetic a:Lc/d/a/b/e/m/f;

.field public final synthetic b:Lc/d/a/b/p/m;

.field public final synthetic c:Lc/d/a/b/e/p/o$a;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/f;Lc/d/a/b/p/m;Lc/d/a/b/e/p/o$a;Lc/d/a/b/e/p/o$b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/p/l0;->a:Lc/d/a/b/e/m/f;

    iput-object p2, p0, Lc/d/a/b/e/p/l0;->b:Lc/d/a/b/p/m;

    iput-object p3, p0, Lc/d/a/b/e/p/l0;->c:Lc/d/a/b/e/p/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc/d/a/b/e/p/l0;->a:Lc/d/a/b/e/m/f;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "Result has already been consumed."

    invoke-static {v3, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    const-string v3, "Cannot await if then() has been called."

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->k:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()Z

    move-result v0

    const-string v1, "Result is not ready."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->o(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k()Lc/d/a/b/e/m/j;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/p/l0;->b:Lc/d/a/b/p/m;

    iget-object v1, p0, Lc/d/a/b/e/p/l0;->c:Lc/d/a/b/e/p/o$a;

    invoke-interface {v1, p1}, Lc/d/a/b/e/p/o$a;->a(Lc/d/a/b/e/m/j;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/p/l0;->b:Lc/d/a/b/p/m;

    .line 5
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->R(Lcom/google/android/gms/common/api/Status;)Lc/d/a/b/e/m/b;

    move-result-object p1

    .line 6
    iget-object v0, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    return-void
.end method
