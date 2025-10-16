.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPicked(Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;->access$000(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;)Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;->doSendMessage(Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_0
    return-void
.end method
