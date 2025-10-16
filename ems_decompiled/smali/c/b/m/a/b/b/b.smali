.class public Lc/b/m/a/b/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    const-class v1, Lc/b/m/d/e0;

    invoke-virtual {p1, v1}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->I:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    .line 7
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->J:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    .line 9
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->I:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/e0;

    iget-object v1, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    .line 11
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->J:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/m/d/f0;

    invoke-virtual {v0}, Lc/b/m/d/e0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lc/b/m/d/f0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lc/b/m/d/e0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/b/m/d/f0;->f(Ljava/lang/String;)V

    const-string v3, "phu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lc/b/m/d/f0;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    .line 13
    iget-object v3, v3, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->y:Landroid/widget/TextView;

    .line 14
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    .line 15
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->F:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    .line 17
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->K:Lc/b/m/b/p;

    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/b/b/b;->a:Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
