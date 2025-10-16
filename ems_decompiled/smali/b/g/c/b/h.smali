.class public Lb/g/c/b/h;
.super Lb/g/c/b/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/c/b/h$a;
    }
.end annotation


# instance fields
.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:I

.field public q:F

.field public r:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/g/c/b/i;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/c/b/h;->g:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/h;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lb/g/c/b/h;->i:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lb/g/c/b/h;->j:F

    iput v1, p0, Lb/g/c/b/h;->k:F

    iput v1, p0, Lb/g/c/b/h;->l:F

    iput v1, p0, Lb/g/c/b/h;->m:F

    iput v1, p0, Lb/g/c/b/h;->n:F

    iput v1, p0, Lb/g/c/b/h;->o:F

    iput v0, p0, Lb/g/c/b/h;->p:I

    iput v1, p0, Lb/g/c/b/h;->q:F

    iput v1, p0, Lb/g/c/b/h;->r:F

    const/4 v0, 0x2

    iput v0, p0, Lb/g/c/b/d;->d:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/g/c/a/c;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b()Lb/g/c/b/d;
    .locals 2

    new-instance v0, Lb/g/c/b/h;

    invoke-direct {v0}, Lb/g/c/b/h;-><init>()V

    .line 1
    invoke-super {v0, p0}, Lb/g/c/b/d;->c(Lb/g/c/b/d;)Lb/g/c/b/d;

    iget-object v1, p0, Lb/g/c/b/h;->g:Ljava/lang/String;

    iput-object v1, v0, Lb/g/c/b/h;->g:Ljava/lang/String;

    iget v1, p0, Lb/g/c/b/h;->h:I

    iput v1, v0, Lb/g/c/b/h;->h:I

    iget v1, p0, Lb/g/c/b/h;->i:I

    iput v1, v0, Lb/g/c/b/h;->i:I

    iget v1, p0, Lb/g/c/b/h;->j:F

    iput v1, v0, Lb/g/c/b/h;->j:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Lb/g/c/b/h;->k:F

    iget v1, p0, Lb/g/c/b/h;->l:F

    iput v1, v0, Lb/g/c/b/h;->l:F

    iget v1, p0, Lb/g/c/b/h;->m:F

    iput v1, v0, Lb/g/c/b/h;->m:F

    iget v1, p0, Lb/g/c/b/h;->n:F

    iput v1, v0, Lb/g/c/b/h;->n:F

    iget v1, p0, Lb/g/c/b/h;->o:F

    iput v1, v0, Lb/g/c/b/h;->o:F

    iget v1, p0, Lb/g/c/b/h;->q:F

    iput v1, v0, Lb/g/c/b/h;->q:F

    iget v1, p0, Lb/g/c/b/h;->r:F

    iput v1, v0, Lb/g/c/b/h;->r:F

    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    sget-object v0, Lb/g/d/f;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1
    sget-object p2, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "KeyPosition"

    const/4 v3, -0x1

    if-ge v1, p2, :cond_4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget-object v5, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const/4 v6, 0x3

    packed-switch v5, :pswitch_data_0

    const-string v3, "unused attribute 0x"

    invoke-static {v3}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lb/g/c/b/h$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_0
    iget v2, p0, Lb/g/c/b/h;->k:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lb/g/c/b/h;->j:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->j:F

    goto/16 :goto_4

    :pswitch_2
    iget v2, p0, Lb/g/c/b/h;->h:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->h:I

    goto/16 :goto_4

    :pswitch_3
    iget v2, p0, Lb/g/c/b/h;->p:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->p:I

    goto/16 :goto_4

    :pswitch_4
    iget v2, p0, Lb/g/c/b/h;->k:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->j:F

    :goto_1
    iput v2, p0, Lb/g/c/b/h;->k:F

    goto/16 :goto_4

    :pswitch_5
    iget v2, p0, Lb/g/c/b/h;->m:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->m:F

    goto :goto_4

    :pswitch_6
    iget v2, p0, Lb/g/c/b/h;->l:F

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->l:F

    goto :goto_4

    :pswitch_7
    iget v2, p0, Lb/g/c/b/h;->i:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/h;->i:I

    goto :goto_4

    :pswitch_8
    iget v2, p0, Lb/g/c/b/i;->f:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/i;->f:I

    goto :goto_4

    :pswitch_9
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_0

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_0
    sget-object v2, Lb/g/a/h/a/c;->c:[Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v2, v3

    :goto_2
    iput-object v2, p0, Lb/g/c/b/h;->g:Ljava/lang/String;

    goto :goto_4

    :pswitch_a
    iget v2, p0, Lb/g/c/b/d;->a:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/d;->a:I

    goto :goto_4

    :pswitch_b
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->O0:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lb/g/c/b/d;->b:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/d;->b:I

    if-ne v2, v3, :cond_3

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_2

    :goto_3
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lb/g/c/b/d;->c:Ljava/lang/String;

    goto :goto_4

    :cond_2
    iget v2, p0, Lb/g/c/b/d;->b:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lb/g/c/b/d;->b:I

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget p1, p0, Lb/g/c/b/d;->a:I

    if-ne p1, v3, :cond_5

    const-string p1, "no frame position"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public i(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "percentY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "percentX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "sizePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "drawPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "percentHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "percentWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, p2}, Lb/g/c/b/d;->g(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lb/g/c/b/h;->m:F

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p2}, Lb/g/c/b/d;->g(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lb/g/c/b/h;->l:F

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, p2}, Lb/g/c/b/d;->g(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lb/g/c/b/h;->j:F

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, p2}, Lb/g/c/b/d;->h(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lb/g/c/b/h;->i:I

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, p2}, Lb/g/c/b/d;->g(Ljava/lang/Object;)F

    move-result p1

    :goto_1
    iput p1, p0, Lb/g/c/b/h;->k:F

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, p2}, Lb/g/c/b/d;->g(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lb/g/c/b/h;->j:F

    goto :goto_2

    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/g/c/b/h;->g:Ljava/lang/String;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
