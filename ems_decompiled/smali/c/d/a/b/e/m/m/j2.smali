.class public final Lc/d/a/b/e/m/m/j2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/f$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lc/d/a/b/e/m/m/h2;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/h2;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/j2;->b:Lc/d/a/b/e/m/m/h2;

    iput-object p2, p0, Lc/d/a/b/e/m/m/j2;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Lc/d/a/b/e/m/m/j2;->b:Lc/d/a/b/e/m/m/h2;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/h2;->a:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/j2;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
