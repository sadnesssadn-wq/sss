.class public Lc/d/a/c/x/h;
.super Landroidx/recyclerview/widget/RecyclerView$l;
.source ""


# instance fields
.field public final a:Ljava/util/Calendar;

.field public final b:Ljava/util/Calendar;

.field public final synthetic c:Lc/d/a/c/x/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/h;->c:Lc/d/a/c/x/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$l;-><init>()V

    invoke-static {}, Lc/d/a/c/x/z;->e()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/x/h;->a:Ljava/util/Calendar;

    invoke-static {}, Lc/d/a/c/x/z;->e()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/x/h;->b:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$x;)V
    .locals 0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    instance-of p1, p1, Lc/d/a/c/x/b0;

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    check-cast p1, Lc/d/a/c/x/b0;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p1, p0, Lc/d/a/c/x/h;->c:Lc/d/a/c/x/g;

    .line 1
    iget-object p1, p1, Lc/d/a/c/x/g;->e:Lc/d/a/c/x/d;

    .line 2
    invoke-interface {p1}, Lc/d/a/c/x/d;->g()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lb/i/l/b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
