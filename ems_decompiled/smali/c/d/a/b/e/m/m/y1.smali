.class public final Lc/d/a/b/e/m/m/y1;
.super Lc/d/a/b/e/m/m/u1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Lc/d/a/b/e/m/m/u1;"
    }
.end annotation


# instance fields
.field public final b:Lc/d/a/b/e/m/m/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/r<",
            "Lc/d/a/b/e/m/a$b;",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final c:Lc/d/a/b/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/m<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/b/e/m/m/a;


# direct methods
.method public constructor <init>(ILc/d/a/b/e/m/m/r;Lc/d/a/b/p/m;Lc/d/a/b/e/m/m/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/a/b/e/m/m/r<",
            "Lc/d/a/b/e/m/a$b;",
            "TResultT;>;",
            "Lc/d/a/b/p/m<",
            "TResultT;>;",
            "Lc/d/a/b/e/m/m/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/d/a/b/e/m/m/u1;-><init>(I)V

    iput-object p3, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    iput-object p2, p0, Lc/d/a/b/e/m/m/y1;->b:Lc/d/a/b/e/m/m/r;

    iput-object p4, p0, Lc/d/a/b/e/m/m/y1;->d:Lc/d/a/b/e/m/m/a;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    .line 1
    iget-boolean p1, p2, Lc/d/a/b/e/m/m/r;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    iget-object v1, p0, Lc/d/a/b/e/m/m/y1;->d:Lc/d/a/b/e/m/m/a;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->R(Lcom/google/android/gms/common/api/Status;)Lc/d/a/b/e/m/b;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lc/d/a/b/e/m/m/g$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/y1;->b:Lc/d/a/b/e/m/m/r;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/e/m/m/r;->a(Lc/d/a/b/e/m/a$b;Lc/d/a/b/p/m;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 4
    invoke-static {p1}, Lc/d/a/b/e/m/m/p0;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    iget-object v1, p0, Lc/d/a/b/e/m/m/y1;->d:Lc/d/a/b/e/m/m/a;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->R(Lcom/google/android/gms/common/api/Status;)Lc/d/a/b/e/m/b;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 8
    throw p1
.end method

.method public final d(Lc/d/a/b/e/m/m/h2;Z)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    .line 1
    iget-object v1, p1, Lc/d/a/b/e/m/m/h2;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    .line 3
    new-instance v1, Lc/d/a/b/e/m/m/i2;

    invoke-direct {v1, p1, v0}, Lc/d/a/b/e/m/m/i2;-><init>(Lc/d/a/b/e/m/m/h2;Lc/d/a/b/p/m;)V

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lc/d/a/b/p/n;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p1, v1}, Lc/d/a/b/p/j0;->r(Ljava/util/concurrent/Executor;Lc/d/a/b/p/f;)Lc/d/a/b/p/l;

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/y1;->c:Lc/d/a/b/p/m;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final f(Lc/d/a/b/e/m/m/g$a;)[Lc/d/a/b/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)[",
            "Lc/d/a/b/e/c;"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/b/e/m/m/y1;->b:Lc/d/a/b/e/m/m/r;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/r;->a:[Lc/d/a/b/e/c;

    return-object p1
.end method

.method public final g(Lc/d/a/b/e/m/m/g$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/b/e/m/m/y1;->b:Lc/d/a/b/e/m/m/r;

    .line 1
    iget-boolean p1, p1, Lc/d/a/b/e/m/m/r;->b:Z

    return p1
.end method
