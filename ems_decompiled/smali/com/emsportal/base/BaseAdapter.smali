.class public abstract Lcom/emsportal/base/BaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;,
        Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/emsportal/base/BaseAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public listDatas:Ljava/util/List;

.field public onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/emsportal/base/BaseAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/emsportal/base/BaseAdapter;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseAdapter;->b(Landroid/view/View;)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 1

    check-cast p1, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    .line 1
    iget-object v0, p0, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/emsportal/base/BaseAdapter;->c(Landroid/view/ViewGroup;I)Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method
