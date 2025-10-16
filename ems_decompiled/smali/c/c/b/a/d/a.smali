.class public Lc/c/b/a/d/a;
.super Lc/c/b/a/d/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/a/d/d<",
        "Lc/c/b/a/g/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public j:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/c/b/a/d/d;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lc/c/b/a/d/a;->j:F

    return-void
.end method

.method public varargs constructor <init>([Lc/c/b/a/g/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/b/a/d/d;-><init>([Lc/c/b/a/g/b/b;)V

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lc/c/b/a/d/a;->j:F

    return-void
.end method
