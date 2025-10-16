.class public Lcom/emsportal/activity/SearchPlaceActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic g:I


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Lc/b/i/f;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/Place;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/emsportal/activity/SearchPlaceActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b004e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-virtual {p0}, Lb/b/k/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f08004a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    const v2, 0x7f100364

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    new-instance v0, Lcom/emsportal/activity/SearchPlaceActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/activity/SearchPlaceActivity$a;-><init>(Lcom/emsportal/activity/SearchPlaceActivity;)V

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iput-object p0, p0, Lcom/emsportal/activity/SearchPlaceActivity;->f:Lcom/emsportal/activity/SearchPlaceActivity;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity;->e:Ljava/util/List;

    new-instance v1, Lc/b/i/f;

    invoke-direct {v1, v0}, Lc/b/i/f;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/emsportal/activity/SearchPlaceActivity;->d:Lc/b/i/f;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/emsportal/activity/SearchPlaceActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/emsportal/activity/SearchPlaceActivity;->d:Lc/b/i/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity;->d:Lc/b/i/f;

    new-instance v1, Lc/b/h/k;

    invoke-direct {v1, p0}, Lc/b/h/k;-><init>(Lcom/emsportal/activity/SearchPlaceActivity;)V

    .line 2
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/activity/SearchPlaceActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
