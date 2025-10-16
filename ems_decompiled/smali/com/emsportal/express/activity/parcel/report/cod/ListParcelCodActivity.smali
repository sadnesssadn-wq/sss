.class public Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lc/b/x/c$a;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/a0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/b/m/b/j;

.field public f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:I

.field public j:Lc/b/x/c;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Lc/b/m/d/i0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->i:I

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->i:I

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->j:Lc/b/x/c;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lc/b/x/c;->i:Z

    .line 2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->e:Lc/b/m/b/j;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->v()V

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->i:I

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->v()V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b003d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 8

    const v0, 0x7f1003b3

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->d:Ljava/util/List;

    new-instance v2, Lc/b/m/b/j;

    invoke-direct {v2, v1}, Lc/b/m/b/j;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->e:Lc/b/m/b/j;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lc/b/x/c;

    invoke-direct {v1, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->j:Lc/b/x/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KEY_DATABUNDLE_COD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/b;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lc/b/m/d/b;->status:Ljava/lang/String;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->k:Ljava/lang/String;

    iget-object v1, v0, Lc/b/m/d/b;->startDate:Ljava/lang/String;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->l:Ljava/lang/String;

    iget-object v1, v0, Lc/b/m/d/b;->endDate:Ljava/lang/String;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->m:Ljava/lang/String;

    iget-object v1, v0, Lc/b/m/d/b;->keyword:Ljava/lang/String;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->n:Ljava/lang/String;

    iget-object v0, v0, Lc/b/m/d/b;->summary:Lc/b/m/d/i0;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->o:Lc/b/m/d/i0;

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->v()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->o:Lc/b/m/d/i0;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lc/b/m/d/i0;->b()Lc/b/m/d/b0;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/m/d/b0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lc/b/m/d/i0;->a()Lc/b/m/d/z;

    move-result-object v2

    invoke-virtual {v2}, Lc/b/m/d/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Lc/b/m/d/i0;->c()Lc/b/m/d/j0;

    move-result-object v3

    invoke-virtual {v3}, Lc/b/m/d/j0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {v0}, Lc/b/m/d/i0;->b()Lc/b/m/d/b0;

    move-result-object v2

    invoke-virtual {v2}, Lc/b/m/d/b0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0}, Lc/b/m/d/i0;->a()Lc/b/m/d/z;

    move-result-object v4

    invoke-virtual {v4}, Lc/b/m/d/z;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0}, Lc/b/m/d/i0;->c()Lc/b/m/d/j0;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/m/d/j0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    add-double/2addr v2, v4

    add-double/2addr v2, v6

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->h:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->g:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08040a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f0804d9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0804a4

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->g:Landroid/widget/TextView;

    return-void
.end method

.method public final v()V
    .locals 13

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->n:Ljava/lang/String;

    iget v4, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->i:I

    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 1
    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:Z

    xor-int/lit8 v5, v5, 0x1

    .line 2
    new-instance v6, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;

    invoke-direct {v6, p0}, Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity$a;-><init>(Lcom/emsportal/express/activity/parcel/report/cod/ListParcelCodActivity;)V

    .line 3
    sget v7, Lc/b/s/a;->d:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "dd/MM/yyyy"

    invoke-static {v1, v8}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v2, v8}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v11

    const-string v8, "cod-status"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v8, "time_start"

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_end"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "limit"

    const-string v1, "10"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "2"

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "code"

    invoke-virtual {v7, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ws.ems.com.vn/api/v1/orders/order-cod"

    invoke-static {v0, v7, v5, v6}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
