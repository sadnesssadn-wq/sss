.class public abstract Lcom/emsportal/base/BaseAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emsportal/base/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseViewHolder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/emsportal/base/BaseAdapter;


# direct methods
.method public constructor <init>(Lcom/emsportal/base/BaseAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/emsportal/base/BaseAdapter$BaseViewHolder;->this$0:Lcom/emsportal/base/BaseAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/emsportal/base/BaseAdapter$BaseViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/emsportal/base/BaseAdapter$BaseViewHolder$1;-><init>(Lcom/emsportal/base/BaseAdapter$BaseViewHolder;Lcom/emsportal/base/BaseAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;I)V
.end method
