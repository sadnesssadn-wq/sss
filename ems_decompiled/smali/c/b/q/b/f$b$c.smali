.class public Lc/b/q/b/f$b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/f$b;-><init>(Lc/b/q/b/f;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/q/b/f$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/f$b;Lc/b/q/b/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/f$b$c;->c:Lc/b/q/b/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lc/b/q/b/f$b$c;->c:Lc/b/q/b/f$b;

    iget-object v0, p1, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 1
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/d;

    iget-object v0, p0, Lc/b/q/b/f$b$c;->c:Lc/b/q/b/f$b;

    iget-object v0, v0, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 3
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/b/q/b/f$b$c;->c:Lc/b/q/b/f$b;

    iget-object p1, p1, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
