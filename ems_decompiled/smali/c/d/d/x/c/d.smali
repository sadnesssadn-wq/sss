.class public final Lc/d/d/x/c/d;
.super Lc/d/d/p;
.source ""


# instance fields
.field public final c:F

.field public final d:I


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/d/d/p;-><init>(FF)V

    iput p3, p0, Lc/d/d/x/c/d;->c:F

    const/4 p1, 0x1

    iput p1, p0, Lc/d/d/x/c/d;->d:I

    return-void
.end method

.method public constructor <init>(FFFI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/d/d/p;-><init>(FF)V

    iput p3, p0, Lc/d/d/x/c/d;->c:F

    iput p4, p0, Lc/d/d/x/c/d;->d:I

    return-void
.end method
