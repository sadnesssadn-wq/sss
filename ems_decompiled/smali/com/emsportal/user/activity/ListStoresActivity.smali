.class public Lcom/emsportal/user/activity/ListStoresActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lc/b/x/c$a;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/widget/EditText;

.field public e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public g:Landroid/view/ViewGroup;

.field public h:Lc/b/v/b/b;

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/h0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lc/b/x/c;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/emsportal/user/activity/ListStoresActivity;->w(Z)V

    return-void
.end method

.method public k(I)V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->k:Ljava/lang/String;

    const-string v1, "KEY_STORE"

    if-eqz v0, :cond_0

    const-string v2, "FROM_CREATE_INVENTORY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/h0;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x144

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/h0;

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3ff

    const-string v3, "ACTION"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public m(I)V
    .locals 2

    iput p1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/emsportal/user/activity/ListStoresActivity;->v(ILjava/lang/String;Z)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0021

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x16

    if-ne p1, p3, :cond_0

    const/16 p1, 0xb

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/emsportal/user/activity/ListStoresActivity;->w(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-ne p1, v0, :cond_0

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x7b

    const-string v1, "ACTION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x16

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Lc/b/x/c;

    invoke-direct {v1, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->j:Lc/b/x/c;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lc/b/v/b/b;

    iget-object v2, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lc/b/v/b/b;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->h:Lc/b/v/b/b;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->h:Lc/b/v/b/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->j:Lc/b/x/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->h:Lc/b/v/b/b;

    .line 2
    iput-object p0, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    const v0, 0x7f1003b9

    .line 3
    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    iget v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/emsportal/user/activity/ListStoresActivity;->v(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lc/b/v/a/a;

    invoke-direct {v1, p0}, Lc/b/v/a/a;-><init>(Lcom/emsportal/user/activity/ListStoresActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public r()V
    .locals 2

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->g:Landroid/view/ViewGroup;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f08040a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "FROM_CREATE_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->g:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public final v(ILjava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/emsportal/user/activity/ListStoresActivity$a;

    invoke-direct {v0, p0, p1}, Lcom/emsportal/user/activity/ListStoresActivity$a;-><init>(Lcom/emsportal/user/activity/ListStoresActivity;I)V

    invoke-static {p1, p2, p3, v0}, Lc/b/s/a;->n(ILjava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final w(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    iput-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->h:Lc/b/v/b/b;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    xor-int/lit8 v1, p1, 0x1

    .line 1
    iget-object v2, p0, Lcom/emsportal/user/activity/ListStoresActivity;->f:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 2
    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->j:Lc/b/x/c;

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Lc/b/x/c;->i:Z

    .line 4
    iput v0, v1, Lc/b/x/c;->e:I

    .line 5
    iget v0, p0, Lcom/emsportal/user/activity/ListStoresActivity;->l:I

    iget-object v1, p0, Lcom/emsportal/user/activity/ListStoresActivity;->m:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/emsportal/user/activity/ListStoresActivity;->v(ILjava/lang/String;Z)V

    return-void
.end method
