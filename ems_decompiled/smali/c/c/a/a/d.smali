.class public Lc/c/a/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public c:Lcom/github/barteksc/pdfviewer/PDFView;

.field public d:Lc/c/a/a/a;

.field public e:Landroid/view/GestureDetector;

.field public f:Landroid/view/ScaleGestureDetector;

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/d;->g:Z

    iput-boolean v0, p0, Lc/c/a/a/d;->h:Z

    iput-boolean v0, p0, Lc/c/a/a/d;->i:Z

    iput-object p1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p2, p0, Lc/c/a/a/d;->d:Lc/c/a/a/a;

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lc/c/a/a/d;->e:Landroid/view/GestureDetector;

    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lc/c/a/a/d;->f:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 1
    iget-boolean v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->B:Z

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v2

    .line 3
    :goto_0
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    iget v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v3, v1, p1, v0, v2}, Lc/c/a/a/a;->e(FFFF)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 5
    iget v0, p1, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    .line 6
    iget-object v1, p1, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget p1, p1, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v1, v2, v3, p1, v0}, Lc/c/a/a/a;->e(FFFF)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lc/c/a/a/d;->d:Lc/c/a/a/a;

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Lc/c/a/a/a;->d:Z

    iget-object p1, p1, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 1
    iget-boolean v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->A:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 2
    :cond_0
    iget-boolean v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->M:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_c

    .line 3
    iget-object v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v7, v3, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    iget v8, v3, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v4, v7, v8}, Lc/c/a/a/f;->g(IF)F

    move-result v4

    neg-float v4, v4

    iget-object v7, v3, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v8, v3, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    iget v9, v3, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v7, v8, v9}, Lc/c/a/a/f;->f(IF)F

    move-result v7

    sub-float v7, v4, v7

    .line 4
    iget-boolean v8, v3, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v8, :cond_1

    .line 5
    iget v8, v3, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v8, v3

    cmpg-float v3, v7, v8

    if-gez v3, :cond_2

    goto :goto_0

    :cond_1
    iget v8, v3, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_2

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v8, v3

    cmpg-float v3, v7, v8

    if-gez v3, :cond_2

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 6
    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    float-to-int v8, v3

    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    float-to-int v9, v3

    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v5, v3, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v3

    iget-object v7, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v7

    invoke-virtual {v5, v3, v7}, Lc/c/a/a/f;->g(IF)F

    move-result v3

    neg-float v3, v3

    iget-object v7, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v7

    iget-object v10, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v10}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v10

    invoke-virtual {v5, v7, v10}, Lc/c/a/a/f;->f(IF)F

    move-result v7

    sub-float v7, v3, v7

    iget-object v10, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 7
    iget-boolean v11, v10, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v11, :cond_3

    .line 8
    invoke-virtual {v5}, Lc/c/a/a/f;->d()F

    move-result v5

    .line 9
    iget v10, v10, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v5, v5, v10

    .line 10
    iget-object v10, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v5, v10

    neg-float v5, v5

    iget-object v10, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v7, v10

    iget-object v10, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lc/c/a/a/f;->c()F

    move-result v5

    .line 11
    iget v10, v10, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v5, v5, v10

    .line 12
    iget-object v10, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v5, v10

    neg-float v5, v5

    move v4, v3

    const/4 v3, 0x0

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    :goto_2
    iget-object v10, v0, Lc/c/a/a/d;->d:Lc/c/a/a/a;

    float-to-int v1, v1

    float-to-int v11, v2

    float-to-int v12, v5

    float-to-int v13, v4

    float-to-int v14, v7

    float-to-int v15, v3

    move-object v7, v10

    move v10, v1

    invoke-virtual/range {v7 .. v15}, Lc/c/a/a/a;->b(IIIIIIII)V

    goto/16 :goto_8

    .line 13
    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 14
    iget-boolean v8, v8, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v8, :cond_5

    cmpl-float v3, v7, v3

    if-lez v3, :cond_6

    goto :goto_3

    :cond_5
    cmpl-float v3, v3, v7

    if-lez v3, :cond_6

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    goto/16 :goto_8

    :cond_7
    const/4 v3, -0x1

    if-eqz v8, :cond_8

    cmpl-float v1, v2, v4

    if-lez v1, :cond_9

    goto :goto_5

    :cond_8
    cmpl-float v1, v1, v4

    if-lez v1, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    :goto_5
    if-eqz v8, :cond_a

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    goto :goto_6

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    :goto_6
    sub-float/2addr v1, v2

    iget-object v2, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v2

    iget-object v4, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    mul-float v4, v4, v1

    sub-float/2addr v2, v4

    iget-object v4, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v4

    iget-object v7, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v7

    mul-float v7, v7, v1

    sub-float/2addr v4, v7

    iget-object v1, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1, v2, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->k(FF)I

    move-result v1

    iget-object v2, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v6

    add-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->l(I)Lc/c/a/a/n/c;

    move-result-object v2

    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->u(ILc/c/a/a/n/c;)F

    move-result v1

    iget-object v2, v0, Lc/c/a/a/d;->d:Lc/c/a/a/a;

    neg-float v1, v1

    .line 16
    iget-object v3, v2, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 17
    iget-boolean v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v4, :cond_b

    .line 18
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    invoke-virtual {v2, v3, v1}, Lc/c/a/a/a;->d(FF)V

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    invoke-virtual {v2, v3, v1}, Lc/c/a/a/a;->c(FF)V

    :goto_7
    iput-boolean v6, v2, Lc/c/a/a/a;->e:Z

    :goto_8
    return v6

    .line 19
    :cond_c
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    float-to-int v8, v3

    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    float-to-int v9, v3

    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 20
    iget-boolean v5, v3, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v5, :cond_d

    .line 21
    invoke-virtual {v4}, Lc/c/a/a/f;->d()F

    move-result v5

    .line 22
    iget v3, v3, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v5, v5, v3

    .line 23
    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    neg-float v3, v5

    iget-object v5, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    .line 24
    iget v4, v4, Lc/c/a/a/f;->p:F

    goto :goto_9

    .line 25
    :cond_d
    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v3

    .line 26
    iget v5, v4, Lc/c/a/a/f;->p:F

    mul-float v5, v5, v3

    .line 27
    iget-object v3, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v5, v3

    neg-float v3, v5

    iget-object v5, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lc/c/a/a/f;->c()F

    move-result v4

    .line 28
    iget v5, v5, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    :goto_9
    mul-float v4, v4, v5

    .line 29
    iget-object v5, v0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    neg-float v4, v4

    iget-object v7, v0, Lc/c/a/a/d;->d:Lc/c/a/a/a;

    float-to-int v10, v1

    float-to-int v11, v2

    float-to-int v12, v3

    const/4 v13, 0x0

    float-to-int v14, v4

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lc/c/a/a/a;->b(IIIIIIII)V

    return v6
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 1
    iget-object v0, v0, Lc/c/a/a/j/a;->j:Lc/c/a/a/j/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/a/a/j/e;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    mul-float v1, v1, v0

    iget-object v2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getMinZoom()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpg-float v4, v1, v2

    if-gez v4, :cond_0

    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    div-float v0, v2, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    iget-object v0, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    div-float v0, v3, v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1
    iget p1, v1, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float p1, p1, v0

    invoke-virtual {v1, p1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->v(FLandroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/a/d;->h:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object p1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    .line 1
    iget-object p1, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/a/l/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lc/c/a/a/l/a;->c()V

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lc/c/a/a/d;->h:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/a/d;->g:Z

    iget-object p2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 1
    iget v0, p2, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    iget v1, p2, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p2, Lcom/github/barteksc/pdfviewer/PDFView;->A:Z

    if-eqz v0, :cond_2

    :cond_1
    neg-float p3, p3

    neg-float p4, p4

    .line 3
    iget v0, p2, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    add-float/2addr v0, p3

    iget p3, p2, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    add-float/2addr p3, p4

    .line 4
    invoke-virtual {p2, v0, p3, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    .line 5
    :cond_2
    iget-boolean p2, p0, Lc/c/a/a/d;->h:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->o()V

    :goto_1
    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 30

    move-object/from16 v1, p0

    iget-object v0, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 1
    iget-object v0, v0, Lc/c/a/a/j/a;->i:Lc/c/a/a/j/j;

    move-object/from16 v4, p1

    if-eqz v0, :cond_0

    invoke-interface {v0, v4}, Lc/c/a/a/j/j;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 3
    iget-object v6, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v6, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-nez v7, :cond_1

    move/from16 v23, v0

    move-object v2, v1

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v6}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v6

    neg-float v6, v6

    add-float/2addr v6, v5

    iget-object v5, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    iget-object v4, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 4
    iget-boolean v8, v4, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_2

    :cond_2
    move v8, v6

    .line 5
    :goto_2
    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v7, v8, v4}, Lc/c/a/a/f;->e(FF)I

    move-result v4

    iget-object v8, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v8}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v8

    invoke-virtual {v7, v4, v8}, Lc/c/a/a/f;->i(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v8

    iget-object v9, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 6
    iget-boolean v10, v9, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    .line 7
    invoke-virtual {v9}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v9

    invoke-virtual {v7, v4, v9}, Lc/c/a/a/f;->j(IF)F

    move-result v9

    if-eqz v10, :cond_3

    float-to-int v9, v9

    iget-object v10, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v10}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v10

    invoke-virtual {v7, v4, v10}, Lc/c/a/a/f;->g(IF)F

    move-result v10

    float-to-int v10, v10

    goto :goto_3

    :cond_3
    float-to-int v10, v9

    iget-object v9, v1, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v9}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v9

    invoke-virtual {v7, v4, v9}, Lc/c/a/a/f;->g(IF)F

    move-result v9

    float-to-int v9, v9

    .line 8
    :goto_3
    invoke-virtual {v7, v4}, Lc/c/a/a/f;->b(I)I

    move-result v11

    iget-object v12, v7, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v13, v7, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    .line 9
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v13, Lcom/shockwave/pdfium/PdfDocument;->b:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_5

    move/from16 v23, v0

    move/from16 p1, v4

    :cond_4
    move/from16 v24, v5

    move v3, v6

    goto :goto_5

    :cond_5
    move/from16 p1, v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v12, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageLinks(J)[J

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :goto_4
    move/from16 v23, v0

    if-ge v4, v3, :cond_4

    :try_start_1
    aget-wide v0, v2, v4

    move-object v11, v2

    move/from16 v16, v3

    iget-wide v2, v13, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {v12, v2, v3, v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDestPageIndex(JJ)Ljava/lang/Integer;

    move-result-object v2

    move/from16 v24, v5

    move v3, v6

    iget-wide v5, v13, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {v12, v5, v6, v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetLinkURI(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetLinkRect(J)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    new-instance v1, Lcom/shockwave/pdfium/PdfDocument$Link;

    invoke-direct {v1, v0, v2, v5}, Lcom/shockwave/pdfium/PdfDocument$Link;-><init>(Landroid/graphics/RectF;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    move v6, v3

    move-object v2, v11

    move/from16 v3, v16

    move/from16 v0, v23

    move/from16 v5, v24

    goto :goto_4

    :goto_5
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shockwave/pdfium/PdfDocument$Link;

    .line 11
    iget v2, v8, Lcom/shockwave/pdfium/util/SizeF;->a:F

    float-to-int v2, v2

    .line 12
    iget v4, v8, Lcom/shockwave/pdfium/util/SizeF;->b:F

    float-to-int v4, v4

    .line 13
    iget-object v5, v1, Lcom/shockwave/pdfium/PdfDocument$Link;->a:Landroid/graphics/RectF;

    move/from16 v6, p1

    .line 14
    invoke-virtual {v7, v6}, Lc/c/a/a/f;->b(I)I

    move-result v25

    iget-object v15, v7, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v14, v7, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    .line 15
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, v5, Landroid/graphics/RectF;->left:F

    float-to-double v12, v11

    iget v11, v5, Landroid/graphics/RectF;->top:F

    move/from16 v26, v6

    move-object/from16 p1, v7

    float-to-double v6, v11

    const/16 v27, 0x0

    const/16 v18, 0x0

    move-object v11, v15

    move-wide/from16 v19, v12

    move-object v12, v14

    move/from16 v13, v25

    move-object/from16 v28, v14

    move v14, v9

    move-object/from16 v29, v15

    move v15, v10

    move/from16 v16, v2

    move/from16 v17, v4

    move-wide/from16 v21, v6

    invoke-virtual/range {v11 .. v22}, Lcom/shockwave/pdfium/PdfiumCore;->a(Lcom/shockwave/pdfium/PdfDocument;IIIIIIDD)Landroid/graphics/Point;

    move-result-object v6

    iget v7, v5, Landroid/graphics/RectF;->right:F

    float-to-double v14, v7

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v12, v5

    move-object/from16 v11, v29

    move-wide/from16 v21, v12

    move-object/from16 v12, v28

    move/from16 v13, v25

    move-wide/from16 v19, v14

    move v14, v9

    move v15, v10

    move/from16 v18, v27

    invoke-virtual/range {v11 .. v22}, Lcom/shockwave/pdfium/PdfiumCore;->a(Lcom/shockwave/pdfium/PdfDocument;IIIIIIDD)Landroid/graphics/Point;

    move-result-object v2

    new-instance v4, Landroid/graphics/RectF;

    iget v5, v6, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 16
    invoke-virtual {v4}, Landroid/graphics/RectF;->sort()V

    move/from16 v5, v24

    invoke-virtual {v4, v3, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, p0

    iget-object v0, v2, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 17
    iget-object v0, v0, Lc/c/a/a/j/a;->k:Lc/c/a/a/i/b;

    if-eqz v0, :cond_a

    check-cast v0, Lc/c/a/a/i/a;

    .line 18
    iget-object v3, v1, Lcom/shockwave/pdfium/PdfDocument$Link;->c:Ljava/lang/String;

    .line 19
    iget-object v1, v1, Lcom/shockwave/pdfium/PdfDocument$Link;->b:Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 21
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, v0, Lc/c/a/a/i/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7

    :cond_8
    sget-object v0, Lc/c/a/a/i/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for URI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 23
    iget-object v0, v0, Lc/c/a/a/i/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    const/4 v4, 0x0

    .line 24
    invoke-virtual {v0, v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->m(IZ)V

    :cond_a
    :goto_7
    const/4 v3, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move/from16 v24, v5

    move/from16 p1, v26

    goto/16 :goto_6

    :cond_c
    const/4 v4, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_1

    :goto_8
    if-nez v23, :cond_e

    if-nez v3, :cond_e

    .line 25
    iget-object v0, v2, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v2, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->h()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Lc/c/a/a/l/a;->f()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v0}, Lc/c/a/a/l/a;->a()V

    goto :goto_9

    :cond_d
    invoke-interface {v0}, Lc/c/a/a/l/a;->h()V

    :cond_e
    :goto_9
    iget-object v0, v2, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 26
    :goto_a
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_a
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean p1, p0, Lc/c/a/a/d;->i:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lc/c/a/a/d;->f:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v1, p0, Lc/c/a/a/d;->e:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_6

    iget-boolean p2, p0, Lc/c/a/a/d;->g:Z

    if-eqz p2, :cond_6

    iput-boolean v0, p0, Lc/c/a/a/d;->g:Z

    .line 1
    iget-object p2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    .line 2
    iget-object p2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lc/c/a/a/l/a;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Lc/c/a/a/l/a;->c()V

    .line 3
    :cond_3
    iget-object p2, p0, Lc/c/a/a/d;->d:Lc/c/a/a/a;

    .line 4
    iget-boolean v1, p2, Lc/c/a/a/a;->d:Z

    if-nez v1, :cond_4

    iget-boolean p2, p2, Lc/c/a/a/a;->e:Z

    if-eqz p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    if-nez v0, :cond_6

    .line 5
    iget-object p2, p0, Lc/c/a/a/d;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/PDFView;->r()V

    :cond_6
    return p1
.end method
