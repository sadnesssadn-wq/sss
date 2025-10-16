.class public Lc/b/m/c/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/m/c/h;


# direct methods
.method public constructor <init>(Lc/b/m/c/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/f;->a:Lc/b/m/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lc/b/m/c/f;->a:Lc/b/m/c/h;

    .line 3
    iget-object p1, p1, Lc/b/m/c/h;->e:Lc/b/m/b/k;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/m/c/f;->a:Lc/b/m/c/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/f;->a:Lc/b/m/c/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
