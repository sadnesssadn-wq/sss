.class public Lcom/zoho/livechat/android/utils/LDPEXUtil$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleEndChatByVisitor()V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$5;->this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-interface {v0, v1}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleChatComplete(Lcom/zoho/livechat/android/VisitorChat;)V

    return-void
.end method
