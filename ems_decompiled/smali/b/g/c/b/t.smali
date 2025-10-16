.class public Lb/g/c/b/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final E:[[F

.field public static final F:[[F


# instance fields
.field public A:F

.field public B:F

.field public C:I

.field public D:I

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:I

.field public j:Z

.field public k:F

.field public l:F

.field public m:Z

.field public n:[F

.field public o:[I

.field public p:F

.field public q:F

.field public final r:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field public s:F

.field public t:F

.field public u:Z

.field public v:F

.field public w:I

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Lb/g/c/b/t;->E:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Lb/g/c/b/t;->F:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/g/c/b/t;->a:I

    iput v0, p0, Lb/g/c/b/t;->b:I

    iput v0, p0, Lb/g/c/b/t;->c:I

    const/4 v1, -0x1

    iput v1, p0, Lb/g/c/b/t;->d:I

    iput v1, p0, Lb/g/c/b/t;->e:I

    iput v1, p0, Lb/g/c/b/t;->f:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lb/g/c/b/t;->g:F

    iput v2, p0, Lb/g/c/b/t;->h:F

    iput v1, p0, Lb/g/c/b/t;->i:I

    iput-boolean v0, p0, Lb/g/c/b/t;->j:Z

    const/4 v1, 0x0

    iput v1, p0, Lb/g/c/b/t;->k:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lb/g/c/b/t;->l:F

    iput-boolean v0, p0, Lb/g/c/b/t;->m:Z

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Lb/g/c/b/t;->n:[F

    new-array v2, v2, [I

    iput-object v2, p0, Lb/g/c/b/t;->o:[I

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lb/g/c/b/t;->s:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Lb/g/c/b/t;->t:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lb/g/c/b/t;->u:Z

    iput v1, p0, Lb/g/c/b/t;->v:F

    iput v0, p0, Lb/g/c/b/t;->w:I

    const/high16 v3, 0x41200000    # 10.0f

    iput v3, p0, Lb/g/c/b/t;->x:F

    iput v3, p0, Lb/g/c/b/t;->y:F

    iput v1, p0, Lb/g/c/b/t;->z:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lb/g/c/b/t;->A:F

    iput v1, p0, Lb/g/c/b/t;->B:F

    iput v0, p0, Lb/g/c/b/t;->C:I

    iput v0, p0, Lb/g/c/b/t;->D:I

    iput-object p2, p0, Lb/g/c/b/t;->r:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 1
    sget-object p3, Lb/g/d/f;->OnSwipe:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_14

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lb/g/d/f;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Lb/g/c/b/t;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->d:I

    goto/16 :goto_1

    :cond_0
    sget v4, Lb/g/d/f;->OnSwipe_touchAnchorSide:I

    if-ne v3, v4, :cond_1

    iget v4, p0, Lb/g/c/b/t;->a:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->a:I

    sget-object v4, Lb/g/c/b/t;->E:[[F

    aget-object v5, v4, v3

    aget v5, v5, v0

    iput v5, p0, Lb/g/c/b/t;->h:F

    aget-object v3, v4, v3

    aget v3, v3, v2

    iput v3, p0, Lb/g/c/b/t;->g:F

    goto/16 :goto_1

    :cond_1
    sget v4, Lb/g/d/f;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lb/g/c/b/t;->b:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->b:I

    sget-object v4, Lb/g/c/b/t;->F:[[F

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v5, v4, v3

    aget v5, v5, v0

    iput v5, p0, Lb/g/c/b/t;->k:F

    aget-object v3, v4, v3

    aget v3, v3, v2

    iput v3, p0, Lb/g/c/b/t;->l:F

    goto/16 :goto_1

    :cond_2
    iput v1, p0, Lb/g/c/b/t;->l:F

    iput v1, p0, Lb/g/c/b/t;->k:F

    iput-boolean v2, p0, Lb/g/c/b/t;->j:Z

    goto/16 :goto_1

    :cond_3
    sget v4, Lb/g/d/f;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Lb/g/c/b/t;->s:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->s:F

    goto/16 :goto_1

    :cond_4
    sget v4, Lb/g/d/f;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_5

    iget v4, p0, Lb/g/c/b/t;->t:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->t:F

    goto/16 :goto_1

    :cond_5
    sget v4, Lb/g/d/f;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Lb/g/c/b/t;->u:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lb/g/c/b/t;->u:Z

    goto/16 :goto_1

    :cond_6
    sget v4, Lb/g/d/f;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Lb/g/c/b/t;->v:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->v:F

    goto/16 :goto_1

    :cond_7
    sget v4, Lb/g/d/f;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Lb/g/c/b/t;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->x:F

    goto/16 :goto_1

    :cond_8
    sget v4, Lb/g/d/f;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Lb/g/c/b/t;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->e:I

    goto/16 :goto_1

    :cond_9
    sget v4, Lb/g/d/f;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_a

    iget v4, p0, Lb/g/c/b/t;->c:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->c:I

    goto/16 :goto_1

    :cond_a
    sget v4, Lb/g/d/f;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_b

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->w:I

    goto :goto_1

    :cond_b
    sget v4, Lb/g/d/f;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_c

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->f:I

    goto :goto_1

    :cond_c
    sget v4, Lb/g/d/f;->OnSwipe_rotationCenterId:I

    if-ne v3, v4, :cond_d

    iget v4, p0, Lb/g/c/b/t;->i:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->i:I

    goto :goto_1

    :cond_d
    sget v4, Lb/g/d/f;->OnSwipe_springDamping:I

    if-ne v3, v4, :cond_e

    iget v4, p0, Lb/g/c/b/t;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->y:F

    goto :goto_1

    :cond_e
    sget v4, Lb/g/d/f;->OnSwipe_springMass:I

    if-ne v3, v4, :cond_f

    iget v4, p0, Lb/g/c/b/t;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->z:F

    goto :goto_1

    :cond_f
    sget v4, Lb/g/d/f;->OnSwipe_springStiffness:I

    if-ne v3, v4, :cond_10

    iget v4, p0, Lb/g/c/b/t;->A:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->A:F

    goto :goto_1

    :cond_10
    sget v4, Lb/g/d/f;->OnSwipe_springStopThreshold:I

    if-ne v3, v4, :cond_11

    iget v4, p0, Lb/g/c/b/t;->B:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->B:F

    goto :goto_1

    :cond_11
    sget v4, Lb/g/d/f;->OnSwipe_springBoundary:I

    if-ne v3, v4, :cond_12

    iget v4, p0, Lb/g/c/b/t;->C:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->C:I

    goto :goto_1

    :cond_12
    sget v4, Lb/g/d/f;->OnSwipe_autoCompleteMode:I

    if-ne v3, v4, :cond_13

    iget v4, p0, Lb/g/c/b/t;->D:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lb/g/c/b/t;->D:I

    :cond_13
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    .line 3
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Lb/g/c/b/t;->f:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    iget v0, p0, Lb/g/c/b/t;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method public c(Z)V
    .locals 8

    sget-object v0, Lb/g/c/b/t;->E:[[F

    sget-object v1, Lb/g/c/b/t;->F:[[F

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eqz p1, :cond_0

    aget-object p1, v1, v3

    aput-object p1, v1, v4

    aget-object p1, v1, v7

    aput-object p1, v1, v6

    aget-object p1, v0, v7

    aput-object p1, v0, v6

    aget-object p1, v0, v5

    aput-object p1, v0, v2

    goto :goto_0

    :cond_0
    aget-object p1, v1, v7

    aput-object p1, v1, v4

    aget-object p1, v1, v3

    aput-object p1, v1, v6

    aget-object p1, v0, v5

    aput-object p1, v0, v6

    aget-object p1, v0, v7

    aput-object p1, v0, v2

    :goto_0
    iget p1, p0, Lb/g/c/b/t;->a:I

    aget-object v2, v0, p1

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Lb/g/c/b/t;->h:F

    aget-object p1, v0, p1

    aget p1, p1, v5

    iput p1, p0, Lb/g/c/b/t;->g:F

    iget p1, p0, Lb/g/c/b/t;->b:I

    array-length v0, v1

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    aget-object v0, v1, p1

    aget v0, v0, v3

    iput v0, p0, Lb/g/c/b/t;->k:F

    aget-object p1, v1, p1

    aget p1, p1, v5

    iput p1, p0, Lb/g/c/b/t;->l:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lb/g/c/b/t;->k:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rotation"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lb/g/c/b/t;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/c/b/t;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
