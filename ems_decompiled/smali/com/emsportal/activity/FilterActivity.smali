.class public Lcom/emsportal/activity/FilterActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Lc/b/i/c;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/m;

    invoke-virtual {p1}, Lc/b/m/d/m;->p()Ljava/lang/String;

    move-result-object p1

    .line 1
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v0

    iget-object v0, v0, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v1, "PREF_SETTINGS_FILTER"

    invoke-virtual {v0, v1, p1}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x144

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0033

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 8

    iget-object v0, p0, Lcom/emsportal/activity/FilterActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    new-instance v2, Lc/b/m/d/m;

    const-string v3, "07 ng\u00e0y"

    const-string v4, "7"

    invoke-direct {v2, v3, v4}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lc/b/m/d/m;

    const-string v4, "14 ng\u00e0y"

    const-string v5, "14"

    invoke-direct {v3, v4, v5}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lc/b/m/d/m;

    const-string v5, "30 ng\u00e0y"

    const-string v6, "30"

    invoke-direct {v4, v5, v6}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lc/b/m/d/m;

    const-string v6, "90 ng\u00e0y"

    const-string v7, "90"

    invoke-direct {v5, v6, v7}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lb/u/a;->A()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/m/d/m;

    invoke-virtual {v3}, Lc/b/m/d/m;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lc/b/m/d/m;->B(Z)V

    :cond_1
    new-instance v1, Lc/b/i/c;

    iget-object v2, p0, Lcom/emsportal/activity/FilterActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lc/b/i/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/activity/FilterActivity;->d:Lc/b/i/c;

    .line 2
    iput-object p0, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/activity/FilterActivity;->d:Lc/b/i/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f10039a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/activity/FilterActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
