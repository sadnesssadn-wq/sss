.class public Lb/g/c/b/q$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/b/q$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Lb/g/c/b/q$b;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/g/c/b/q$b;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/c/b/q$b$a;->d:I

    const/16 v0, 0x11

    iput v0, p0, Lb/g/c/b/q$b$a;->e:I

    iput-object p2, p0, Lb/g/c/b/q$b$a;->c:Lb/g/c/b/q$b;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Lb/g/d/f;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v1, Lb/g/d/f;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lb/g/c/b/q$b$a;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lb/g/c/b/q$b$a;->d:I

    goto :goto_1

    :cond_0
    sget v1, Lb/g/d/f;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lb/g/c/b/q$b$a;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lb/g/c/b/q$b$a;->e:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/constraintlayout/motion/widget/MotionLayout;ILb/g/c/b/q$b;)V
    .locals 6

    iget v0, p0, Lb/g/c/b/q$b$a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "OnClick could not find id "

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lb/g/c/b/q$b$a;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1
    :cond_1
    iget v0, p3, Lb/g/c/b/q$b;->d:I

    .line 2
    iget p3, p3, Lb/g/c/b/q$b;->c:I

    if-ne v0, v1, :cond_2

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget v1, p0, Lb/g/c/b/q$b$a;->e:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-ne p2, v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_4

    if-ne p2, v0, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v4, v5

    if-eqz v2, :cond_5

    if-ne p2, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v0, v4

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_6

    if-ne p2, p3, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    const/4 v3, 0x1

    :cond_7
    or-int p2, v0, v3

    if-eqz p2, :cond_8

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method public b(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 2

    iget v0, p0, Lb/g/c/b/q$b$a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, " (*)  could not find id "

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lb/g/c/b/q$b$a;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Lb/g/c/b/q$b$a;->c:Lb/g/c/b/q$b;

    .line 1
    iget-object v0, p1, Lb/g/c/b/q$b;->j:Lb/g/c/b/q;

    .line 2
    iget-object v1, v0, Lb/g/c/b/q;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 3
    iget-boolean v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->F:Z

    if-nez v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget v2, p1, Lb/g/c/b/q$b;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 5
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    if-ne p1, v3, :cond_1

    iget-object p1, p0, Lb/g/c/b/q$b$a;->c:Lb/g/c/b/q$b;

    .line 6
    iget p1, p1, Lb/g/c/b/q$b;->c:I

    .line 7
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->L(I)V

    return-void

    :cond_1
    new-instance v0, Lb/g/c/b/q$b;

    iget-object v2, p0, Lb/g/c/b/q$b$a;->c:Lb/g/c/b/q$b;

    .line 8
    iget-object v3, v2, Lb/g/c/b/q$b;->j:Lb/g/c/b/q;

    .line 9
    invoke-direct {v0, v3, v2}, Lb/g/c/b/q$b;-><init>(Lb/g/c/b/q;Lb/g/c/b/q$b;)V

    .line 10
    iput p1, v0, Lb/g/c/b/q$b;->d:I

    .line 11
    iget-object p1, p0, Lb/g/c/b/q$b$a;->c:Lb/g/c/b/q$b;

    .line 12
    iget p1, p1, Lb/g/c/b/q$b;->c:I

    .line 13
    iput p1, v0, Lb/g/c/b/q$b;->c:I

    .line 14
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->K()V

    return-void

    :cond_2
    iget-object v0, v0, Lb/g/c/b/q;->c:Lb/g/c/b/q$b;

    iget v2, p0, Lb/g/c/b/q$b$a;->e:I

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_4

    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    and-int/lit8 v7, v2, 0x10

    if-nez v7, :cond_6

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_b

    if-eq v0, p1, :cond_8

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    :cond_8
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result p1

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    move-result v7

    if-eq p1, v7, :cond_a

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result p1

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v7

    if-lez p1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v4, 0x0

    .line 15
    :cond_b
    :goto_6
    iget-object p1, p0, Lb/g/c/b/q$b$a;->c:Lb/g/c/b/q$b;

    if-ne p1, v0, :cond_c

    goto :goto_7

    .line 16
    :cond_c
    iget v0, p1, Lb/g/c/b/q$b;->c:I

    .line 17
    iget v7, p1, Lb/g/c/b/q$b;->d:I

    .line 18
    iget v8, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->B:I

    if-ne v7, v3, :cond_d

    if-eq v8, v0, :cond_f

    goto :goto_7

    :cond_d
    if-eq v8, v7, :cond_e

    if-ne v8, v0, :cond_f

    :cond_e
    :goto_7
    const/4 v5, 0x1

    :cond_f
    if-eqz v5, :cond_13

    if-eqz v4, :cond_10

    .line 19
    iget v0, p0, Lb/g/c/b/q$b$a;->e:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_10

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->K()V

    goto :goto_8

    :cond_10
    const/4 v0, 0x0

    if-eqz v2, :cond_11

    iget v3, p0, Lb/g/c/b/q$b$a;->e:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_11

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    .line 20
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->u(F)V

    goto :goto_8

    :cond_11
    if-eqz v4, :cond_12

    .line 21
    iget v3, p0, Lb/g/c/b/q$b$a;->e:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_12

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_8

    :cond_12
    if-eqz v2, :cond_13

    iget v2, p0, Lb/g/c/b/q$b$a;->e:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_13

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Lb/g/c/b/q$b;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_13
    :goto_8
    return-void
.end method
