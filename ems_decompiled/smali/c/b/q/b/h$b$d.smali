.class public Lc/b/q/b/h$b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/h$b;-><init>(Lc/b/q/b/h;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/q/b/h$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/h$b;Lc/b/q/b/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/h$b$d;->c:Lc/b/q/b/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/q/b/h$b$d;->c:Lc/b/q/b/h$b;

    iget-object v0, p1, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 1
    sget-object v1, Lc/b/q/b/h;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/e;

    invoke-virtual {p1}, Lc/b/q/d/e;->G()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lc/b/q/d/e;->H(Z)V

    invoke-virtual {p1}, Lc/b/q/d/e;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc/b/q/b/c;

    invoke-virtual {p1}, Lc/b/q/d/e;->v()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/b/q/b/c;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lc/b/q/b/h$b$d;->c:Lc/b/q/b/h$b;

    .line 3
    iget-object p1, p1, Lc/b/q/b/h$b;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lc/b/q/b/h$b$d;->c:Lc/b/q/b/h$b;

    .line 5
    iget-object p1, p1, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    const v0, 0x7f1000b8

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lc/b/q/d/e;->v()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc/b/q/b/c;

    invoke-direct {p1, v0}, Lc/b/q/b/c;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lc/b/q/b/h$b$d;->c:Lc/b/q/b/h$b;

    .line 7
    iget-object v0, v0, Lc/b/q/b/h$b;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lc/b/q/b/h$b$d;->c:Lc/b/q/b/h$b;

    .line 9
    iget-object p1, p1, Lc/b/q/b/h$b;->d:Landroid/widget/TextView;

    const v0, 0x7f100198

    .line 10
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
