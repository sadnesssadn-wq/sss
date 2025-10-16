.class public Lc/d/a/c/c0/s;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/d/a/c/c0/s;->a:I

    iput p2, p0, Lc/d/a/c/c0/s;->b:I

    iput p3, p0, Lc/d/a/c/c0/s;->c:I

    iput p4, p0, Lc/d/a/c/c0/s;->d:I

    return-void
.end method

.method public constructor <init>(Lc/d/a/c/c0/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lc/d/a/c/c0/s;->a:I

    iput v0, p0, Lc/d/a/c/c0/s;->a:I

    iget v0, p1, Lc/d/a/c/c0/s;->b:I

    iput v0, p0, Lc/d/a/c/c0/s;->b:I

    iget v0, p1, Lc/d/a/c/c0/s;->c:I

    iput v0, p0, Lc/d/a/c/c0/s;->c:I

    iget p1, p1, Lc/d/a/c/c0/s;->d:I

    iput p1, p0, Lc/d/a/c/c0/s;->d:I

    return-void
.end method
