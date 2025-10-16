.class public Lc/b/h/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/SearchPlaceActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SearchPlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lcom/emsportal/model/Place;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 2
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 4
    iget-object v2, v2, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 5
    iget-object v2, v2, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    .line 6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 7
    iget-object v2, v2, Lcom/emsportal/activity/SearchPlaceActivity;->d:Lc/b/i/f;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    iget-object v0, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 9
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 10
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 12
    iget-object p1, p1, Lcom/emsportal/activity/SearchPlaceActivity;->d:Lc/b/i/f;

    .line 13
    invoke-virtual {p1, v3, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/h/l;->a:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
