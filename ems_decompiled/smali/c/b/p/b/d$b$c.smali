.class public Lc/b/p/b/d$b$c;
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
.field public final synthetic c:Lc/b/p/b/d$b;


# direct methods
.method public constructor <init>(Lc/b/p/b/d$b;Lc/b/p/b/d;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/b/d$b$c;->c:Lc/b/p/b/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/b/p/b/d$b$c;->c:Lc/b/p/b/d$b;

    iget-object v0, p1, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 1
    iget-object v1, v0, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/b;

    iget-object v0, p0, Lc/b/p/b/d$b$c;->c:Lc/b/p/b/d$b;

    iget-object v0, v0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 4
    iget-object v0, v0, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    .line 5
    check-cast v0, Lc/b/p/d/b;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/b/p/e/b;->c()Lc/b/p/e/d;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100296

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 7
    sget-object v1, Lc/b/l/b0;->j:Ljava/lang/String;

    .line 8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_DATA_DRIVER"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lc/b/l/b0;

    invoke-direct {p1}, Lc/b/l/b0;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    sget-object v1, Lc/b/l/b0;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
