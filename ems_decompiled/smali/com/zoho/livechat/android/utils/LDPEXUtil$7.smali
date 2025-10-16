.class public Lcom/zoho/livechat/android/utils/LDPEXUtil$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleLibraryProperties(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

.field public final synthetic val$embedprops:Ljava/util/Hashtable;

.field public final synthetic val$embedstatus:Z


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;Ljava/util/Hashtable;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;->this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    iput-object p2, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;->val$embedprops:Ljava/util/Hashtable;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;->val$embedstatus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getOnInitCompleteListener()Lcom/zoho/commons/OnInitCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getOnInitCompleteListener()Lcom/zoho/commons/OnInitCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/commons/OnInitCompleteListener;->onInitComplete()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->setOnInitCompleteListener(Lcom/zoho/commons/OnInitCompleteListener;)V

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;

    move-result-object v0

    const-string v1, "libraryproperties"

    iget-object v2, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;->val$embedprops:Ljava/util/Hashtable;

    invoke-interface {v0, v1, v2}, Lcom/zoho/livechat/android/operation/OperationCallback;->handle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$7;->val$embedstatus:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleOperatorsOffline()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleOperatorsOnline()V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->refreshChatBubble()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
