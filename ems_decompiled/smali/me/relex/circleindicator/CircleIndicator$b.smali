.class public Lme/relex/circleindicator/CircleIndicator$b;
.super Landroid/database/DataSetObserver;
.source ""


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

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    .line 1
    iget-object v0, v0, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/x/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/x/a/a;->getCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    iget v2, v1, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    if-ge v2, v0, :cond_3

    .line 3
    iget-object v0, v1, Lme/relex/circleindicator/CircleIndicator;->n:Landroidx/viewpager/widget/ViewPager;

    .line 4
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    :goto_1
    iput v0, v1, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator$b;->a:Lme/relex/circleindicator/CircleIndicator;

    .line 5
    invoke-virtual {v0}, Lme/relex/circleindicator/CircleIndicator;->e()V

    return-void
.end method
