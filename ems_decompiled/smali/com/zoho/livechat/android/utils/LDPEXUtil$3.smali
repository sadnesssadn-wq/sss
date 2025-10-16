.class public Lcom/zoho/livechat/android/utils/LDPEXUtil$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleIPBlock()V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$3;->this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    return-void
.end method
