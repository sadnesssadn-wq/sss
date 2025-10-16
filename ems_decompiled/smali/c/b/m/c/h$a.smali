.class public Lc/b/m/c/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/m/c/h;->p(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/m/c/h;


# direct methods
.method public constructor <init>(Lc/b/m/c/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    const-class v0, Lc/b/m/d/w;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 1
    iget-object v0, v0, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 3
    iget-object v0, v0, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 5
    iget-object p1, p1, Lc/b/m/c/h;->e:Lc/b/m/b/k;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 7
    iget-object v0, p1, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1, v0}, Lc/b/m/c/h;->q(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 10
    iget-object p1, p1, Lc/b/m/c/h;->f:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 12
    iget-object p1, p1, Lc/b/m/c/h;->h:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    .line 14
    iget-object p1, p1, Lc/b/m/c/h;->h:Landroid/widget/TextView;

    const/16 v0, 0x8

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/h$a;->a:Lc/b/m/c/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
