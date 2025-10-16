.class public final Lc/d/a/c/f0/h;
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


# static fields
.field public static final s:Lb/l/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/l/a/c<",
            "Lc/d/a/c/f0/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public n:Lc/d/a/c/f0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/c/f0/l<",
            "TS;>;"
        }
    .end annotation
.end field

.field public final o:Lb/l/a/e;

.field public final p:Lb/l/a/d;

.field public q:F

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/c/f0/h$a;

    const-string v1, "indicatorLevel"

    invoke-direct {v0, v1}, Lc/d/a/c/f0/h$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc/d/a/c/f0/h;->s:Lb/l/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/d/a/c/f0/c;Lc/d/a/c/f0/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/c/f0/c;",
            "Lc/d/a/c/f0/l<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/d/a/c/f0/k;-><init>(Landroid/content/Context;Lc/d/a/c/f0/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/c/f0/h;->r:Z

    .line 1
    iput-object p3, p0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    .line 2
    iput-object p0, p3, Lc/d/a/c/f0/l;->b:Lc/d/a/c/f0/k;

    .line 3
    new-instance p1, Lb/l/a/e;

    invoke-direct {p1}, Lb/l/a/e;-><init>()V

    iput-object p1, p0, Lc/d/a/c/f0/h;->o:Lb/l/a/e;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lb/l/a/e;->a(F)Lb/l/a/e;

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p3}, Lb/l/a/e;->b(F)Lb/l/a/e;

    new-instance p3, Lb/l/a/d;

    sget-object v0, Lc/d/a/c/f0/h;->s:Lb/l/a/c;

    invoke-direct {p3, p0, v0}, Lb/l/a/d;-><init>(Ljava/lang/Object;Lb/l/a/c;)V

    iput-object p3, p0, Lc/d/a/c/f0/h;->p:Lb/l/a/d;

    .line 4
    iput-object p1, p3, Lb/l/a/d;->s:Lb/l/a/e;

    .line 5
    iget p1, p0, Lc/d/a/c/f0/k;->j:F

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_0

    iput p2, p0, Lc/d/a/c/f0/k;->j:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    invoke-virtual {p0}, Lc/d/a/c/f0/k;->c()F

    move-result v1

    .line 1
    iget-object v2, v0, Lc/d/a/c/f0/l;->a:Lc/d/a/c/f0/c;

    invoke-virtual {v2}, Lc/d/a/c/f0/c;->a()V

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/f0/l;->a(Landroid/graphics/Canvas;F)V

    .line 2
    iget-object v0, p0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    iget-object v1, p0, Lc/d/a/c/f0/k;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lc/d/a/c/f0/l;->c(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lc/d/a/c/f0/k;->d:Lc/d/a/c/f0/c;

    iget-object v0, v0, Lc/d/a/c/f0/c;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 3
    iget v1, p0, Lc/d/a/c/f0/k;->l:I

    .line 4
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p(II)I

    move-result v7

    iget-object v2, p0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    iget-object v4, p0, Lc/d/a/c/f0/k;->k:Landroid/graphics/Paint;

    const/4 v5, 0x0

    .line 5
    iget v6, p0, Lc/d/a/c/f0/h;->q:F

    move-object v3, p1

    .line 6
    invoke-virtual/range {v2 .. v7}, Lc/d/a/c/f0/l;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    invoke-virtual {v0}, Lc/d/a/c/f0/l;->d()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/f0/h;->n:Lc/d/a/c/f0/l;

    invoke-virtual {v0}, Lc/d/a/c/f0/l;->e()I

    move-result v0

    return v0
.end method

.method public i(ZZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lc/d/a/c/f0/k;->i(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lc/d/a/c/f0/k;->e:Lc/d/a/c/f0/a;

    iget-object p3, p0, Lc/d/a/c/f0/k;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2, p3}, Lc/d/a/c/f0/a;->a(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lc/d/a/c/f0/h;->r:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lc/d/a/c/f0/h;->r:Z

    iget-object p3, p0, Lc/d/a/c/f0/h;->o:Lb/l/a/e;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Lb/l/a/e;->b(F)Lb/l/a/e;

    :goto_0
    return p1
.end method

.method public jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/f0/h;->p:Lb/l/a/d;

    invoke-virtual {v0}, Lb/l/a/b;->b()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 1
    iput v0, p0, Lc/d/a/c/f0/h;->q:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public onLevelChange(I)Z
    .locals 5

    iget-boolean v0, p0, Lc/d/a/c/f0/h;->r:Z

    const/4 v1, 0x1

    const v2, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/f0/h;->p:Lb/l/a/d;

    invoke-virtual {v0}, Lb/l/a/b;->b()V

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 1
    iput p1, p0, Lc/d/a/c/f0/h;->q:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/d/a/c/f0/h;->p:Lb/l/a/d;

    .line 3
    iget v3, p0, Lc/d/a/c/f0/h;->q:F

    mul-float v3, v3, v2

    .line 4
    iput v3, v0, Lb/l/a/b;->b:F

    iput-boolean v1, v0, Lb/l/a/b;->c:Z

    int-to-float p1, p1

    .line 5
    iget-boolean v2, v0, Lb/l/a/b;->f:Z

    if-eqz v2, :cond_1

    .line 6
    iput p1, v0, Lb/l/a/d;->t:F

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lb/l/a/d;->s:Lb/l/a/e;

    if-nez v2, :cond_2

    new-instance v2, Lb/l/a/e;

    invoke-direct {v2, p1}, Lb/l/a/e;-><init>(F)V

    iput-object v2, v0, Lb/l/a/d;->s:Lb/l/a/e;

    :cond_2
    iget-object v2, v0, Lb/l/a/d;->s:Lb/l/a/e;

    float-to-double v3, p1

    .line 7
    iput-wide v3, v2, Lb/l/a/e;->i:D

    .line 8
    invoke-virtual {v0}, Lb/l/a/d;->f()V

    :goto_0
    return v1
.end method
