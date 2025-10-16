.class public Lb/g/c/b/v$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:J

.field public d:Lb/g/c/b/n;

.field public e:I

.field public f:Lb/g/a/h/a/d;

.field public g:Lb/g/c/b/w;

.field public h:Landroid/view/animation/Interpolator;

.field public i:Z

.field public j:F

.field public k:F

.field public l:J

.field public m:Landroid/graphics/Rect;

.field public n:Z


# direct methods
.method public constructor <init>(Lb/g/c/b/w;Lb/g/c/b/n;IIILandroid/view/animation/Interpolator;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/g/a/h/a/d;

    invoke-direct {v0}, Lb/g/a/h/a/d;-><init>()V

    iput-object v0, p0, Lb/g/c/b/v$a;->f:Lb/g/a/h/a/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/c/b/v$a;->i:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lb/g/c/b/v$a;->m:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lb/g/c/b/v$a;->n:Z

    iput-object p1, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    iput-object p2, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    iput p4, p0, Lb/g/c/b/v$a;->e:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lb/g/c/b/v$a;->c:J

    iput-wide p1, p0, Lb/g/c/b/v$a;->l:J

    iget-object p1, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    .line 1
    iget-object p2, p1, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object p1, p1, Lb/g/c/b/w;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p6, p0, Lb/g/c/b/v$a;->h:Landroid/view/animation/Interpolator;

    iput p7, p0, Lb/g/c/b/v$a;->a:I

    iput p8, p0, Lb/g/c/b/v$a;->b:I

    const/4 p1, 0x3

    if-ne p5, p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/g/c/b/v$a;->n:Z

    :cond_1
    if-nez p3, :cond_2

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    int-to-float p2, p3

    div-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lb/g/c/b/v$a;->k:F

    invoke-virtual {p0}, Lb/g/c/b/v$a;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    iget-boolean v0, p0, Lb/g/c/b/v$a;->i:Z

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    if-eqz v0, :cond_6

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    iget-wide v5, p0, Lb/g/c/b/v$a;->l:J

    sub-long v5, v8, v5

    iput-wide v8, p0, Lb/g/c/b/v$a;->l:J

    iget v0, p0, Lb/g/c/b/v$a;->j:F

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    double-to-float v3, v5

    iget v4, p0, Lb/g/c/b/v$a;->k:F

    mul-float v3, v3, v4

    sub-float/2addr v0, v3

    iput v0, p0, Lb/g/c/b/v$a;->j:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iput v3, p0, Lb/g/c/b/v$a;->j:F

    :cond_0
    iget-object v0, p0, Lb/g/c/b/v$a;->h:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    iget v0, p0, Lb/g/c/b/v$a;->j:F

    goto :goto_0

    :cond_1
    iget v4, p0, Lb/g/c/b/v$a;->j:F

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    :goto_0
    move v7, v0

    iget-object v5, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    iget-object v6, v5, Lb/g/c/b/n;->b:Landroid/view/View;

    iget-object v10, p0, Lb/g/c/b/v$a;->f:Lb/g/a/h/a/d;

    invoke-virtual/range {v5 .. v10}, Lb/g/c/b/n;->d(Landroid/view/View;FJLb/g/a/h/a/d;)Z

    move-result v0

    iget v4, p0, Lb/g/c/b/v$a;->j:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_4

    iget v4, p0, Lb/g/c/b/v$a;->a:I

    if-eq v4, v2, :cond_2

    iget-object v5, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    .line 2
    iget-object v5, v5, Lb/g/c/b/n;->b:Landroid/view/View;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2
    iget v4, p0, Lb/g/c/b/v$a;->b:I

    if-eq v4, v2, :cond_3

    iget-object v2, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    .line 4
    iget-object v2, v2, Lb/g/c/b/n;->b:Landroid/view/View;

    .line 5
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    .line 6
    iget-object v1, v1, Lb/g/c/b/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_4
    iget v1, p0, Lb/g/c/b/v$a;->j:F

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_5

    if-eqz v0, :cond_d

    :cond_5
    iget-object v0, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    .line 8
    iget-object v0, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_2

    .line 9
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-wide v8, p0, Lb/g/c/b/v$a;->l:J

    sub-long v8, v6, v8

    iput-wide v6, p0, Lb/g/c/b/v$a;->l:J

    iget v0, p0, Lb/g/c/b/v$a;->j:F

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v3

    double-to-float v3, v8

    iget v4, p0, Lb/g/c/b/v$a;->k:F

    mul-float v3, v3, v4

    add-float/2addr v3, v0

    iput v3, p0, Lb/g/c/b/v$a;->j:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v0

    if-ltz v3, :cond_7

    iput v0, p0, Lb/g/c/b/v$a;->j:F

    :cond_7
    iget-object v3, p0, Lb/g/c/b/v$a;->h:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_8

    iget v3, p0, Lb/g/c/b/v$a;->j:F

    goto :goto_1

    :cond_8
    iget v4, p0, Lb/g/c/b/v$a;->j:F

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    :goto_1
    move v5, v3

    iget-object v3, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    iget-object v4, v3, Lb/g/c/b/n;->b:Landroid/view/View;

    iget-object v8, p0, Lb/g/c/b/v$a;->f:Lb/g/a/h/a/d;

    invoke-virtual/range {v3 .. v8}, Lb/g/c/b/n;->d(Landroid/view/View;FJLb/g/a/h/a/d;)Z

    move-result v3

    iget v4, p0, Lb/g/c/b/v$a;->j:F

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_b

    iget v4, p0, Lb/g/c/b/v$a;->a:I

    if-eq v4, v2, :cond_9

    iget-object v5, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    .line 10
    iget-object v5, v5, Lb/g/c/b/n;->b:Landroid/view/View;

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_9
    iget v4, p0, Lb/g/c/b/v$a;->b:I

    if-eq v4, v2, :cond_a

    iget-object v2, p0, Lb/g/c/b/v$a;->d:Lb/g/c/b/n;

    .line 12
    iget-object v2, v2, Lb/g/c/b/n;->b:Landroid/view/View;

    .line 13
    invoke-virtual {v2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_a
    iget-boolean v1, p0, Lb/g/c/b/v$a;->n:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    .line 14
    iget-object v1, v1, Lb/g/c/b/w;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_b
    iget v1, p0, Lb/g/c/b/v$a;->j:F

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    iget-object v0, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    .line 16
    iget-object v0, v0, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_d
    :goto_2
    return-void
.end method

.method public b(Z)V
    .locals 2

    iput-boolean p1, p0, Lb/g/c/b/v$a;->i:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lb/g/c/b/v$a;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    div-float p1, v0, p1

    :goto_0
    iput p1, p0, Lb/g/c/b/v$a;->k:F

    :cond_1
    iget-object p1, p0, Lb/g/c/b/v$a;->g:Lb/g/c/b/w;

    .line 1
    iget-object p1, p1, Lb/g/c/b/w;->a:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lb/g/c/b/v$a;->l:J

    return-void
.end method
