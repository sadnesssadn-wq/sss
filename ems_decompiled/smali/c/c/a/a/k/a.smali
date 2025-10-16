.class public Lc/c/a/a/k/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/RectF;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/c/a/a/k/a;->a:I

    iput-object p2, p0, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lc/c/a/a/k/a;->c:Landroid/graphics/RectF;

    iput-boolean p4, p0, Lc/c/a/a/k/a;->d:Z

    iput p5, p0, Lc/c/a/a/k/a;->e:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lc/c/a/a/k/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lc/c/a/a/k/a;

    .line 1
    iget v0, p1, Lc/c/a/a/k/a;->a:I

    .line 2
    iget v2, p0, Lc/c/a/a/k/a;->a:I

    if-ne v0, v2, :cond_1

    .line 3
    iget-object p1, p1, Lc/c/a/a/k/a;->c:Landroid/graphics/RectF;

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lc/c/a/a/k/a;->c:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
