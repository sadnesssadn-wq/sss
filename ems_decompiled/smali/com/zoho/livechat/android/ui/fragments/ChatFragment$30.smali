.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object p2

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/zoho/livechat/android/constants/SystemUtil;->istakescreenshot:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeAllScreenshotWindows()V

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getMessageHandler()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->getExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$30;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
