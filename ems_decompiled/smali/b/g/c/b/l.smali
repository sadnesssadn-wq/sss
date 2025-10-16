.class public Lb/g/c/b/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb/g/c/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lb/g/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lb/g/c/b/l;->c:F

    const/4 v1, 0x0

    iput v1, p0, Lb/g/c/b/l;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lb/g/c/b/l;->f:F

    iput v1, p0, Lb/g/c/b/l;->g:F

    iput v1, p0, Lb/g/c/b/l;->h:F

    iput v1, p0, Lb/g/c/b/l;->i:F

    iput v0, p0, Lb/g/c/b/l;->j:F

    iput v0, p0, Lb/g/c/b/l;->k:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lb/g/c/b/l;->l:F

    iput v0, p0, Lb/g/c/b/l;->m:F

    iput v1, p0, Lb/g/c/b/l;->n:F

    iput v1, p0, Lb/g/c/b/l;->o:F

    iput v1, p0, Lb/g/c/b/l;->p:F

    iput v0, p0, Lb/g/c/b/l;->q:F

    iput v0, p0, Lb/g/c/b/l;->r:F

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lb/g/c/b/l;->s:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/c;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/c/a/c;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_7
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_9
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_a
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_1

    :cond_b
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_b
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_c
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_d
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_1

    :cond_e
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    const-string v3, "CUSTOM"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    iget-object v4, p0, Lb/g/c/b/l;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/g/c/b/l;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/d/a;

    instance-of v4, v2, Lb/g/c/a/c$b;

    if-eqz v4, :cond_1d

    check-cast v2, Lb/g/c/a/c$b;

    .line 1
    iget-object v1, v2, Lb/g/c/a/c$b;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget v1, p0, Lb/g/c/b/l;->c:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    iget v4, p0, Lb/g/c/b/l;->c:F

    goto :goto_2

    :pswitch_1
    iget v1, p0, Lb/g/c/b/l;->q:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_3

    :cond_10
    iget v6, p0, Lb/g/c/b/l;->q:F

    goto/16 :goto_3

    :pswitch_2
    iget v1, p0, Lb/g/c/b/l;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_3

    :cond_11
    iget v6, p0, Lb/g/c/b/l;->f:F

    goto/16 :goto_3

    :pswitch_3
    iget v1, p0, Lb/g/c/b/l;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_3

    :cond_12
    iget v6, p0, Lb/g/c/b/l;->g:F

    goto/16 :goto_3

    :pswitch_4
    iget v1, p0, Lb/g/c/b/l;->m:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_13

    goto/16 :goto_3

    :cond_13
    iget v6, p0, Lb/g/c/b/l;->m:F

    goto/16 :goto_3

    :pswitch_5
    iget v1, p0, Lb/g/c/b/l;->l:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_3

    :cond_14
    iget v6, p0, Lb/g/c/b/l;->l:F

    goto/16 :goto_3

    :pswitch_6
    iget v1, p0, Lb/g/c/b/l;->k:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2

    :cond_15
    iget v4, p0, Lb/g/c/b/l;->k:F

    goto :goto_2

    :pswitch_7
    iget v1, p0, Lb/g/c/b/l;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2

    :cond_16
    iget v4, p0, Lb/g/c/b/l;->j:F

    :goto_2
    invoke-virtual {v2, p2, v4}, Lb/g/a/h/a/j;->b(IF)V

    goto/16 :goto_0

    :pswitch_8
    iget v1, p0, Lb/g/c/b/l;->r:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_3

    :cond_17
    iget v6, p0, Lb/g/c/b/l;->r:F

    goto :goto_3

    :pswitch_9
    iget v1, p0, Lb/g/c/b/l;->p:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_3

    :cond_18
    iget v6, p0, Lb/g/c/b/l;->p:F

    goto :goto_3

    :pswitch_a
    iget v1, p0, Lb/g/c/b/l;->o:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3

    :cond_19
    iget v6, p0, Lb/g/c/b/l;->o:F

    goto :goto_3

    :pswitch_b
    iget v1, p0, Lb/g/c/b/l;->n:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_3

    :cond_1a
    iget v6, p0, Lb/g/c/b/l;->n:F

    goto :goto_3

    :pswitch_c
    iget v1, p0, Lb/g/c/b/l;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_3

    :cond_1b
    iget v6, p0, Lb/g/c/b/l;->i:F

    goto :goto_3

    :pswitch_d
    iget v1, p0, Lb/g/c/b/l;->h:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_3

    :cond_1c
    iget v6, p0, Lb/g/c/b/l;->h:F

    :goto_3
    invoke-virtual {v2, p2, v6}, Lb/g/a/h/a/j;->b(IF)V

    goto/16 :goto_0

    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ViewSpline not a CustomSet frame = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lb/g/d/a;->b()F

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN spline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v2, "MotionPaths"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_d
        -0x4a771f65 -> :sswitch_c
        -0x490b9c39 -> :sswitch_b
        -0x490b9c38 -> :sswitch_a
        -0x490b9c37 -> :sswitch_9
        -0x3bab3dd3 -> :sswitch_8
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_6
        -0x2d5a2d1e -> :sswitch_5
        -0x2d5a2d1d -> :sswitch_4
        -0x266f082 -> :sswitch_3
        -0x42d1a3 -> :sswitch_2
        0x2382115 -> :sswitch_1
        0x589b15e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb/g/c/b/l;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lb/g/c/b/l;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_0
    iput v0, p0, Lb/g/c/b/l;->c:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->f:F

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->g:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->h:F

    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->i:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->j:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->k:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->l:F

    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->m:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->n:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iput v2, p0, Lb/g/c/b/l;->o:F

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    iput p1, p0, Lb/g/c/b/l;->p:F

    :cond_2
    return-void
