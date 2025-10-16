.class public Lcom/emsportal/widget/AutoScrollViewPagerPro;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emsportal/widget/AutoScrollViewPagerPro$a;
    }
.end annotation


# instance fields
.field public c:J

.field public d:I

.field public e:Z

.field public f:Z

.field public g:I

.field public h:Z

.field public i:D

.field public j:D

.field public k:Landroid/os/Handler;

.field public l:Z

.field public m:Z

.field public n:F

.field public o:F

.field public p:Lc/b/x/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x5dc

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->c:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->d:I

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->e:Z

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->f:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->g:I

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->h:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->i:D

    iput-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->j:D

    iput-boolean p2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->l:Z

    iput-boolean p2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->m:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->n:F

    iput p2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->o:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->p:Lc/b/x/a;

    .line 1
    new-instance v0, Lcom/emsportal/widget/AutoScrollViewPagerPro$a;

    invoke-direct {v0, p0}, Lcom/emsportal/widget/AutoScrollViewPagerPro$a;-><init>(Lcom/emsportal/widget/AutoScrollViewPagerPro;)V

    iput-object v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->k:Landroid/os/Handler;

    .line 2
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "sInterpolator"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance p1, Lc/b/x/a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/animation/Interpolator;

    invoke-direct {p1, v2, p2}, Lc/b/x/a;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->p:Lc/b/x/a;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->l:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->m:Z

    .line 1
    iput-boolean v2, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->l:Z

    iget-object v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->k:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->m:Z

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v3, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->l:Z

    iget-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->c:J

    long-to-double v0, v0

    iget-object v4, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->p:Lc/b/x/a;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getDuration()I

    move-result v4

    int-to-double v4, v4

    iget-wide v6, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->i:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    iget-wide v6, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->j:D

    mul-double v4, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v0

    double-to-long v0, v4

    .line 4
    iget-object v4, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->k:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->k:Landroid/os/Handler;

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_9

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->n:F

    iput v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->o:F

    :cond_3
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/x/a/a;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lb/x/a/a;->getCount()I

    move-result v4

    :goto_1
    if-nez v0, :cond_5

    iget v5, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->o:F

    iget v6, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->n:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_6

    :cond_5
    add-int/lit8 v5, v4, -0x1

    if-ne v0, v5, :cond_9

    iget v5, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->o:F

    iget v6, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->n:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    :cond_6
    iget v5, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->g:I

    if-ne v5, v1, :cond_7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_7
    if-le v4, v3, :cond_8

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    iget-boolean v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->h:Z

    invoke-virtual {p0, v4, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->c:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .locals 1

    iget v0, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->g:I

    return v0
.end method

.method public setAutoScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->i:D

    return-void
.end method

.method public setBorderAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->h:Z

    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->e:Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->d:I

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->c:J

    return-void
.end method

.method public setSlideBorderMode(I)V
    .locals 0

    iput p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->g:I

    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->f:Z

    return-void
.end method

.method public setSwipeScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPagerPro;->j:D

    return-void
.end method
