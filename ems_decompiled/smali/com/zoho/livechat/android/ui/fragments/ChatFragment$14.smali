.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onRequestLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$logs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;->val$logs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;->val$logs:Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lcom/zoho/livechat/android/utils/RequestLogUtil;->sendLog(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$14;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$900(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_1

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
