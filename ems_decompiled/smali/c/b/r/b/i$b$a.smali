.class public Lc/b/r/b/i$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/r/b/i$b;-><init>(Lc/b/r/b/i;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/b/r/b/i$b;


# direct methods
.method public constructor <init>(Lc/b/r/b/i$b;Lc/b/r/b/i;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/b/i$b$a;->c:Lc/b/r/b/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lc/b/r/b/i$b$a;->c:Lc/b/r/b/i$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lc/b/r/b/i$b$a;->c:Lc/b/r/b/i$b;

    iget-object v0, v0, Lc/b/r/b/i$b;->i:Lc/b/r/b/i;

    .line 1
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/f;

    iget-object v0, p0, Lc/b/r/b/i$b$a;->c:Lc/b/r/b/i$b;

    iget-object v0, v0, Lc/b/r/b/i$b;->i:Lc/b/r/b/i;

    .line 3
    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lc/b/r/b/i$b$a;->c:Lc/b/r/b/i$b;

    iget-object v0, v0, Lc/b/r/b/i$b;->i:Lc/b/r/b/i;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRemoved(I)V

    iget-object p1, p0, Lc/b/r/b/i$b$a;->c:Lc/b/r/b/i$b;

    iget-object p1, p1, Lc/b/r/b/i$b;->i:Lc/b/r/b/i;

    .line 5
    iget-object p1, p1, Lc/b/r/b/i;->a:Lc/b/r/b/i$a;

    if-eqz p1, :cond_0

    .line 6
    check-cast p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$b;

    .line 7
    iget-object v0, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 8
    sget v1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->c0:I

    invoke-virtual {v0}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->x()V

    .line 9
    iget-object v0, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 10
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->Q:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 12
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->F:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
