.class public Lc/d/a/c/x/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lc/d/a/c/x/u;

.field public final synthetic d:Lc/d/a/c/x/g;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/g;Lc/d/a/c/x/u;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/m;->d:Lc/d/a/c/x/g;

    iput-object p2, p0, Lc/d/a/c/x/m;->c:Lc/d/a/c/x/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/d/a/c/x/m;->d:Lc/d/a/c/x/g;

    invoke-virtual {p1}, Lc/d/a/c/x/g;->e()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lc/d/a/c/x/m;->d:Lc/d/a/c/x/g;

    iget-object v1, p0, Lc/d/a/c/x/m;->c:Lc/d/a/c/x/u;

    invoke-virtual {v1, p1}, Lc/d/a/c/x/u;->a(I)Lc/d/a/c/x/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/c/x/g;->j(Lc/d/a/c/x/r;)V

    :cond_0
    return-void
.end method
