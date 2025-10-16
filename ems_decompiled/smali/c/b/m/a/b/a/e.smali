.class public Lc/b/m/a/b/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->r:Lc/b/m/b/q;

    .line 4
    iget-object v0, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    const-class v0, Lc/b/m/d/u;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 6
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    .line 7
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/m/d/u;

    invoke-virtual {v6}, Lc/b/m/d/u;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 8
    :goto_1
    new-instance v0, Lc/b/m/d/u;

    const-string v2, "999"

    const-string v6, "Ch\u1ecdn d\u1ecbch v\u1ee5"

    invoke-direct {v0, v2, v6}, Lc/b/m/d/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 10
    iget-boolean v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->y:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-array p1, v2, [Lc/b/m/d/u;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/u;

    aput-object v0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/m/d/u;

    invoke-virtual {v1}, Lc/b/m/d/u;->a()Ljava/lang/String;

    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    .line 13
    :cond_2
    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 14
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->r:Lc/b/m/b/q;

    .line 15
    iget-object v1, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eq v4, v5, :cond_4

    add-int/2addr v4, v2

    .line 16
    iget-object p1, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 17
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->c:Landroid/widget/Spinner;

    .line 18
    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 19
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 20
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 21
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/b/a/e;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
