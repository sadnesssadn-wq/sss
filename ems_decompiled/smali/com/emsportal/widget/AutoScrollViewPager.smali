.class public Lcom/emsportal/widget/AutoScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emsportal/widget/AutoScrollViewPager$a;
    }
.end annotation


# instance fields
.field public c:J

.field public d:I

.field public e:Z

.field public f:I

.field public g:Z

.field public h:D

.field public i:D

.field public j:Landroid/os/Handler;

.field public k:Lc/b/x/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x5dc

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->c:J

    const/4 p1, 0x1

    iput p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->d:I

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->e:Z

    const/4 p2, 0x0

    iput p2, p0, Lcom/emsportal/widget/AutoScrollViewPager;->f:I

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->g:Z

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPager;->h:D

    iput-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPager;->i:D

    .line 1
    new-instance p2, Lcom/emsportal/widget/AutoScrollViewPager$a;

    invoke-direct {p2, p0}, Lcom/emsportal/widget/AutoScrollViewPager$a;-><init>(Lcom/emsportal/widget/AutoScrollViewPager;)V

    iput-object p2, p0, Lcom/emsportal/widget/AutoScrollViewPager;->j:Landroid/os/Handler;

    .line 2
    :try_start_0
    const-class p2, Landroidx/viewpager/widget/ViewPager;

    const-string v0, "mScroller"

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "sInterpolator"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance p1, Lc/b/x/b;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-direct {p1, v1, v0}, Lc/b/x/b;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->k:Lc/b/x/b;

    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v0, "setViewPagerScroller: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/emsportal/widget/AutoScrollViewPager;->d:I

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

    iget-wide v0, p0, Lcom/emsportal/widget/AutoScrollViewPager;->c:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .locals 1

    iget v0, p0, Lcom/emsportal/widget/AutoScrollViewPager;->f:I

    return v0
.end method

.method public setAutoScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->h:D

    return-void
.end method

.method public setBorderAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->g:Z

    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->e:Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->d:I

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->c:J

    return-void
.end method

.method public setSlideBorderMode(I)V
    .locals 0

    iput p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->f:I

    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .locals 0

    return-void
.end method

.method public setSwipeScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/emsportal/widget/AutoScrollViewPager;->i:D

    return-void
.end method
