.class public Lcom/emsportal/express/activity/FreightActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lc/b/m/b/d$a;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Lc/b/m/d/j;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/o;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lc/b/m/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0036

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x7c9

    if-ne p1, p3, :cond_0

    const/16 p1, 0x144

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
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
    .locals 10

    iget-object v0, p0, Lcom/emsportal/express/activity/FreightActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/emsportal/express/activity/FreightActivity;->e:Ljava/util/List;

    new-instance v3, Lc/b/m/b/d;

    invoke-direct {v3, v2}, Lc/b/m/b/d;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/emsportal/express/activity/FreightActivity;->f:Lc/b/m/b/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/FreightActivity;->f:Lc/b/m/b/d;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/FreightActivity;->f:Lc/b/m/b/d;

    .line 2
    iput-object p0, v0, Lc/b/m/b/d;->a:Lc/b/m/b/d$a;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/j;

    iput-object v0, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lc/b/m/d/j;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v1}, Lc/b/m/d/j;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v2}, Lc/b/m/d/j;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v3}, Lc/b/m/d/j;->L()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v4}, Lc/b/m/d/j;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "###.###"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v5}, Lc/b/m/d/j;->w()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v6}, Lc/b/m/d/j;->M()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/emsportal/express/activity/FreightActivity;->d:Lc/b/m/d/j;

    invoke-virtual {v7}, Lc/b/m/d/j;->r()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4
    :cond_2
    new-instance v5, Lc/b/m/a/a;

    invoke-direct {v5, p0}, Lc/b/m/a/a;-><init>(Lcom/emsportal/express/activity/FreightActivity;)V

    .line 5
    sget v6, Lc/b/s/a;->d:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_3

    const-string v7, "to_province"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "from_province"

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v3, :cond_5

    const-string v0, "total_weight"

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "money_collect"

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v8, :cond_7

    const-string v0, "size"

    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v2, :cond_8

    const-string v0, "to_district"

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v0, 0x1

    const-string v1, "http://ws.ems.com.vn/api/v1/orders/quotes"

    invoke-static {v1, v6, v0, v5}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f10039d

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/FreightActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
