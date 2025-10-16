.class public Lc/b/o/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/o/s;


# direct methods
.method public constructor <init>(Lc/b/o/s;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/i;->a:Lc/b/o/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/o/i;->a:Lc/b/o/s;

    .line 3
    iget-object v0, v0, Lc/b/o/s;->L:Lc/b/m/b/q;

    .line 4
    const-class v1, Lc/b/m/d/u;

    invoke-virtual {p1, v1}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lc/b/o/i;->a:Lc/b/o/s;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    .line 7
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/o/i;->a:Lc/b/o/s;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
