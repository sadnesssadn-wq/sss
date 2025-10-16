.class public Lc/b/m/a/b/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 8

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_4

    .line 2
    const-class v0, Lc/b/m/d/e0;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 7
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 9
    iget-object v1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc/b/m/d/j;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/b/m/d/e0;

    invoke-virtual {v5}, Lc/b/m/d/e0;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cod"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Lc/b/m/d/e0;->d(Z)V

    :cond_2
    iget-object v4, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->k:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    :cond_3
    iget-object p1, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 11
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->o:Lc/b/m/b/o;

    .line 12
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 13
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object p1, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 15
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 18
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/b/a/f;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
