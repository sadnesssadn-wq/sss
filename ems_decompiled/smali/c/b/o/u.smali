.class public Lc/b/o/u;
.super Landroidx/recyclerview/widget/GridLayoutManager$b;
.source ""


# instance fields
.field public final synthetic c:Landroidx/recyclerview/widget/GridLayoutManager;

.field public final synthetic d:Lc/b/o/t;


# direct methods
.method public constructor <init>(Lc/b/o/t;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/u;->d:Lc/b/o/t;

    iput-object p2, p0, Lc/b/o/u;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)I
    .locals 1

    iget-object v0, p0, Lc/b/o/u;->d:Lc/b/o/t;

    .line 1
    iget-object v0, v0, Lc/b/o/t;->n:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjActionHome;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjActionHome;->a()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lc/b/o/u;->c:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
