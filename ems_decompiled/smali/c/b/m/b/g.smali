.class public Lc/b/m/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/m/d/f;

.field public final synthetic b:Lc/b/m/b/e$b;


# direct methods
.method public constructor <init>(Lc/b/m/b/e$b;Lc/b/m/d/f;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/b/g;->b:Lc/b/m/b/e$b;

    iput-object p2, p0, Lc/b/m/b/g;->a:Lc/b/m/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/b/g;->a:Lc/b/m/d/f;

    const-string v1, "Ch\u1edd l\u1ea5y"

    invoke-virtual {v0, v1}, Lc/b/m/d/f;->K(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/m/b/g;->b:Lc/b/m/b/e$b;

    iget-object v0, v0, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object v0, p0, Lc/b/m/b/g;->b:Lc/b/m/b/e$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/m/b/g;->b:Lc/b/m/b/e$b;

    iget-object p1, p1, Lc/b/m/b/e$b;->o:Lc/b/m/b/e;

    .line 3
    iget-object p1, p1, Lc/b/m/b/e;->a:Lc/b/m/b/e$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lc/b/m/b/e$a;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/b/g;->b:Lc/b/m/b/e$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
