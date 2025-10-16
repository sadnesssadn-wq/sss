.class public Lcom/emsportal/widget/AutoScrollViewPager$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emsportal/widget/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/emsportal/widget/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/emsportal/widget/AutoScrollViewPager;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/emsportal/widget/AutoScrollViewPager$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/emsportal/widget/AutoScrollViewPager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/widget/AutoScrollViewPager;

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p1, Lcom/emsportal/widget/AutoScrollViewPager;->k:Lc/b/x/b;

    if-eqz v0, :cond_6

    .line 2
    iget-wide v1, p1, Lcom/emsportal/widget/AutoScrollViewPager;->h:D

    .line 3
    iput-wide v1, v0, Lc/b/x/b;->a:D

    .line 4
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/x/a/a;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/x/a/a;->getCount()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-gt v2, v0, :cond_1

    goto :goto_2

    :cond_1
    iget v4, p1, Lcom/emsportal/widget/AutoScrollViewPager;->d:I

    if-nez v4, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, v0

    :goto_1
    if-gez v1, :cond_3

    iget-boolean v1, p1, Lcom/emsportal/widget/AutoScrollViewPager;->e:Z

    if-eqz v1, :cond_5

    sub-int/2addr v2, v0

    iget-boolean v0, p1, Lcom/emsportal/widget/AutoScrollViewPager;->g:Z

    invoke-virtual {p1, v2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_4

    iget-boolean v0, p1, Lcom/emsportal/widget/AutoScrollViewPager;->e:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/emsportal/widget/AutoScrollViewPager;->g:Z

    invoke-virtual {p1, v3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 5
    :cond_5
    :goto_2
    iget-object v0, p1, Lcom/emsportal/widget/AutoScrollViewPager;->k:Lc/b/x/b;

    .line 6
    iget-wide v1, p1, Lcom/emsportal/widget/AutoScrollViewPager;->i:D

    .line 7
    iput-wide v1, v0, Lc/b/x/b;->a:D

    .line 8
    iget-wide v1, p1, Lcom/emsportal/widget/AutoScrollViewPager;->c:J

    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v1, v4

    .line 10
    iget-object v0, p1, Lcom/emsportal/widget/AutoScrollViewPager;->j:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Lcom/emsportal/widget/AutoScrollViewPager;->j:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    return-void
.end method
