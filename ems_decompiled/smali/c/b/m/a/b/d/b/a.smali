.class public final synthetic Lc/b/m/a/b/d/b/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/a/b/d/b/a;->c:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lc/b/m/a/b/d/b/a;->c:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->i:Landroidx/core/widget/NestedScrollView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p1, 0x0

    return p1
.end method
