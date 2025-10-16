.class public abstract Lc/d/a/b/e/m/m/j1;
.super Lc/d/a/b/e/m/m/u1;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/d/a/b/e/m/m/u1;"
    }
.end annotation


# instance fields
.field public final b:Lc/d/a/b/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILc/d/a/b/p/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/a/b/p/m<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lc/d/a/b/e/m/m/u1;-><init>(I)V

    iput-object p2, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    new-instance v1, Lc/d/a/b/e/m/b;

    invoke-direct {v1, p1}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final c(Lc/d/a/b/e/m/m/g$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/j1;->h(Lc/d/a/b/e/m/m/g$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_1
    move-exception p1

    .line 2
    invoke-static {p1}, Lc/d/a/b/e/m/m/p0;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    new-instance v1, Lc/d/a/b/e/m/b;

    invoke-direct {v1, p1}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void

    :catch_2
    move-exception p1

    .line 4
    invoke-static {p1}, Lc/d/a/b/e/m/m/p0;->a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    new-instance v2, Lc/d/a/b/e/m/b;

    invoke-direct {v2, v0}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1, v2}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    .line 6
    throw p1
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j1;->b:Lc/d/a/b/p/m;

    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    return-void
.end method

.method public abstract h(Lc/d/a/b/e/m/m/g$a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;)V"
        }
    .end annotation
.end method
