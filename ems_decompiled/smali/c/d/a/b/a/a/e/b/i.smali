.class public final Lc/d/a/b/a/a/e/b/i;
.super Lc/d/a/b/a/a/e/b/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/a/a/e/b/l<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/a/b/a/a/e/b/l;-><init>(Lc/d/a/b/e/m/e;)V

    return-void
.end method


# virtual methods
.method public final synthetic d(Lcom/google/android/gms/common/api/Status;)Lc/d/a/b/e/m/j;
    .locals 0

    return-object p1
.end method

.method public final l(Lc/d/a/b/e/m/a$b;)V
    .locals 2

    check-cast p1, Lc/d/a/b/a/a/e/b/g;

    invoke-virtual {p1}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/a/e/b/p;

    new-instance v1, Lc/d/a/b/a/a/e/b/k;

    invoke-direct {v1, p0}, Lc/d/a/b/a/a/e/b/k;-><init>(Lc/d/a/b/a/a/e/b/i;)V

    .line 1
    iget-object p1, p1, Lc/d/a/b/a/a/e/b/g;->F:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 2
    invoke-interface {v0, v1, p1}, Lc/d/a/b/a/a/e/b/p;->L(Lc/d/a/b/a/a/e/b/o;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
