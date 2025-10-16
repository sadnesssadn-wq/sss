.class public Lc/b/m/a/b/d/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/d/a/b;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/b/m/a/b/d/a/b;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 1
    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->j:Ljava/util/List;

    .line 2
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/m/d/g0;

    invoke-virtual {p2}, Lc/b/m/d/g0;->a()Ljava/lang/String;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->l:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lc/b/m/a/b/d/a/b;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    const/4 p2, 0x1

    .line 5
    iput p2, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->q:I

    const-string p2, ""

    .line 6
    iput-object p2, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->o:Ljava/lang/String;

    .line 7
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/m/a/b/d/a/b;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100263

    invoke-static {p1, p2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lc/b/m/a/b/d/a/b;->c:Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 8
    invoke-virtual {p1}, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->w()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
