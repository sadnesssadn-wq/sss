.class public final Lc/d/a/c/f0/n;
.super Lc/d/a/c/f0/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lc/d/a/c/f0/c;",
        ">",
        "Lc/d/a/c/f0/k;"
    }
.end annotation


# instance fields
.field public n:Lc/d/a/c/f0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/c/f0/l<",
            "TS;>;"
        }
    .end annotation
.end field

.field public o:Lc/d/a/c/f0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/c/f0/m<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/c/f0/c;Lc/d/a/c/f0/l;Lc/d/a/c/f0/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/c/f0/c;",
            "Lc/d/a/c/f0/l<",
            "TS;>;",
            "Lc/d/a/c/f0/m<",
            "Landroid/animation/ObjectAnimator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/d/a/c/f0/k;-><init>(Landroid/content/Context;Lc/d/a/c/f0/c;)V

    .line 1
    iput-object p3, p0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    .line 2
    iput-object p0, p3, Lc/d/a/c/f0/l;->b:Lc/d/a/c/f0/k;

    .line 3
    iput-object p4, p0, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    .line 4
    iput-object p0, p4, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    invoke-virtual {p0}, Lc/d/a/c/f0/k;->c()F

    move-result v1

    .line 1
    iget-object v2, v0, Lc/d/a/c/f0/l;->a:Lc/d/a/c/f0/c;

    invoke-virtual {v2}, Lc/d/a/c/f0/c;->a()V

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/f0/l;->a(Landroid/graphics/Canvas;F)V

    .line 2
    iget-object v0, p0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    iget-object v1, p0, Lc/d/a/c/f0/k;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/f0/l;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    iget-object v2, v1, Lc/d/a/c/f0/m;->c:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    iget-object v6, p0, Lc/d/a/c/f0/k;->k:Landroid/graphics/Paint;

    iget-object v1, v1, Lc/d/a/c/f0/m;->b:[F

    mul-int/lit8 v3, v0, 0x2

    aget v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    aget v8, v1, v3

    aget v9, v2, v0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lc/d/a/c/f0/l;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    invoke-virtual {v0}, Lc/d/a/c/f0/l;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/n;->n:Lc/d/a/c/f0/l;

    invoke-virtual {v0}, Lc/d/a/c/f0/l;->e()I

    move-result v0

    return v0
.end method

.method public i(ZZZ)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lc/d/a/c/f0/k;->i(ZZZ)Z

    move-result p2

    invoke-virtual {p0}, Lc/d/a/c/f0/k;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    invoke-virtual {v0}, Lc/d/a/c/f0/m;->a()V

    :cond_0
    iget-object v0, p0, Lc/d/a/c/f0/k;->e:Lc/d/a/c/f0/a;

    iget-object v1, p0, Lc/d/a/c/f0/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/c/f0/a;->a(Landroid/content/ContentResolver;)F

    move-result v0

    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-gt p1, p3, :cond_2

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lc/d/a/c/f0/n;->o:Lc/d/a/c/f0/m;

    invoke-virtual {p1}, Lc/d/a/c/f0/m;->f()V

    :cond_2
    return p2
.end method
