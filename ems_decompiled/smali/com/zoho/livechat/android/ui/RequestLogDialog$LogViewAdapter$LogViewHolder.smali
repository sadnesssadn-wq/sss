.class public Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;

.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;->this$1:Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;->textView:Landroid/widget/TextView;

    return-void
.end method
