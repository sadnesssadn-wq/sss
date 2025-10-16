.class public Lc/b/p/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/ListGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lc/b/p/e/h;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    .line 6
    new-instance v1, Lc/b/p/e/h;

    const-string v2, "ALL"

    const-string v3, "T\u1ea5t c\u1ea3"

    invoke-direct {v1, v2, v3}, Lc/b/p/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/p/e/h;

    invoke-virtual {v0}, Lc/b/p/e/h;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 7
    iget-object v1, v1, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 9
    iget-object v0, p1, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->d:Lc/b/p/c/a;

    .line 10
    iget-object p1, p1, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->e:Ljava/util/List;

    .line 11
    iget-object v1, v0, Lc/b/p/c/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lc/b/p/c/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v1, v0, Lc/b/p/c/a;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, v0, Lc/b/p/c/a;->g:Lc/b/p/b/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 12
    iget-object p1, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    .line 13
    iget-object v0, p1, Lcom/emsportal/grab/activity/ListGrabParcelActivity;->d:Lc/b/p/c/a;

    .line 14
    invoke-virtual {p1}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/b/p/c/a;->d(Lb/m/d/y;)V

    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/p/a/d;->a:Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
