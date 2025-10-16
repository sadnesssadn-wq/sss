.class public Lcom/zoho/livechat/android/ui/ImagePager;
.super Landroidx/viewpager/widget/ViewPager;
.source ""


# instance fields
.field private isPagingEnabled:Z

.field private mScroller:Lcom/zoho/livechat/android/ui/ImageScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/ImagePager;->isPagingEnabled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/ImagePager;->mScroller:Lcom/zoho/livechat/android/ui/ImageScroller;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/ImagePager;->postInitViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/ImagePager;->isPagingEnabled:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/ImagePager;->mScroller:Lcom/zoho/livechat/android/ui/ImageScroller;

    invoke-direct {p0}, Lcom/zoho/livechat/android/ui/ImagePager;->postInitViewPager()V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method private postInitViewPager()V
    .locals 5

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v3, "sInterpolator"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v2, Lcom/zoho/livechat/android/ui/ImageScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Interpolator;

    invoke-direct {v2, v3, v0}, Lcom/zoho/livechat/android/ui/ImageScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/zoho/livechat/android/ui/ImagePager;->mScroller:Lcom/zoho/livechat/android/ui/ImageScroller;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/ImagePager;->isPagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/ImagePager;->isPagingEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/ImagePager;->isPagingEnabled:Z

    return-void
.end method

.method public setScrollDurationFactor(D)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/ImagePager;->mScroller:Lcom/zoho/livechat/android/ui/ImageScroller;

    invoke-virtual {v0, p1, p2}, Lcom/zoho/livechat/android/ui/ImageScroller;->setScrollDurationFactor(D)V

    return-void
.end method
