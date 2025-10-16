.class public Lc/b/q/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lc/b/q/d/c;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->e:Ljava/util/List;

    .line 6
    new-instance v1, Lc/b/q/d/c;

    const-string v2, "T\u1ea5t c\u1ea3"

    const-string v3, "ALL"

    invoke-direct {v1, v2, v3}, Lc/b/q/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    .line 7
    iget-object v0, v0, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->e:Ljava/util/List;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    .line 9
    iget-object v0, p1, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->d:Lc/b/l/i0;

    .line 10
    iget-object p1, p1, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->e:Ljava/util/List;

    .line 11
    iget-object v1, v0, Lc/b/l/i0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lc/b/l/i0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v1, v0, Lc/b/l/i0;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Lc/b/l/i0;->g:Lc/b/q/b/e;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 12
    iget-object p1, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    .line 13
    iget-object v0, p1, Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;->d:Lc/b/l/i0;

    .line 14
    invoke-virtual {p1}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/b/l/i0;->d(Lb/m/d/y;)V

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/q/a/f;->a:Lcom/emsportal/instant/activity/ListSuperSpeedParcelsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
