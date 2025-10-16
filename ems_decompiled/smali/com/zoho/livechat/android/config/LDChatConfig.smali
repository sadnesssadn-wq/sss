.class public Lcom/zoho/livechat/android/config/LDChatConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addVisitor:Lcom/zoho/livechat/android/comm/PXRAddVisitor;

.field private static addviews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static chatObject:Lcom/zoho/livechat/android/VisitorChat;

.field private static closeChat:Lcom/zoho/livechat/android/comm/PXRCloseChat;

.field private static fileMetaData:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

.field public static isStartChat:Ljava/lang/Boolean;

.field private static joinProActive:Lcom/zoho/livechat/android/comm/JoinProActive;

.field private static missedVisitor:Lcom/zoho/livechat/android/comm/PXRMissedVisitor;

.field private static operationCallback:Lcom/zoho/livechat/android/operation/OperationCallback;

.field private static pexutil:Lcom/zoho/livechat/android/utils/LDPEXUtil;

.field private static sdk_opened:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->addviews:Ljava/util/HashMap;

    new-instance v0, Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-direct {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->pexutil:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    new-instance v0, Lcom/zoho/livechat/android/VisitorChat;

    invoke-direct {v0}, Lcom/zoho/livechat/android/VisitorChat;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->isStartChat:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/livechat/android/config/LDChatConfig;->sdk_opened:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addView(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->addviews:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static connectToWMS()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isSupportedVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isEmbedAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->pexutil:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->pexutil:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->pexutil:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->connectToWMS()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getAddVisitRequest()Lcom/zoho/livechat/android/comm/PXRAddVisitor;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->addVisitor:Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    return-object v0
.end method

.method public static getCloseChat()Lcom/zoho/livechat/android/comm/PXRCloseChat;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->closeChat:Lcom/zoho/livechat/android/comm/PXRCloseChat;

    return-object v0
.end method

.method public static getFileMetaData()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->fileMetaData:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    return-object v0
.end method

.method public static getJoinProActive()Lcom/zoho/livechat/android/comm/JoinProActive;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->joinProActive:Lcom/zoho/livechat/android/comm/JoinProActive;

    return-object v0
.end method

.method public static getMissedVisitor()Lcom/zoho/livechat/android/comm/PXRMissedVisitor;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->missedVisitor:Lcom/zoho/livechat/android/comm/PXRMissedVisitor;

    return-object v0
.end method

.method public static getOperationCallback()Lcom/zoho/livechat/android/operation/OperationCallback;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->operationCallback:Lcom/zoho/livechat/android/operation/OperationCallback;

    return-object v0
.end method

.method public static getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->pexutil:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    return-object v0
.end method

.method public static getServerTime()Ljava/lang/Long;
    .locals 5

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stime"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static getView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->addviews:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static isSdkOpened()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/config/LDChatConfig;->sdk_opened:Z

    return v0
.end method

.method public static removeView(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->addviews:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setAddVisitRequest(Lcom/zoho/livechat/android/comm/PXRAddVisitor;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/config/LDChatConfig;->addVisitor:Lcom/zoho/livechat/android/comm/PXRAddVisitor;

    return-void
.end method

.method public static setCloseChat(Lcom/zoho/livechat/android/comm/PXRCloseChat;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/config/LDChatConfig;->closeChat:Lcom/zoho/livechat/android/comm/PXRCloseChat;

    return-void
.end method

.method public static setFileMetaData(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/config/LDChatConfig;->fileMetaData:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    return-void
.end method

.method public static setJoinProActive(Lcom/zoho/livechat/android/comm/JoinProActive;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/config/LDChatConfig;->joinProActive:Lcom/zoho/livechat/android/comm/JoinProActive;

    return-void
.end method

.method public static setMissedVisitor(Lcom/zoho/livechat/android/comm/PXRMissedVisitor;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/config/LDChatConfig;->missedVisitor:Lcom/zoho/livechat/android/comm/PXRMissedVisitor;

    return-void
.end method

.method public static setOperationCallback(Lcom/zoho/livechat/android/operation/OperationCallback;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/config/LDChatConfig;->operationCallback:Lcom/zoho/livechat/android/operation/OperationCallback;

    return-void
.end method

.method public static setSDKOpenStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/config/LDChatConfig;->sdk_opened:Z

    return-void
.end method

.method public static setUnsent()V
    .locals 9

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "STATUS"

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    const-string v3, "STATUS<=? and ( TYPE=? or TYPE=? or TYPE=?)"

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v7}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    invoke-virtual {v1, v2, v0, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    const-string v2, "refreshchatlist"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
