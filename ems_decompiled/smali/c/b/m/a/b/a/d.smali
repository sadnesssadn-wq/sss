.class public Lc/b/m/a/b/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 9

    iget-object v0, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/e0;

    invoke-virtual {p1}, Lc/b/m/d/e0;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lc/b/m/d/e0;->d(Z)V

    invoke-virtual {p1}, Lc/b/m/d/e0;->c()Z

    move-result v0

    invoke-virtual {p1}, Lc/b/m/d/e0;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cod"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const-string v7, "phu"

    if-eqz v4, :cond_2

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    iget-object v8, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v4, :cond_1

    iget-object v8, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    if-ne v4, v6, :cond_2

    iget-object v4, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    invoke-virtual {v2, v4, v5, v7}, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v(Ljava/util/List;ILjava/lang/String;)V

    .line 4
    :cond_2
    iget-object v2, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    iget-object v7, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v4, :cond_4

    iget-object v7, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    if-ne v4, v6, :cond_5

    iget-object v4, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    invoke-virtual {v2, v4, v5, v3}, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v(Ljava/util/List;ILjava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 7
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->u:Ljava/util/List;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 9
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->u:Ljava/util/List;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 11
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lc/b/m/a/b/a/d;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 13
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->o:Lc/b/m/b/o;

    .line 14
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    return-void
.end method
