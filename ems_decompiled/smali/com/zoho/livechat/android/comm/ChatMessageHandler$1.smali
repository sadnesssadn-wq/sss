.class public Lcom/zoho/livechat/android/comm/ChatMessageHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/comm/ChatMessageHandler;->onMessage(ILjava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/comm/ChatMessageHandler;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/comm/ChatMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/ChatMessageHandler$1;->this$0:Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleEndChatByAgent()V

    return-void
.end method
