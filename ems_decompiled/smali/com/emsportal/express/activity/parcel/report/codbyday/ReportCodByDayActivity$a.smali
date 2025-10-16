.class public Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lc/b/m/d/c;

    invoke-virtual {p1, v1}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-virtual {p1}, Lc/b/m/d/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lc/b/m/d/c;->d()I

    move-result v3

    .line 1
    iget-object v4, v1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->e:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->f:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/u/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-virtual {p1}, Lc/b/m/d/c;->b()Ljava/util/List;

    move-result-object v2

    .line 3
    iput-object v2, v1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Lc/b/m/d/c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 5
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 7
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 9
    iget-object v3, v3, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 10
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 11
    iget-object v3, v3, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->o:Lc/b/m/a/b/d/b/b;

    .line 12
    invoke-virtual {v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 13
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 14
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 15
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->o:Lc/b/m/a/b/d/b/b;

    .line 16
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 17
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    .line 18
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-static {p1}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->v(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 19
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    .line 20
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 21
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 23
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 24
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 25
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->o:Lc/b/m/a/b/d/b/b;

    .line 26
    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-static {p1}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->v(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->m:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 3
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->n:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    .line 7
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->o:Lc/b/m/a/b/d/b/b;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeChanged(II)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity$a;->a:Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-static {p1}, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;->v(Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;)V

    return-void
.end method
