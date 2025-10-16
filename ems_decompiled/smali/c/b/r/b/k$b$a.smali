.class public Lc/b/r/b/k$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/r/b/k$b;-><init>(Lc/b/r/b/k;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/r/b/k$b;


# direct methods
.method public constructor <init>(Lc/b/r/b/k$b;Lc/b/r/b/k;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/b/k$b$a;->c:Lc/b/r/b/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/r/b/k$b$a;->c:Lc/b/r/b/k$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lc/b/r/b/k$b$a;->c:Lc/b/r/b/k$b;

    iget-object v0, v0, Lc/b/r/b/k$b;->g:Lc/b/r/b/k;

    .line 1
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/j;

    iget-object v0, p0, Lc/b/r/b/k$b$a;->c:Lc/b/r/b/k$b;

    iget-object v0, v0, Lc/b/r/b/k$b;->g:Lc/b/r/b/k;

    .line 3
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lc/b/r/b/k$b$a;->c:Lc/b/r/b/k$b;

    iget-object v0, v0, Lc/b/r/b/k$b;->g:Lc/b/r/b/k;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRemoved(I)V

    iget-object p1, p0, Lc/b/r/b/k$b$a;->c:Lc/b/r/b/k$b;

    iget-object p1, p1, Lc/b/r/b/k$b;->g:Lc/b/r/b/k;

    .line 5
    iget-object p1, p1, Lc/b/r/b/k;->a:Lc/b/r/b/k$a;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Lc/b/r/a/l;

    .line 7
    iget-object p1, p1, Lc/b/r/a/l;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 8
    iget-object v0, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->G:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->x()V

    :cond_1
    return-void
.end method
