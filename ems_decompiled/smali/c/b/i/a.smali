.class public Lc/b/i/a;
.super Lcom/emsportal/base/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/i/a$a;,
        Lc/b/i/a$b;
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjActionHome;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/emsportal/base/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/b/i/a;->a:I

    iput-object p1, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lc/b/i/a;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const v0, 0x7f0b0080

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0074

    :goto_0
    return v0
.end method

.method public b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 2

    iget v0, p0, Lc/b/i/a;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    new-instance v0, Lc/b/i/a$a;

    invoke-direct {v0, p0, p1}, Lc/b/i/a$a;-><init>(Lc/b/i/a;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/b/i/a$b;

    invoke-direct {v0, p0, p1}, Lc/b/i/a$b;-><init>(Lc/b/i/a;Landroid/view/View;)V

    :goto_0
    return-object v0
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 0

    iput p2, p0, Lc/b/i/a;->a:I

    invoke-super {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter;->c(Landroid/view/ViewGroup;I)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjActionHome;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjActionHome;->a()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    .line 1
    iput p2, p0, Lc/b/i/a;->a:I

    invoke-super {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter;->c(Landroid/view/ViewGroup;I)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method
