.class public Lc/b/p/b/d$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/p/b/d$b;-><init>(Lc/b/p/b/d;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lc/b/p/b/d$b;


# direct methods
.method public constructor <init>(Lc/b/p/b/d$b;Lc/b/p/b/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/d$b$a;->d:Lc/b/p/b/d$b;

    iput-object p3, p0, Lc/b/p/b/d$b$a;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/b/p/b/d$b$a;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lc/b/p/b/d$b$a;->d:Lc/b/p/b/d$b;

    iget-object v0, p1, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 1
    sget-object v1, Lc/b/p/b/d;->b:Ljava/util/List;

    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/b;

    invoke-virtual {p1}, Lc/b/p/e/b;->p()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lc/b/p/b/d;->b:Ljava/util/List;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/b/p/b/d$b$a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10025c

    new-instance v3, Lc/b/p/b/d$b$a$a;

    invoke-direct {v3, p0, p1}, Lc/b/p/b/d$b$a$a;-><init>(Lc/b/p/b/d$b$a;Lc/b/p/e/b;)V

    invoke-static {v1, v2, v3}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    .line 5
    :cond_1
    sget-object v1, Lc/b/p/b/d;->c:Ljava/util/List;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/b/p/b/d$b$a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100262

    new-instance v2, Lc/b/p/b/d$b$a$b;

    invoke-direct {v2, p0, p1}, Lc/b/p/b/d$b$a$b;-><init>(Lc/b/p/b/d$b$a;Lc/b/p/e/b;)V

    invoke-static {v0, v1, v2}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    :cond_2
    return-void
.end method
