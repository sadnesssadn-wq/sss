.class public Lc/b/x/c;
.super Landroidx/recyclerview/widget/RecyclerView$q;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/x/c$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

.field public h:Landroidx/recyclerview/widget/GridLayoutManager;

.field public i:Z

.field public j:Lc/b/x/c$a;


# direct methods
.method public constructor <init>(Lc/b/x/c$a;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$q;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/x/c;->a:Z

    const/4 v0, 0x1

    iput v0, p0, Lc/b/x/c;->e:I

    iput-object p1, p0, Lc/b/x/c;->j:Lc/b/x/c$a;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$q;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-boolean p2, p0, Lc/b/x/c;->i:Z

    if-nez p2, :cond_a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    iput p2, p0, Lc/b/x/c;->c:I

    .line 1
    iget-object p2, p0, Lc/b/x/c;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lc/b/x/c;->b:I

    iget-object p1, p0, Lc/b/x/c;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lc/b/x/c;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lc/b/x/c;->b:I

    iget-object p1, p0, Lc/b/x/c;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lc/b/x/c;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_4

    .line 2
    iget p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->a:I

    if-ge v0, v1, :cond_3

    iget-object v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->b:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    aget-object v2, v1, v0

    .line 3
    iget-object v1, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->h:Z

    const/4 v3, -0x1

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v3

    move v3, v1

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v1

    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->g(IIZZZ)I

    move-result v1

    .line 5
    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_3
    aget p1, p1, p3

    iput p1, p0, Lc/b/x/c;->b:I

    iget-object p1, p0, Lc/b/x/c;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    :goto_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    move-result p1

    iput p1, p0, Lc/b/x/c;->d:I

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lc/b/x/c;->f:Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p1, p0, Lc/b/x/c;->h:Landroidx/recyclerview/widget/GridLayoutManager;

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p2

    instance-of p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    iput-object p1, p0, Lc/b/x/c;->g:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 7
    :cond_7
    :goto_3
    iget p1, p0, Lc/b/x/c;->c:I

    iget p2, p0, Lc/b/x/c;->d:I

    if-ne p1, p2, :cond_8

    iget-boolean v0, p0, Lc/b/x/c;->a:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget v0, p0, Lc/b/x/c;->b:I

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, -0x2

    const/4 v0, 0x1

    if-lt p1, p2, :cond_9

    const/4 p3, 0x1

    :cond_9
    iget-boolean p1, p0, Lc/b/x/c;->a:Z

    if-nez p1, :cond_a

    if-eqz p3, :cond_a

    .line 8
    iget p1, p0, Lc/b/x/c;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lc/b/x/c;->e:I

    iput-boolean v0, p0, Lc/b/x/c;->a:Z

    iget-object p2, p0, Lc/b/x/c;->j:Lc/b/x/c$a;

    invoke-interface {p2, p1}, Lc/b/x/c$a;->m(I)V

    :cond_a
    return-void
.end method
