.class public Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lc/c/b/a/h/d;
.implements Lc/b/l/l$a;


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Lcom/github/mikephil/charting/charts/PieChart;

.field public f:Landroid/widget/Spinner;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/g0;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lc/b/m/b/s;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lc/b/m/d/m;

.field public q:I

.field public r:Z

.field public s:Lc/b/m/d/i0;

.field public t:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->r:Z

    return-void
.end method


# virtual methods
.method public c(Lc/c/b/a/d/o;Lc/c/b/a/f/d;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0048

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 1
    sget p1, Lc/b/l/l;->A:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lc/b/l/l;

    invoke-direct {v0}, Lc/b/l/l;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    .line 3
    iput-object p0, v0, Lc/b/l/l;->x:Lc/b/l/l$a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const p1, 0x7f100263

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->r:Z

    if-eqz p1, :cond_2

    const p1, 0x7f100293

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v6, Lc/b/m/d/b;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->s:Lc/b/m/d/i0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/b/m/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/m/d/i0;)V

    const-string v0, "KEY_DATABUNDLE_COD"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;

    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()V
    .locals 7

    iput-object p0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->t:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f08046a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080470

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0803e8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->f:Landroid/widget/Spinner;

    const v0, 0x7f0801e3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    const v0, 0x7f0804bd

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0804a4

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0804e1

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->i:Landroid/widget/TextView;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->j:Ljava/util/List;

    new-instance v1, Lc/b/m/d/g0;

    const-string v2, ""

    const-string v3, "T\u1ea5t c\u1ea3"

    invoke-direct {v1, v2, v3}, Lc/b/m/d/g0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lc/b/m/d/g0;

    const-string v3, "C"

    const-string v4, "\u0110\u00e3 thu ti\u1ec1n cod - ch\u1edd tr\u1ea3"

    invoke-direct {v2, v3, v4}, Lc/b/m/d/g0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lc/b/m/d/g0;

    const-string v4, "P"

    const-string v5, "\u0110\u00e3 tr\u1ea3 ti\u1ec1n cod"

    invoke-direct {v3, v4, v5}, Lc/b/m/d/g0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lc/b/m/d/g0;

    const-string v5, "A"

    const-string v6, "Ch\u01b0a thu ti\u1ec1n cod"

    invoke-direct {v4, v5, v6}, Lc/b/m/d/g0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->j:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lc/b/m/b/s;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->j:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lc/b/m/b/s;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->k:Lc/b/m/b/s;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->f:Landroid/widget/Spinner;

    new-instance v1, Lc/b/m/a/b/d/a/b;

    invoke-direct {v1, p0}, Lc/b/m/a/b/d/a/b;-><init>(Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    .line 3
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setUsePercentValues(Z)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getDescription()Lc/c/b/a/c/c;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, v2, Lc/c/b/a/c/b;->a:Z

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v4, 0x42200000    # 40.0f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 6
    invoke-virtual {v0, v5, v2, v4, v5}, Lcom/github/mikephil/charting/charts/Chart;->p(FFFF)V

    const v2, 0x3f733333    # 0.95f

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/Chart;->setDragDecelerationFrictionCoef(F)V

    const-string v2, "EMS VIET NAM"

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setCenterText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleColor(I)V

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleColor(I)V

    const/16 v4, 0x6e

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    const/high16 v4, 0x42680000    # 58.0f

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawCenterText(Z)V

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationAngle(F)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->setRotationEnabled(Z)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/Chart;->setHighlightPerTapEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setMinAngleForSlices(F)V

    invoke-virtual {v0, p0}, Lcom/github/mikephil/charting/charts/Chart;->setOnChartValueSelectedListener(Lc/c/b/a/h/d;)V

    const/16 v1, 0x578

    sget-object v5, Lc/c/b/a/a/b;->a:Lc/c/b/a/a/b$d;

    invoke-virtual {v0, v1, v5}, Lcom/github/mikephil/charting/charts/Chart;->e(ILc/c/b/a/a/b$d;)V

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/Chart;->getLegend()Lc/c/b/a/c/e;

    move-result-object v1

    sget-object v5, Lc/c/b/a/c/e$e;->c:Lc/c/b/a/c/e$e;

    .line 7
    iput-object v5, v1, Lc/c/b/a/c/e;->h:Lc/c/b/a/c/e$e;

    .line 8
    sget-object v5, Lc/c/b/a/c/e$c;->e:Lc/c/b/a/c/e$c;

    .line 9
    iput-object v5, v1, Lc/c/b/a/c/e;->g:Lc/c/b/a/c/e$c;

    .line 10
    sget-object v5, Lc/c/b/a/c/e$d;->d:Lc/c/b/a/c/e$d;

    .line 11
    iput-object v5, v1, Lc/c/b/a/c/e;->i:Lc/c/b/a/c/e$d;

    .line 12
    iput-boolean v3, v1, Lc/c/b/a/c/e;->j:Z

    const/high16 v5, 0x40e00000    # 7.0f

    .line 13
    iput v5, v1, Lc/c/b/a/c/e;->o:F

    .line 14
    iput v4, v1, Lc/c/b/a/c/e;->p:F

    .line 15
    invoke-virtual {v1, v4}, Lc/c/b/a/c/b;->a(F)V

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelColor(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setEntryLabelTextSize(F)V

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    .line 16
    invoke-static {}, Lb/u/a;->D()Lc/b/m/d/m;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->p:Lc/b/m/d/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->p:Lc/b/m/d/m;

    invoke-virtual {v0}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/4 v4, 0x5

    const/16 v5, -0x1e

    invoke-static {v2, v4, v5, v1}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->m:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->w()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final w()V
    .locals 12

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->o:Ljava/lang/String;

    iget v4, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->q:I

    new-instance v5, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;

    invoke-direct {v5, p0}, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;-><init>(Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;)V

    .line 1
    sget v6, Lc/b/s/a;->d:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "dd/MM/yyyy"

    invoke-static {v1, v7}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v2, v7}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v10

    const-string v7, "cod-status"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v7, "time_start"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_end"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "limit"

    const-string v1, "10"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "1"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ws.ems.com.vn/api/v1/orders/order-cod"

    const/4 v1, 0x1

    invoke-static {v0, v6, v1, v5}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
