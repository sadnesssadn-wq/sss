.class public Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lc/b/l/h$a;


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Lcom/github/mikephil/charting/charts/CombinedChart;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Landroidx/core/widget/NestedScrollView;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Lc/b/m/a/b/d/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method

.method public static v(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V
    .locals 13

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/c/b/a/d/m;

    invoke-direct {v0}, Lc/c/b/a/d/m;-><init>()V

    .line 2
    new-instance v1, Lc/c/b/a/d/p;

    invoke-direct {v1}, Lc/c/b/a/d/p;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/m/d/a;

    invoke-virtual {v6}, Lc/b/m/d/a;->b()I

    move-result v6

    new-instance v7, Lc/c/b/a/d/o;

    int-to-float v8, v5

    int-to-float v6, v6

    invoke-direct {v7, v8, v6}, Lc/c/b/a/d/o;-><init>(FF)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lc/c/b/a/d/q;

    const v5, 0x7f10016c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Lc/c/b/a/d/q;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const v2, 0x7f05003f

    .line 3
    invoke-static {p0, v2}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v2

    .line 4
    invoke-virtual {v3, v2}, Lc/c/b/a/d/f;->T0(I)V

    const/high16 v5, 0x40200000    # 2.5f

    .line 5
    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    iput v5, v3, Lc/c/b/a/d/r;->z:F

    .line 6
    iget-object v5, v3, Lc/c/b/a/d/q;->B:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lc/c/b/a/d/q;->B:Ljava/util/List;

    :cond_1
    iget-object v5, v3, Lc/c/b/a/d/q;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 7
    iget-object v5, v3, Lc/c/b/a/d/q;->B:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v5, 0x40a00000    # 5.0f

    .line 8
    invoke-static {v5}, Lc/c/b/a/k/i;->d(F)F

    move-result v5

    iput v5, v3, Lc/c/b/a/d/q;->D:F

    .line 9
    iput v2, v3, Lc/c/b/a/d/r;->x:I

    const/4 v2, 0x0

    .line 10
    sget-object v5, Lc/c/b/a/d/q$a;->e:Lc/c/b/a/d/q$a;

    .line 11
    iput-object v5, v3, Lc/c/b/a/d/q;->A:Lc/c/b/a/d/q$a;

    const/4 v5, 0x1

    .line 12
    iput-boolean v5, v3, Lc/c/b/a/d/f;->j:Z

    const/high16 v6, 0x41200000    # 10.0f

    .line 13
    invoke-virtual {v3, v6}, Lc/c/b/a/d/f;->B(F)V

    const v7, 0x7f050276

    .line 14
    invoke-static {p0, v7}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v8

    .line 15
    invoke-virtual {v3, v8}, Lc/c/b/a/d/f;->r0(I)V

    sget-object v8, Lc/c/b/a/c/j$a;->d:Lc/c/b/a/c/j$a;

    .line 16
    iput-object v8, v3, Lc/c/b/a/d/f;->d:Lc/c/b/a/c/j$a;

    .line 17
    invoke-virtual {v1, v3}, Lc/c/b/a/d/l;->b(Lc/c/b/a/g/b/e;)V

    iget-object v8, v1, Lc/c/b/a/d/l;->i:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v1, v4}, Lc/c/b/a/d/l;->k(Z)V

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    iget-object v10, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/b/m/d/a;

    invoke-virtual {v10}, Lc/b/m/d/a;->c()I

    move-result v10

    new-instance v11, Lc/c/b/a/d/c;

    int-to-float v12, v9

    int-to-float v10, v10

    invoke-direct {v11, v12, v10}, Lc/c/b/a/d/c;-><init>(FF)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v8, Lc/c/b/a/d/b;

    const v9, 0x7f10016d

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v9}, Lc/c/b/a/d/b;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const v3, 0x7f050028

    .line 20
    invoke-static {p0, v3}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v3

    .line 21
    invoke-virtual {v8, v3}, Lc/c/b/a/d/f;->T0(I)V

    .line 22
    invoke-static {p0, v7}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v3

    .line 23
    invoke-virtual {v8, v3}, Lc/c/b/a/d/f;->r0(I)V

    invoke-virtual {v8, v6}, Lc/c/b/a/d/f;->B(F)V

    sget-object v3, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    .line 24
    iput-object v3, v8, Lc/c/b/a/d/f;->d:Lc/c/b/a/c/j$a;

    .line 25
    iput-boolean v5, v8, Lc/c/b/a/d/f;->j:Z

    const v3, 0x3ee66666    # 0.45f

    .line 26
    new-instance v6, Lc/c/b/a/d/a;

    new-array v5, v5, [Lc/c/b/a/g/b/a;

    aput-object v8, v5, v4

    invoke-direct {v6, v5}, Lc/c/b/a/d/a;-><init>([Lc/c/b/a/g/b/a;)V

    .line 27
    iput v3, v6, Lc/c/b/a/d/a;->j:F

    .line 28
    invoke-virtual {v6, v4}, Lc/c/b/a/d/l;->k(Z)V

    .line 29
    iput-object v1, v0, Lc/c/b/a/d/m;->j:Lc/c/b/a/d/p;

    invoke-virtual {v0}, Lc/c/b/a/d/m;->j()V

    .line 30
    iput-object v6, v0, Lc/c/b/a/d/m;->k:Lc/c/b/a/d/a;

    invoke-virtual {v0}, Lc/c/b/a/d/m;->j()V

    .line 31
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lc/c/b/a/d/m;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/CombinedChart;->setData(Lc/c/b/a/d/m;)V

    :cond_3
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    new-instance v1, Lc/b/m/a/b/d/b/e/a;

    const v2, 0x7f0b00ac

    invoke-direct {v1, p0, v2}, Lc/b/m/a/b/d/b/e/a;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setMarker(Lc/c/b/a/c/d;)V

    iget-object p0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0049

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->d:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    :try_start_0
    sget p1, Lc/b/l/h;->F:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lc/b/l/h;

    invoke-direct {v0}, Lc/b/l/h;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 3
    iput-object p0, v0, Lc/b/l/h;->B:Lc/b/l/h$a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 13

    const v0, 0x7f100389

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    .line 1
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lc/c/b/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lc/c/b/a/c/b;->a:Z

    .line 3
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    const v2, 0x7f100293

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    const v2, 0x7f050276

    .line 4
    invoke-static {p0, v2}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v2

    .line 5
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setNoDataTextColor(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->setDrawGridBackground(Z)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setDrawBarShadow(Z)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/CombinedChart;->setHighlightFullBarEnabled(Z)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/github/mikephil/charting/charts/CombinedChart$a;

    sget-object v4, Lcom/github/mikephil/charting/charts/CombinedChart$a;->c:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    aput-object v4, v3, v1

    sget-object v4, Lcom/github/mikephil/charting/charts/CombinedChart$a;->e:Lcom/github/mikephil/charting/charts/CombinedChart$a;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/CombinedChart;->setDrawOrder([Lcom/github/mikephil/charting/charts/CombinedChart$a;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lc/c/b/a/c/e;

    move-result-object v0

    .line 6
    iput-boolean v5, v0, Lc/c/b/a/c/e;->w:Z

    .line 7
    sget-object v3, Lc/c/b/a/c/e$e;->e:Lc/c/b/a/c/e$e;

    .line 8
    iput-object v3, v0, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 9
    sget-object v3, Lc/c/b/a/c/e$c;->d:Lc/c/b/a/c/e$c;

    .line 10
    iput-object v3, v0, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    .line 11
    sget-object v3, Lc/c/b/a/c/e$d;->c:Lc/c/b/a/c/e$d;

    .line 12
    iput-object v3, v0, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    .line 13
    iput-boolean v1, v0, Lc/c/b/a/c/e;->j:Z

    .line 14
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisRight()Lc/c/b/a/c/j;

    move-result-object v0

    .line 15
    iput-boolean v1, v0, Lc/c/b/a/c/a;->r:Z

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v3}, Lc/c/b/a/c/a;->f(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lc/c/b/a/c/a;->g(F)V

    new-instance v6, Lc/b/m/a/b/d/b/d/a;

    invoke-direct {v6}, Lc/b/m/a/b/d/b/d/a;-><init>()V

    .line 17
    iput-object v6, v0, Lc/c/b/a/c/a;->f:Lc/c/b/a/e/e;

    .line 18
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarLineChartBase;->getAxisLeft()Lc/c/b/a/c/j;

    move-result-object v0

    .line 19
    iput-boolean v1, v0, Lc/c/b/a/c/a;->r:Z

    .line 20
    invoke-virtual {v0, v3}, Lc/c/b/a/c/a;->f(F)V

    invoke-virtual {v0, v4}, Lc/c/b/a/c/a;->g(F)V

    new-instance v6, Lc/b/m/a/b/d/b/d/a;

    invoke-direct {v6}, Lc/b/m/a/b/d/b/d/a;-><init>()V

    .line 21
    iput-object v6, v0, Lc/c/b/a/c/a;->f:Lc/c/b/a/e/e;

    .line 22
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getXAxis()Lc/c/b/a/c/i;

    move-result-object v0

    sget-object v6, Lc/c/b/a/c/i$a;->e:Lc/c/b/a/c/i$a;

    .line 23
    iput-object v6, v0, Lc/c/b/a/c/i;->E:Lc/c/b/a/c/i$a;

    .line 24
    invoke-virtual {v0, v3}, Lc/c/b/a/c/a;->f(F)V

    invoke-virtual {v0, v4}, Lc/c/b/a/c/a;->g(F)V

    new-instance v3, Lc/b/m/a/b/d/b/c;

    invoke-direct {v3, p0}, Lc/b/m/a/b/d/b/c;-><init>(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V

    .line 25
    iput-object v3, v0, Lc/c/b/a/c/a;->f:Lc/c/b/a/e/e;

    .line 26
    invoke-static {}, Lb/u/a;->B()Lc/b/m/d/m;

    move-result-object v0

    const-string v3, "P"

    if-nez v0, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc/b/m/d/m;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    iput-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->l:Ljava/lang/String;

    .line 27
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v6, 0x5

    invoke-static {v4, v6, v6, v3}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v4, v6, v6, v3}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    new-instance v6, Lc/b/m/d/m;

    sget-object v12, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v6, v7, v3, v12}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    invoke-virtual {v6, v10}, Lc/b/m/d/m;->x(I)V

    invoke-virtual {v6, v9}, Lc/b/m/d/m;->z(I)V

    invoke-virtual {v6, v8}, Lc/b/m/d/m;->E(I)V

    invoke-virtual {v6, v4}, Lc/b/m/d/m;->F(I)V

    invoke-virtual {v6, v2}, Lc/b/m/d/m;->G(I)V

    invoke-virtual {v6, v11}, Lc/b/m/d/m;->H(I)V

    .line 28
    invoke-virtual {v6}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->j:Ljava/lang/String;

    invoke-virtual {v6}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/m;->D(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v6}, Lb/u/a;->a0(Lc/b/m/d/m;)V

    .line 30
    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->k:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->x(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->y(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 31
    new-instance v3, Lc/b/m/a/b/d/b/b;

    invoke-direct {v3, v2}, Lc/b/m/a/b/d/b/b;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->o:Lc/b/m/a/b/d/b/b;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->o:Lc/b/m/a/b/d/b/b;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 32
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    new-instance v1, Lc/b/m/a/b/d/b/a;

    invoke-direct {v1, p0}, Lc/b/m/a/b/d/b/a;-><init>(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f0804aa

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804ab

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0804dc

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0804da

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/CombinedChart;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->g:Lcom/github/mikephil/charting/charts/CombinedChart;

    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->i:Landroidx/core/widget/NestedScrollView;

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    new-instance v0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;-><init>(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V

    .line 1
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dd/MM/yyyy"

    invoke-static {p2, v2}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {p3, v2}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    div-long/2addr p2, v5

    const-string v2, "cod-status"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v2, "time_start"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "time_end"

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http://ws.ems.com.vn/api/v1/orders/cod-by-date"

    const/4 p2, 0x1

    invoke-static {p1, v1, p2, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "dd/MM/yyyy"

    const-string v1, "dd-MM"

    invoke-static {p1, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " - "

    invoke-static {p1, v0, p2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "P"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "H"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "C"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const-string p1, ""

    goto :goto_2

    :pswitch_0
    const p1, 0x7f10032b

    goto :goto_1

    :pswitch_1
    const p1, 0x7f100371

    goto :goto_1

    :pswitch_2
    const p1, 0x7f1003ce

    :goto_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    :goto_2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x48 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
