.class public Lc/b/q/b/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/q/d/e;

.field public final synthetic b:Lc/b/q/b/h$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/h$b;Lc/b/q/d/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/i;->b:Lc/b/q/b/h$b;

    iput-object p2, p0, Lc/b/q/b/i;->a:Lc/b/q/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lc/b/t/a;->e:Lorg/json/JSONObject;

    const-string v1, "status_name"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/q/b/i;->a:Lc/b/q/d/e;

    invoke-virtual {v1, v0}, Lc/b/q/d/e;->J(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/q/b/i;->a:Lc/b/q/d/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lc/b/q/d/e;->I(I)V

    iget-object v0, p0, Lc/b/q/b/i;->b:Lc/b/q/b/h$b;

    iget-object v0, v0, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object v0, p0, Lc/b/q/b/i;->b:Lc/b/q/b/h$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/q/b/i;->b:Lc/b/q/b/h$b;

    iget-object p1, p1, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 5
    iget-object p1, p1, Lc/b/q/b/h;->a:Lc/b/q/b/h$a;

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lc/b/q/c/a;

    .line 7
    iget-object v0, p1, Lc/b/q/c/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lc/b/q/c/a;->c:Lc/b/q/b/h;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lc/b/q/c/a;->u(IZ)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/q/b/i;->b:Lc/b/q/b/h$b;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
