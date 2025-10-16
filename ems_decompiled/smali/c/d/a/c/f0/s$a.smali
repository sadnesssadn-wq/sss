.class public final Lc/d/a/c/f0/s$a;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/f0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lc/d/a/c/f0/s;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc/d/a/c/f0/s;

    .line 1
    iget p1, p1, Lc/d/a/c/f0/s;->i:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Lc/d/a/c/f0/s;

    check-cast p2, Ljava/lang/Float;

    .line 1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 2
    iput p2, p1, Lc/d/a/c/f0/s;->i:F

    const/high16 v0, 0x44e10000    # 1800.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 3
    sget-object v2, Lc/d/a/c/f0/s;->m:[I

    aget v2, v2, v1

    sget-object v3, Lc/d/a/c/f0/s;->l:[I

    aget v3, v3, v1

    invoke-virtual {p1, p2, v2, v3}, Lc/d/a/c/f0/m;->b(III)F

    move-result v2

    iget-object v3, p1, Lc/d/a/c/f0/s;->e:[Landroid/view/animation/Interpolator;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v3, p1, Lc/d/a/c/f0/m;->b:[F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean p2, p1, Lc/d/a/c/f0/s;->h:Z

    if-eqz p2, :cond_1

    iget-object p2, p1, Lc/d/a/c/f0/m;->c:[I

    iget-object v1, p1, Lc/d/a/c/f0/s;->f:Lc/d/a/c/f0/c;

    iget-object v1, v1, Lc/d/a/c/f0/c;->c:[I

    iget v2, p1, Lc/d/a/c/f0/s;->g:I

    aget v1, v1, v2

    iget-object v2, p1, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    .line 5
    iget v2, v2, Lc/d/a/c/f0/k;->l:I

    .line 6
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->p(II)I

    move-result v1

    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    iput-boolean v0, p1, Lc/d/a/c/f0/s;->h:Z

    .line 7
    :cond_1
    iget-object p1, p1, Lc/d/a/c/f0/m;->a:Lc/d/a/c/f0/n;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