.end method

.method public final e(FF)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public g(Landroid/graphics/Rect;Lb/g/d/c;II)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 1
    invoke-virtual {p2, p4}, Lb/g/d/c;->h(I)Lb/g/d/c$a;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget p4, p2, Lb/g/d/c$d;->c:I

    iput p4, p0, Lb/g/c/b/l;->d:I

    iget v0, p2, Lb/g/d/c$d;->b:I

    iput v0, p0, Lb/g/c/b/l;->e:I

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p2, Lb/g/d/c$d;->d:F

    :goto_0
    iput p2, p0, Lb/g/c/b/l;->c:F

    iget-object p2, p1, Lb/g/d/c$a;->f:Lb/g/d/c$e;

    iget-boolean p4, p2, Lb/g/d/c$e;->m:Z

    iget p4, p2, Lb/g/d/c$e;->n:F

    iput p4, p0, Lb/g/c/b/l;->f:F

    iget p4, p2, Lb/g/d/c$e;->b:F

    iput p4, p0, Lb/g/c/b/l;->g:F

    iget p4, p2, Lb/g/d/c$e;->c:F

    iput p4, p0, Lb/g/c/b/l;->h:F

    iget p4, p2, Lb/g/d/c$e;->d:F

    iput p4, p0, Lb/g/c/b/l;->i:F

    iget p4, p2, Lb/g/d/c$e;->e:F

    iput p4, p0, Lb/g/c/b/l;->j:F

    iget p4, p2, Lb/g/d/c$e;->f:F

    iput p4, p0, Lb/g/c/b/l;->k:F

    iget p4, p2, Lb/g/d/c$e;->g:F

    iput p4, p0, Lb/g/c/b/l;->l:F

    iget p4, p2, Lb/g/d/c$e;->h:F

    iput p4, p0, Lb/g/c/b/l;->m:F

    iget p4, p2, Lb/g/d/c$e;->j:F

    iput p4, p0, Lb/g/c/b/l;->n:F

    iget p4, p2, Lb/g/d/c$e;->k:F

    iput p4, p0, Lb/g/c/b/l;->o:F

    iget p2, p2, Lb/g/d/c$e;->l:F

    iput p2, p0, Lb/g/c/b/l;->p:F

    iget-object p2, p1, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget-object p2, p2, Lb/g/d/c$c;->d:Ljava/lang/String;

    invoke-static {p2}, Lb/g/a/h/a/c;->c(Ljava/lang/String;)Lb/g/a/h/a/c;

    iget-object p2, p1, Lb/g/d/c$a;->d:Lb/g/d/c$c;

    iget p2, p2, Lb/g/d/c$c;->i:F

    iput p2, p0, Lb/g/c/b/l;->q:F

    iget-object p2, p1, Lb/g/d/c$a;->c:Lb/g/d/c$d;

    iget p2, p2, Lb/g/d/c$d;->e:F

    iput p2, p0, Lb/g/c/b/l;->r:F

    iget-object p2, p1, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v0, p1, Lb/g/d/c$a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g/d/a;

    invoke-virtual {v0}, Lb/g/d/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/g/c/b/l;->s:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    const/high16 p2, 0x42b40000    # 90.0f

    if-eq p3, p1, :cond_4

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x3

    if-eq p3, p1, :cond_4

    const/4 p1, 0x4

    if-eq p3, p1, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    iget p1, p0, Lb/g/c/b/l;->g:F

    add-float/2addr p1, p2

    iput p1, p0, Lb/g/c/b/l;->g:F

    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_5

    const/high16 p2, 0x43b40000    # 360.0f

    goto :goto_2

    :cond_4
    iget p1, p0, Lb/g/c/b/l;->g:F

    :goto_2
    sub-float/2addr p1, p2

    iput p1, p0, Lb/g/c/b/l;->g:F

    :cond_5
    :goto_3
    return-void
.end method

.method public j(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    invoke-virtual {p0, p1}, Lb/g/c/b/l;->d(Landroid/view/View;)V

    return-void
.end method
