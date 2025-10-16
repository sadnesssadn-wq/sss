.class public final Lc/d/a/c/j0/i;
.super Lc/d/a/c/j0/f;
.source ""


# instance fields
.field public final a:Lc/d/a/c/j0/f;

.field public final b:F


# direct methods
.method public constructor <init>(Lc/d/a/c/j0/f;F)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/c/j0/f;-><init>()V

    iput-object p1, p0, Lc/d/a/c/j0/i;->a:Lc/d/a/c/j0/f;

    iput p2, p0, Lc/d/a/c/j0/i;->b:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/c/j0/i;->a:Lc/d/a/c/j0/f;

    invoke-virtual {v0}, Lc/d/a/c/j0/f;->a()Z

    move-result v0

    return v0
.end method

.method public b(FFFLc/d/a/c/j0/o;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/j0/i;->a:Lc/d/a/c/j0/f;

    iget v1, p0, Lc/d/a/c/j0/i;->b:F

    sub-float/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/c/j0/f;->b(FFFLc/d/a/c/j0/o;)V

    return-void
.end method
