.class public Lc/b/m/c/h;
.super Lcom/emsportal/base/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lc/b/l/s$a;
.implements Lc/c/b/a/h/d;


# static fields
.field public static final synthetic p:I


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Lcom/github/mikephil/charting/charts/PieChart;

.field public e:Lc/b/m/b/k;

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/w;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroidx/appcompat/widget/Toolbar;

.field public k:Landroid/widget/TextView;

.field public l:Lc/b/m/d/m;

.field public m:Lc/b/l/s;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/b/m/c/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lc/b/m/c/h;->o(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lc/b/m/c/h;->n:Ljava/lang/String;

    iput-object p3, p0, Lc/b/m/c/h;->o:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lc/b/m/c/h;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7f0b0070

    return v0
.end method

.method public f()V
    .locals 2

    invoke-static {}, Lc/b/l/s;->l()Lc/b/l/s;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/c/h;->m:Lc/b/l/s;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/b/l/s;->I:Z

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lc/b/m/c/h;->n:Ljava/lang/String;

    iget-object v1, p0, Lc/b/m/c/h;->o:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lc/b/m/c/h;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public j()V
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lc/b/m/c/h;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    new-instance v3, Lc/b/m/b/k;

    invoke-direct {v3, v2}, Lc/b/m/b/k;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, Lc/b/m/c/h;->e:Lc/b/m/b/k;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, p0, Lc/b/m/c/h;->e:Lc/b/m/b/k;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lc/b/m/c/h;->e:Lc/b/m/b/k;

    new-instance v3, Lc/b/m/c/e;

    invoke-direct {v3, p0}, Lc/b/m/c/e;-><init>(Lc/b/m/c/h;)V

    .line 2
    iput-object v3, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 3
    iget-object v1, p0, Lc/b/m/c/h;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lb/u/a;->E()Lc/b/m/d/m;

    move-result-object v1

    iput-object v1, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/b/m/c/h;->n:Ljava/lang/String;

    iget-object v1, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {v1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    const/4 v6, 0x5

    const/16 v7, -0x1e

    invoke-static {v4, v6, v7, v3}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "start"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "end"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lc/b/m/c/h;->n:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lc/b/m/c/h;->o:Ljava/lang/String;

    iget-object v3, p0, Lc/b/m/c/h;->n:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Lc/b/m/c/h;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc/b/m/c/h;->n:Ljava/lang/String;

    iget-object v3, p0, Lc/b/m/c/h;->o:Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v0}, Lc/b/m/c/h;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    .line 6
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lc/c/b/a/c/c;

    move-result-object v3

    .line 7
    iput-boolean v2, v3, Lc/c/b/a/c/b;->a:Z

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 8
    invoke-virtual {v1, v5, v3, v4, v5}, Lcom/github/mikephil/charting/charts/Chart;->p(FFFF)V

    const v3, 0x3f733333    # 0.95f

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    const-string v3, "EMS VIET NAM"

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    const/16 v4, 0x6e

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    const/high16 v4, 0x42680000    # 58.0f

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationEnabled(Z)V

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setHighlightPerTapEnabled(Z)V

    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setMinAngleForSlices(F)V

    invoke-virtual {v1, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lc/c/b/a/h/d;)V

    const/16 v0, 0x578

    sget-object v5, Lc/c/b/a/a/b;->a:Lc/c/b/a/a/b$d;

    invoke-virtual {v1, v0, v5}, Lcom/github/mikephil/charting/charts/Chart;->e(ILc/c/b/a/a/b$d;)V

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lc/c/b/a/c/e;

    move-result-object v0

    sget-object v5, Lc/c/b/a/c/e$e;->c:Lc/c/b/a/c/e$e;

    .line 9
    iput-object v5, v0, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 10
    sget-object v5, Lc/c/b/a/c/e$c;->e:Lc/c/b/a/c/e$c;

    .line 11
    iput-object v5, v0, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    .line 12
    sget-object v5, Lc/c/b/a/c/e$d;->d:Lc/c/b/a/c/e$d;

    .line 13
    iput-object v5, v0, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    .line 14
    iput-boolean v2, v0, Lc/c/b/a/c/e;->j:Z

    const/high16 v5, 0x40e00000    # 7.0f

    .line 15
    iput v5, v0, Lc/c/b/a/c/e;->o:F

    .line 16
    iput v4, v0, Lc/c/b/a/c/e;->p:F

    .line 17
    invoke-virtual {v0, v4}, Lc/c/b/a/c/b;->a(F)V

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelColor(I)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTextSize(F)V

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    .line 18
    iget-object v0, p0, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lc/b/m/c/h;->q(Ljava/util/List;)V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f080215

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/b/m/c/h;->c:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0804cf

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/h;->g:Landroid/widget/TextView;

    const p1, 0x7f080434

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lc/b/m/c/h;->j:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0804d5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/h;->k:Landroid/widget/TextView;

    const v0, 0x7f1003b2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f080261

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/m/c/h;->i:Landroid/view/ViewGroup;

    const p1, 0x7f08049a

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/h;->h:Landroid/widget/TextView;

    const p1, 0x7f0801e3

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object p1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lc/b/m/c/h;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x259

    if-ne p1, p3, :cond_0

    const/16 p1, 0x209

    if-ne p2, p1, :cond_0

    invoke-static {}, Lb/u/a;->E()Lc/b/m/d/m;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {p1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {p2}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lc/b/m/c/h;->o(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {p1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {p1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lc/b/m/c/f;

    invoke-direct {v5, p0}, Lc/b/m/c/f;-><init>(Lc/b/m/c/h;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lc/b/s/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    .line 2
    iget-object p1, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {p1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/m/c/h;->l:Lc/b/m/d/m;

    invoke-virtual {p2}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lc/b/m/c/g;

    invoke-direct {p3, p0}, Lc/b/m/c/g;-><init>(Lc/b/m/c/h;)V

    .line 3
    sget v0, Lc/b/s/a;->d:I

    const-string v0, "time_start"

    const-string v1, "time_end"

    invoke-static {v0, p1, v1, p2}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "http://ws.ems.com.vn/api/v1/reports/dashboard"

    invoke-static {v0, p1, p2, p3}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/c/h;->i:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lc/b/l/s;->l()Lc/b/l/s;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lc/b/l/s;->I:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {p1, v0, p0, v1}, Lc/b/l/s;->p(Lb/m/d/y;Lc/b/l/s$a;I)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080042

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    const-class v2, Lcom/emsportal/activity/FilterStatiticsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x259

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v3, 0x0

    new-instance v5, Lc/b/m/c/h$a;

    invoke-direct {v5, p0}, Lc/b/m/c/h$a;-><init>(Lc/b/m/c/h;)V

    const-string v2, ""

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lc/b/s/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final q(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/m/d/w;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/m/d/w;

    invoke-virtual {v4}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object v5

    const-string v6, "5"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lc/c/b/a/d/u;

    int-to-float v5, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v6, v5, v4, v7}, Lc/c/b/a/d/u;-><init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/16 v0, 0x6e

    const/4 v3, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, p1, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/a/d/u;

    .line 1
    iget v6, v6, Lc/c/b/a/d/g;->c:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-ne v5, p1, :cond_6

    .line 2
    :cond_5
    iget-object p1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    :cond_6
    new-instance p1, Lc/c/b/a/d/t;

    const-string v0, "Tr\u1ea1ng th\u00e1i b\u01b0u g\u1eedi"

    invoke-direct {p1, v1, v0}, Lc/c/b/a/d/t;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 3
    iput-boolean v2, p1, Lc/c/b/a/d/f;->k:Z

    .line 4
    invoke-virtual {p1, v3}, Lc/c/b/a/d/t;->Z0(F)V

    new-instance v0, Lc/c/b/a/k/e;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-direct {v0, v3, v1}, Lc/c/b/a/k/e;-><init>(FF)V

    .line 5
    iget-object v1, p1, Lc/c/b/a/d/f;->l:Lc/c/b/a/k/e;

    iget v2, v0, Lc/c/b/a/k/e;->b:F

    iput v2, v1, Lc/c/b/a/k/e;->b:F

    iget v0, v0, Lc/c/b/a/k/e;->c:F

    iput v0, v1, Lc/c/b/a/k/e;->c:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 6
    invoke-virtual {p1, v0}, Lc/c/b/a/d/t;->Y0(F)V

    sget-object v0, Lc/c/b/a/d/t$a;->d:Lc/c/b/a/d/t$a;

    .line 7
    iput-object v0, p1, Lc/c/b/a/d/t;->v:Lc/c/b/a/d/t$a;

    .line 8
    iput-object v0, p1, Lc/c/b/a/d/t;->w:Lc/c/b/a/d/t$a;

    const v0, 0x3e99999a    # 0.3f

    .line 9
    iput v0, p1, Lc/c/b/a/d/t;->B:F

    const v0, 0x3ecccccd    # 0.4f

    .line 10
    iput v0, p1, Lc/c/b/a/d/t;->C:F

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lc/c/b/a/d/t;->x:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "#316E9D"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "f64e29"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#5bb85d"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#9c4f09"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iput-object v0, p1, Lc/c/b/a/d/f;->a:Ljava/util/List;

    .line 14
    new-instance v0, Lc/c/b/a/d/s;

    invoke-direct {v0, p1}, Lc/c/b/a/d/s;-><init>(Lc/c/b/a/g/b/i;)V

    new-instance p1, Lc/c/b/a/e/d;

    iget-object v1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-direct {p1, v1}, Lc/c/b/a/e/d;-><init>(Lcom/github/mikephil/charting/charts/PieChart;)V

    invoke-virtual {v0, p1}, Lc/c/b/a/d/l;->l(Lc/c/b/a/e/e;)V

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {v0, p1}, Lc/c/b/a/d/l;->n(F)V

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Lc/c/b/a/d/l;->m(I)V

    iget-object p1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lc/c/b/a/d/l;)V

    iget-object p1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/Chart;->m([Lc/c/b/a/f/d;)V

    iget-object p1, p0, Lc/b/m/c/h;->d:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
