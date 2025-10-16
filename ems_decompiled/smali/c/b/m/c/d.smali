.class public Lc/b/m/c/d;
.super Lcom/emsportal/base/BaseListFragment;
.source ""


# static fields
.field public static final synthetic f:I


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/t;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/emsportal/model/ObjTab;

.field public e:Lc/b/m/c/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    iput-object p0, p0, Lc/b/m/c/d;->e:Lc/b/m/c/d;

    return-void
.end method

.method public k(I)V
    .locals 3

    iget-object v0, p0, Lc/b/m/c/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/t;

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "objrequest"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    const-class v2, Lcom/emsportal/express/activity/request/DetailRequestActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x18d1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x18d1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x1807

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/base/BaseListFragment;->h()V

    :cond_0
    return-void
.end method

.method public p()I
    .locals 1

    const v0, 0x7f070134

    return v0
.end method

.method public q()I
    .locals 1

    const v0, 0x7f100293

    return v0
.end method

.method public r(IZ)V
    .locals 3

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lcom/emsportal/base/BaseListFragment;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/c/d;->d:Lcom/emsportal/model/ObjTab;

    invoke-virtual {v0}, Lcom/emsportal/model/ObjTab;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/m/c/c;

    invoke-direct {v1, p0}, Lc/b/m/c/c;-><init>(Lc/b/m/c/d;)V

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v2, p2, v1}, Lc/b/s/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public s()Lcom/emsportal/base/BaseAdapter;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/m/c/d;->c:Ljava/util/ArrayList;

    new-instance v1, Lc/b/m/b/l;

    invoke-direct {v1, v0}, Lc/b/m/b/l;-><init>(Ljava/util/ArrayList;)V

    return-object v1
.end method

.method public t()Landroidx/recyclerview/widget/RecyclerView$m;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "OBJ_TAB"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjTab;

    iput-object v0, p0, Lc/b/m/c/d;->d:Lcom/emsportal/model/ObjTab;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
