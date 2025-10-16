.class public Lc/b/p/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/p/b/d$b;


# direct methods
.method public constructor <init>(Lc/b/p/b/d$b;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/e;->a:Lc/b/p/b/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    iget-object v0, p0, Lc/b/p/b/e;->a:Lc/b/p/b/d$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/p/b/e;->a:Lc/b/p/b/d$b;

    iget-object p1, p1, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 3
    iget-object p1, p1, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    if-eqz p1, :cond_0

    .line 4
    check-cast p1, Lc/b/p/d/b;

    .line 5
    invoke-virtual {p1}, Lcom/emsportal/base/BaseListFragment;->h()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/p/b/e;->a:Lc/b/p/b/d$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
