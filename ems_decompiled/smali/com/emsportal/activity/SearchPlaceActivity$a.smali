.class public Lcom/emsportal/activity/SearchPlaceActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/activity/SearchPlaceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SearchPlaceActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SearchPlaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/activity/SearchPlaceActivity$a;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/emsportal/activity/SearchPlaceActivity$a;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 2
    iget-object p1, p1, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity$a;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 4
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity$a;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 7
    iget-object v0, v0, Lcom/emsportal/activity/SearchPlaceActivity;->d:Lc/b/i/f;

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    return v1

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    const/16 v0, 0x8

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity$a;->c:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 9
    sget v2, Lcom/emsportal/activity/SearchPlaceActivity;->g:I

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/b/h/l;

    invoke-direct {v2, v0}, Lc/b/h/l;-><init>(Lcom/emsportal/activity/SearchPlaceActivity;)V

    .line 11
    sget v0, Lc/b/s/a;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "search"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http://ws.ems.com.vn/api/v1/address/search"

    invoke-static {p1, v0, v1, v2}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_1
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
