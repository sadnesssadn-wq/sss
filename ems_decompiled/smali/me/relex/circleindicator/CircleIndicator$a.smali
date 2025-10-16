.class public Lme/relex/circleindicator/CircleIndicator$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lme/relex/circleindicator/CircleIndicator;


# direct methods
.method public constructor <init>(Lme/relex/circleindicator/CircleIndicator;)V
    .locals 0

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    .line 1
    iget-object v0, v0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 2
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/x/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    .line 3
    iget-object v0, v0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 4
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/x/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/x/a/a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$a;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
