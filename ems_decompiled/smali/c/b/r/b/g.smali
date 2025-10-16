.class public Lc/b/r/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/r/c/e;

.field public final synthetic b:Lc/b/r/b/f$a;


# direct methods
.method public constructor <init>(Lc/b/r/b/f$a;Lc/b/r/c/e;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/b/g;->b:Lc/b/r/b/f$a;

    iput-object p2, p0, Lc/b/r/b/g;->a:Lc/b/r/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lc/b/t/a;->e:Lorg/json/JSONObject;

    const-string v1, "description"

    const-string v2, ""

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/r/b/g;->a:Lc/b/r/c/e;

    .line 3
    iput-object v0, v1, Lc/b/r/c/e;->z:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lc/b/r/b/g;->b:Lc/b/r/b/f$a;

    iget-object v0, v0, Lc/b/r/b/f$a;->m:Lc/b/r/b/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object v0, p0, Lc/b/r/b/g;->b:Lc/b/r/b/f$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/r/b/g;->b:Lc/b/r/b/f$a;

    iget-object p1, p1, Lc/b/r/b/f$a;->m:Lc/b/r/b/f;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/r/b/g;->b:Lc/b/r/b/f$a;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
