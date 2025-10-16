.class public Lc/c/b/a/c/h;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lc/c/b/a/c/d;


# instance fields
.field public c:Lc/c/b/a/k/e;

.field public d:Lc/c/b/a/k/e;

.field public e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/mikephil/charting/charts/Chart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lc/c/b/a/k/e;

    invoke-direct {p1}, Lc/c/b/a/k/e;-><init>()V

    iput-object p1, p0, Lc/c/b/a/c/h;->c:Lc/c/b/a/k/e;

    new-instance p1, Lc/c/b/a/k/e;

    invoke-direct {p1}, Lc/c/b/a/k/e;-><init>()V

    iput-object p1, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    invoke-direct {p0, p2}, Lc/c/b/a/c/h;->setupLayoutResource(I)V

    return-void
.end method

.method private setupLayoutResource(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/RelativeLayout;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, p1, p1, p2, v0}, Landroid/widget/RelativeLayout;->layout(IIII)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;FF)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lc/c/b/a/c/h;->getOffset()Lc/c/b/a/k/e;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    iget v2, v0, Lc/c/b/a/k/e;->b:F

    iput v2, v1, Lc/c/b/a/k/e;->b:F

    iget v0, v0, Lc/c/b/a/k/e;->c:F

    iput v0, v1, Lc/c/b/a/k/e;->c:F

    invoke-virtual {p0}, Lc/c/b/a/c/h;->getChartView()Lcom/github/mikephil/charting/charts/Chart;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    iget v4, v3, Lc/c/b/a/k/e;->b:F

    add-float v5, p2, v4

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    neg-float v1, p2

    iput v1, v3, Lc/c/b/a/k/e;->b:F

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    add-float v3, p2, v1

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p2

    sub-float/2addr v4, v1

    iput v4, v3, Lc/c/b/a/k/e;->b:F

    :cond_1
    :goto_0
    iget-object v1, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    iget v3, v1, Lc/c/b/a/k/e;->c:F

    add-float v4, p3, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    neg-float v0, p3

    :goto_1
    iput v0, v1, Lc/c/b/a/k/e;->c:F

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    add-float v1, p3, v2

    add-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    iget-object v1, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p3

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lc/c/b/a/c/h;->d:Lc/c/b/a/k/e;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, v0, Lc/c/b/a/k/e;->b:F

    add-float/2addr p2, v2

    iget v0, v0, Lc/c/b/a/k/e;->c:F

    add-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getChartView()Lcom/github/mikephil/charting/charts/Chart;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/c/h;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/Chart;

    :goto_0
    return-object v0
.end method

.method public getOffset()Lc/c/b/a/k/e;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/c/h;->c:Lc/c/b/a/k/e;

    return-object v0
.end method

.method public setChartView(Lcom/github/mikephil/charting/charts/Chart;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/c/b/a/c/h;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOffset(Lc/c/b/a/k/e;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/a/c/h;->c:Lc/c/b/a/k/e;

    if-nez p1, :cond_0

    new-instance p1, Lc/c/b/a/k/e;

    invoke-direct {p1}, Lc/c/b/a/k/e;-><init>()V

    iput-object p1, p0, Lc/c/b/a/c/h;->c:Lc/c/b/a/k/e;

    :cond_0
    return-void
.end method
