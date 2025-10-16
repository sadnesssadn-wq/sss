.class public Lcom/zoho/livechat/android/utils/LDPEXUtil$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleMissedChat(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$8;->this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-interface {v0, v1}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleVisitorMissed(Lcom/zoho/livechat/android/VisitorChat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
