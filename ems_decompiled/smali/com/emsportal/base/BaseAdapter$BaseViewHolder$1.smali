.class public Lcom/emsportal/base/BaseAdapter$BaseViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/base/BaseAdapter$BaseViewHolder;-><init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

.field public final synthetic val$this$0:Lcom/emsportal/base/BaseAdapter;


# direct methods
.method public constructor <init>(Lcom/emsportal/base/BaseAdapter$BaseViewHolder;Lcom/emsportal/base/BaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/base/BaseAdapter$BaseViewHolder$1;->this$1:Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    iput-object p2, p0, Lcom/emsportal/base/BaseAdapter$BaseViewHolder$1;->val$this$0:Lcom/emsportal/base/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/emsportal/base/BaseAdapter$BaseViewHolder$1;->this$1:Lcom/emsportal/base/BaseAdapter$BaseViewHolder;

    iget-object v0, p1, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/emsportal/base/BaseAdapter;

    iget-object v0, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;->k(I)V

    :cond_0
    return-void
.end method
