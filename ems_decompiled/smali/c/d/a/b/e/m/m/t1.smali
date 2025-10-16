.class public final Lc/d/a/b/e/m/m/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/s1;


# instance fields
.field public final synthetic a:Lc/d/a/b/e/m/m/r1;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/r1;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/t1;->a:Lc/d/a/b/e/m/m/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/t1;->a:Lc/d/a/b/e/m/m/r1;

    iget-object v0, v0, Lc/d/a/b/e/m/m/r1;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
