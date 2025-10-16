.class public Lc/b/q/b/h$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/q/b/h$b;-><init>(Lc/b/q/b/h;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/q/b/h$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/h$b;Lc/b/q/b/h;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/h$b$b;->c:Lc/b/q/b/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/b/q/b/h$b$b;->c:Lc/b/q/b/h$b;

    iget-object v0, p1, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 1
    iget-object v1, v0, Lc/b/q/b/h;->a:Lc/b/q/b/h$a;

    if-eqz v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/e;

    iget-object v0, p0, Lc/b/q/b/h$b$b;->c:Lc/b/q/b/h$b;

    iget-object v0, v0, Lc/b/q/b/h$b;->i:Lc/b/q/b/h;

    .line 4
    iget-object v0, v0, Lc/b/q/b/h;->a:Lc/b/q/b/h$a;

    .line 5
    check-cast v0, Lc/b/q/c/a;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/b/q/d/e;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/b/q/d/e;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 7
    sget-object v1, Lc/b/l/b0;->j:Ljava/lang/String;

    .line 8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MODEL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lc/b/l/b0;

    invoke-direct {p1}, Lc/b/l/b0;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 9
    sget-object v1, Lc/b/l/b0;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f10029b

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void
.end method
