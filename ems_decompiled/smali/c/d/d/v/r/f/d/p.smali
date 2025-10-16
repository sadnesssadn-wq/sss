.class public final Lc/d/d/v/r/f/d/p;
.super Lc/d/d/v/r/f/d/q;
.source ""


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/d/v/r/f/d/q;-><init>(I)V

    if-ltz p2, :cond_0

    const/16 p1, 0xa

    if-gt p2, p1, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, p1, :cond_0

    iput p2, p0, Lc/d/d/v/r/f/d/p;->b:I

    iput p3, p0, Lc/d/d/v/r/f/d/p;->c:I

    return-void

    :cond_0
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p1

    throw p1
.end method
