.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/comm/PXRCloseChat;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;

    iget-object v1, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;

    iget-object v2, v2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/comm/PXRCloseChat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/PXRCloseChat;->request()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/comm/PXRMissedVisitor;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;

    iget-object v1, v1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/livechat/android/comm/PXRMissedVisitor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/PXRMissedVisitor;->request()V

    :goto_0
    return-void
.end method
