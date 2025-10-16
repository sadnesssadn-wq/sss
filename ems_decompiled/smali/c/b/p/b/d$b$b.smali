.class public Lc/b/p/b/d$b$b;
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

    iput-object p1, p0, Lc/b/p/b/d$b$b;->c:Lc/b/p/b/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lc/b/p/b/d$b$b;->c:Lc/b/p/b/d$b;

    iget-object v0, p1, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 1
    iget-object v1, v0, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/b;

    iget-object v0, p0, Lc/b/p/b/d$b$b;->c:Lc/b/p/b/d$b;

    iget-object v0, v0, Lc/b/p/b/d$b;->j:Lc/b/p/b/d;

    .line 4
    iget-object v0, v0, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    .line 5
    check-cast v0, Lc/b/p/d/b;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;

    invoke-static {p1, v0, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
