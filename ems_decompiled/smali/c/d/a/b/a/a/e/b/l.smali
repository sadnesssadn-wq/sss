.class public abstract Lc/d/a/b/a/a/e/b/l;
.super Lc/d/a/b/e/m/m/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lc/d/a/b/e/m/j;",
        ">",
        "Lc/d/a/b/e/m/m/d<",
        "TR;",
        "Lc/d/a/b/a/a/e/b/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/e;)V
    .locals 1

    sget-object v0, Lc/d/a/b/a/a/a;->e:Lc/d/a/b/e/m/a;

    invoke-direct {p0, v0, p1}, Lc/d/a/b/e/m/m/d;-><init>(Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lc/d/a/b/e/m/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lc/d/a/b/e/m/j;)V

    return-void
.end method
