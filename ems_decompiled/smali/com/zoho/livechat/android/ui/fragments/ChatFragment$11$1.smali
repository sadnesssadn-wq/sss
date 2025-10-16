.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

.field public final synthetic val$emailid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;->val$emailid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance p1, Lcom/zoho/livechat/android/utils/SendTranscriptasMailUtil;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

    iget-object p2, p2, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$1;->val$emailid:Ljava/lang/String;

    invoke-direct {p1, p2, v0, v1}, Lcom/zoho/livechat/android/utils/SendTranscriptasMailUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
