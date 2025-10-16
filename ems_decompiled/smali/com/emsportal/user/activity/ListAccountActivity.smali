.class public Lcom/emsportal/user/activity/ListAccountActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/v/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/b/v/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/user/activity/ListAccountActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/v/c/a;

    invoke-virtual {v1}, Lc/b/v/c/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lc/b/v/c/a;->k(Z)V

    :cond_1
    iget-object v0, p0, Lcom/emsportal/user/activity/ListAccountActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/v/c/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc/b/v/c/a;->k(Z)V

    invoke-virtual {p1}, Lc/b/v/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->f0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListAccountActivity;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lb/u/a;->Z(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lb/u/a;->g0(Lc/b/v/c/a;)V

    const/16 p1, 0xd6

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lc/b/k/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lb/u/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/v/a/m;

    invoke-direct {v1, p0}, Lc/b/v/a/m;-><init>(Lcom/emsportal/user/activity/ListAccountActivity;)V

    const-string v2, ""

    invoke-static {p1, v2, v0, v1}, Lc/b/s/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/t/b$d;)V

    .line 2
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0039

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lb/b/k/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080034

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lcom/emsportal/user/activity/LogInActivity;

    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/user/activity/ListAccountActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    invoke-static {}, Lb/u/a;->z()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/user/activity/ListAccountActivity;->d:Ljava/util/ArrayList;

    new-instance v2, Lc/b/v/b/a;

    invoke-direct {v2, v1}, Lc/b/v/b/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/emsportal/user/activity/ListAccountActivity;->e:Lc/b/v/b/a;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/user/activity/ListAccountActivity;->e:Lc/b/v/b/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/ListAccountActivity;->e:Lc/b/v/b/a;

    .line 2
    iput-object p0, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f1003b5

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/user/activity/ListAccountActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
