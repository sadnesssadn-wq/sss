.class public Lme/relex/circleindicator/CircleIndicator3$b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lme/relex/circleindicator/CircleIndicator3;


# direct methods
.method public constructor <init>(Lme/relex/circleindicator/CircleIndicator3;)V
    .locals 0

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3$b;->a:Lme/relex/circleindicator/CircleIndicator3;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3$b;->a:Lme/relex/circleindicator/CircleIndicator3;

    .line 1
    iget-object v0, v0, Lme/relex/circleindicator/CircleIndicator3;->n:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator3$b;->a:Lme/relex/circleindicator/CircleIndicator3;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator3$b;->a:Lme/relex/circleindicator/CircleIndicator3;

    iget v2, v1, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    if-ge v2, v0, :cond_3

    .line 3
    iget-object v0, v1, Lme/relex/circleindicator/CircleIndicator3;->n:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    iput v0, v1, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3$b;->a:Lme/relex/circleindicator/CircleIndicator3;

    .line 5
    invoke-virtual {v0}, Lme/relex/circleindicator/CircleIndicator3;->e()V

    return-void
.end method

.method public b(II)V
    .locals 0

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator3$b;->a()V

    return-void
.end method

.method public c(IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lme/relex/circleindicator/CircleIndicator3$b;->b(II)V

    .line 2
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator3$b;->a()V

    return-void
.end method

.method public d(II)V
    .locals 0

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator3$b;->a()V

    return-void
.end method

.method public e(III)V
    .locals 0

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator3$b;->a()V

    return-void
.end method

.method public f(II)V
    .locals 0

    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator3$b;->a()V

    return-void
.end method
