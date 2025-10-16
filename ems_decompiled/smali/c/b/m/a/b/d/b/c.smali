.class public Lc/b/m/a/b/d/b/c;
.super Lc/c/b/a/e/e;
.source ""


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/d/b/c;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-direct {p0}, Lc/c/b/a/e/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b(F)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lc/b/m/a/b/d/b/c;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/m/a/b/d/b/c;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    float-to-int p1, p1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method
