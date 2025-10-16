.class public Lc/b/o/y;
.super Lcom/emsportal/base/BaseFragment;
.source ""

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;
.implements Lc/b/x/c$a;


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/r;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lc/b/i/e;

.field public e:Landroidx/appcompat/widget/Toolbar;

.field public f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public g:Landroidx/recyclerview/widget/RecyclerView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Lc/b/x/c;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/b/o/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/b/o/y;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/b/o/y;->k:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    const v0, 0x7f0b006f

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lc/b/o/y;->k:I

    iget-object v0, p0, Lc/b/o/y;->j:Lc/b/x/c;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lc/b/x/c;->i:Z

    .line 2
    iget-object v0, p0, Lc/b/o/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lc/b/o/y;->d:Lc/b/i/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget v0, p0, Lc/b/o/y;->k:I

    invoke-virtual {p0, v0, v1}, Lc/b/o/y;->o(IZ)V

    return-void
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lc/b/o/y;->h:Landroid/widget/TextView;

    const v1, 0x7f1003a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Lc/b/x/c;

    invoke-direct {v0, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v0, p0, Lc/b/o/y;->j:Lc/b/x/c;

    iget-object v0, p0, Lc/b/o/y;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/b/o/y;->c:Ljava/util/ArrayList;

    new-instance v2, Lc/b/i/e;

    invoke-direct {v2, v1}, Lc/b/i/e;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lc/b/o/y;->d:Lc/b/i/e;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lc/b/o/y;->d:Lc/b/i/e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v1, p0, Lc/b/o/y;->d:Lc/b/i/e;

    .line 2
    iput-object p0, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 3
    iget-object v1, p0, Lc/b/o/y;->j:Lc/b/x/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    .line 4
    iget-object v0, p0, Lc/b/o/y;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lc/b/o/y;->o(IZ)V

    return-void
.end method

.method public k(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lc/b/o/y;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/r;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Lc/b/m/d/r;->r(Ljava/lang/String;)V

    invoke-virtual {p1}, Lc/b/m/d/r;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lc/b/m/d/r;->b()Ljava/lang/String;

    move-result-object v1

    .line 2
    new-instance v4, Lc/b/o/z;

    invoke-direct {v4, p0}, Lc/b/o/z;-><init>(Lc/b/o/y;)V

    .line 3
    sget v5, Lc/b/s/a;->d:I

    const-string v5, "is_viewed"

    const-string v6, "_id"

    invoke-static {v5, v0, v6, v1}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "http://ws.ems.com.vn/api/v1/notifications/update"

    invoke-static {v5, v1, v3, v4}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lc/b/m/d/r;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/b/m/d/r;->n()Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v12, Lc/b/o/w;

    invoke-direct {v12, p0, v8}, Lc/b/o/w;-><init>(Lc/b/o/y;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static/range {v4 .. v12}, Lc/b/s/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lc/b/m/d/r;->p()Ljava/lang/String;

    move-result-object v1

    const-string v4, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lc/b/m/d/r;->p()Ljava/lang/String;

    move-result-object v1

    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lc/b/m/d/r;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "OBJ_NOTIFICATION"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v1, Lcom/emsportal/activity/DetailPromotionActivity;

    invoke-static {p1, v1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lc/b/m/d/r;->h()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Lc/b/o/x;

    invoke-direct {v1, p0}, Lc/b/o/x;-><init>(Lc/b/o/y;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v3, v1}, Lc/b/s/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f080215

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/b/o/y;->g:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f08040a

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lc/b/o/y;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const p1, 0x7f080434

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lc/b/o/y;->e:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0804d5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/y;->h:Landroid/widget/TextView;

    const p1, 0x7f08049a

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/y;->i:Landroid/widget/TextView;

    return-void
.end method

.method public m(I)V
    .locals 1

    iput p1, p0, Lc/b/o/y;->k:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/b/o/y;->o(IZ)V

    return-void
.end method

.method public final o(IZ)V
    .locals 4

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 1
    iget-object v1, p0, Lc/b/o/y;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/o/y$a;

    invoke-direct {v1, p0, p1}, Lc/b/o/y$a;-><init>(Lc/b/o/y;I)V

    .line 3
    sget p1, Lc/b/s/a;->d:I

    const-string p1, "limit"

    const-string v2, "10"

    const-string v3, "page"

    invoke-static {p1, v2, v3, v0}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "http://ws.ems.com.vn/api/v1/notifications/list"

    invoke-static {v0, p1, p2, v1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
