.class public Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->w(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    const-class v0, Lc/b/m/d/w;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->e:Lc/b/m/b/k;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 7
    iget-object v0, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->f:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1, v0}, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->x(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 10
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->f:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 12
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    .line 14
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
