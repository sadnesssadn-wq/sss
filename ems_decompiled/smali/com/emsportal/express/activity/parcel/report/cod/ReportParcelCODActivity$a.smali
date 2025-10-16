.class public Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 10

    const-class v0, Lc/b/m/d/d;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lc/b/m/d/d;->b()Lc/b/m/d/i0;

    move-result-object p1

    const v0, 0x7f100293

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 1
    :goto_0
    iput-boolean v1, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->r:Z

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lc/b/m/d/i0;->a()Lc/b/m/d/z;

    move-result-object v2

    invoke-virtual {p1}, Lc/b/m/d/i0;->b()Lc/b/m/d/b0;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/m/d/i0;->c()Lc/b/m/d/j0;

    move-result-object v4

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lc/b/m/d/z;->a()Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lc/b/m/d/b0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4}, Lc/b/m/d/j0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 3
    iput-boolean v1, v2, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->r:Z

    .line 4
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->r:Z

    .line 6
    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->t:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 7
    iput-object p1, v3, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->s:Lc/b/m/d/i0;

    .line 8
    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/i0;->b()Lc/b/m/d/b0;

    move-result-object v4

    invoke-virtual {v4}, Lc/b/m/d/b0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/i0;->a()Lc/b/m/d/z;

    move-result-object v4

    invoke-virtual {v4}, Lc/b/m/d/z;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/i0;->c()Lc/b/m/d/j0;

    move-result-object v3

    invoke-virtual {v3}, Lc/b/m/d/j0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lc/b/m/d/i0;->b()Lc/b/m/d/b0;

    move-result-object v4

    invoke-virtual {v4}, Lc/b/m/d/b0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p1}, Lc/b/m/d/i0;->a()Lc/b/m/d/z;

    move-result-object v5

    invoke-virtual {v5}, Lc/b/m/d/z;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p1}, Lc/b/m/d/i0;->c()Lc/b/m/d/j0;

    move-result-object p1

    invoke-virtual {p1}, Lc/b/m/d/j0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-instance v6, Lc/c/b/a/d/u;

    invoke-virtual {v0}, Lb/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v9, "\u0110\u00e3 thu COD - Ch\u1edd tr\u1ea3"

    invoke-direct {v6, v4, v9, v7}, Lc/c/b/a/d/u;-><init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lc/c/b/a/d/u;

    invoke-virtual {v0}, Lb/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v9, "\u0110\u00e3 tr\u1ea3 COD"

    invoke-direct {v6, v5, v9, v7}, Lc/c/b/a/d/u;-><init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lc/c/b/a/d/u;

    invoke-virtual {v0}, Lb/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v8, "Ch\u01b0a thu ti\u1ec1n COD"

    invoke-direct {v6, p1, v8, v7}, Lc/c/b/a/d/u;-><init>(FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    cmpl-float v4, v4, p1

    if-nez v4, :cond_3

    cmpl-float v4, v5, p1

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v4, v2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    const/16 v5, 0x6e

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleAlpha(I)V

    :goto_1
    new-instance v4, Lc/c/b/a/d/t;

    const-string v5, "Tr\u1ea1ng th\u00e1i COD"

    invoke-direct {v4, v3, v5}, Lc/c/b/a/d/t;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 11
    iput-boolean v2, v4, Lc/c/b/a/d/f;->k:Z

    .line 12
    invoke-virtual {v4, p1}, Lc/c/b/a/d/t;->Z0(F)V

    new-instance v2, Lc/c/b/a/k/e;

    const/high16 v3, 0x42200000    # 40.0f

    invoke-direct {v2, p1, v3}, Lc/c/b/a/k/e;-><init>(FF)V

    .line 13
    iget-object p1, v4, Lc/c/b/a/d/f;->l:Lc/c/b/a/k/e;

    iget v3, v2, Lc/c/b/a/k/e;->b:F

    iput v3, p1, Lc/c/b/a/k/e;->b:F

    iget v2, v2, Lc/c/b/a/k/e;->c:F

    iput v2, p1, Lc/c/b/a/k/e;->c:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 14
    invoke-virtual {v4, p1}, Lc/c/b/a/d/t;->Y0(F)V

    sget-object p1, Lc/c/b/a/d/t$a;->d:Lc/c/b/a/d/t$a;

    .line 15
    iput-object p1, v4, Lc/c/b/a/d/t;->v:Lc/c/b/a/d/t$a;

    .line 16
    iput-object p1, v4, Lc/c/b/a/d/t;->w:Lc/c/b/a/d/t$a;

    const p1, 0x3e99999a    # 0.3f

    .line 17
    iput p1, v4, Lc/c/b/a/d/t;->B:F

    const p1, 0x3ecccccd    # 0.4f

    .line 18
    iput p1, v4, Lc/c/b/a/d/t;->C:F

    .line 19
    iput-boolean v1, v4, Lc/c/b/a/d/t;->x:Z

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "#316E9D"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#5bb85d"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#f64e29"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "#9c4f09"

    invoke-static {v1}, Lc/c/b/a/k/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iput-object p1, v4, Lc/c/b/a/d/f;->a:Ljava/util/List;

    .line 22
    new-instance p1, Lc/c/b/a/d/s;

    invoke-direct {p1, v4}, Lc/c/b/a/d/s;-><init>(Lc/c/b/a/g/b/i;)V

    new-instance v1, Lc/c/b/a/e/d;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-direct {v1, v2}, Lc/c/b/a/e/d;-><init>(Lcom/github/mikephil/charting/charts/PieChart;)V

    invoke-virtual {p1, v1}, Lc/c/b/a/d/l;->l(Lc/c/b/a/e/e;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v1}, Lc/c/b/a/d/l;->n(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Lc/c/b/a/d/l;->m(I)V

    iget-object v1, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/charts/Chart;->setData(Lc/c/b/a/d/l;)V

    iget-object p1, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/Chart;->m([Lc/c/b/a/f/d;)V

    iget-object p1, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->e:Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->r:Z

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
