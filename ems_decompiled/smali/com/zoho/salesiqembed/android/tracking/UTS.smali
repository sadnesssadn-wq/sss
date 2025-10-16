.class public Lcom/zoho/salesiqembed/android/tracking/UTS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;
    }
.end annotation


# static fields
.field private static final UTSINSTANCE:Lcom/zoho/salesiqembed/android/tracking/UTS;


# instance fields
.field private final conLock:Ljava/lang/Object;

.field private conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

.field private pex_conn_status:I

.field private sid:Ljava/lang/String;

.field private sockurl:Ljava/lang/String;

.field private ws:Lcom/zoho/wms/common/websocket/WebSocket;

.field private wshandler:Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;

.field private zldp:Ljava/lang/String;

.field private zldt:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-direct {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;-><init>()V

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTS;->UTSINSTANCE:Lcom/zoho/salesiqembed/android/tracking/UTS;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conLock:Ljava/lang/Object;

    new-instance v0, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;

    invoke-direct {v0, p0}, Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;-><init>(Lcom/zoho/salesiqembed/android/tracking/UTS;)V

    iput-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->wshandler:Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;

    return-void
.end method

.method public static synthetic access$002(Lcom/zoho/salesiqembed/android/tracking/UTS;I)I
    .locals 0

    iput p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    return p1
.end method

.method public static synthetic access$100(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;
    .locals 0

    iget-object p0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/zoho/salesiqembed/android/tracking/UTS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/zoho/salesiqembed/android/tracking/UTS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/zoho/salesiqembed/android/tracking/UTS;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/zoho/salesiqembed/android/tracking/UTS;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/zoho/salesiqembed/android/tracking/UTS;)Lcom/zoho/wms/common/websocket/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    return-object p0
.end method

.method private checkforzldtExpiry()V
    .locals 9

    const-string v0, "zldtexpiry"

    const-string v1, "zldt"

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "siq_session"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "zldp"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-interface {v2, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-interface {v2, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x5265c00

    cmp-long v3, v5, v7

    if-ltz v3, :cond_1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-object v4, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;
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

.method public static getInstance()Lcom/zoho/salesiqembed/android/tracking/UTS;
    .locals 1

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTS;->UTSINSTANCE:Lcom/zoho/salesiqembed/android/tracking/UTS;

    return-object v0
.end method

.method private getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "="

    invoke-static {v0, p1, v1}, Lc/a/a/a/a;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public hold()V
    .locals 1

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->hold()V

    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 3

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "?nocache="

    invoke-static {p1, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "executedtriggerid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&source_triggerid="

    invoke-static {p1, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "executedtriggerid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "x-appkey"

    invoke-direct {p0, v1, p2}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x-accesskey"

    invoke-direct {p0, p2, p3}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x-bundleid"

    invoke-direct {p0, p2, p4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x-os"

    const-string p3, "2"

    invoke-direct {p0, p2, p3}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p5, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sockurl:Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "utssid"

    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "utssid"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    :cond_6
    iget-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    if-eqz p2, :cond_7

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x-sid"

    iget-object p4, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    invoke-direct {p0, p2, p4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "recon"

    const-string p4, "true"

    invoke-direct {p0, p2, p4}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-direct {p0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->checkforzldtExpiry()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "zldt"

    invoke-interface {p2, p4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "handshakekey"

    invoke-interface {p2, p4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p4, "handshakekey"

    invoke-interface {p2, p4, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "handshakekey"

    invoke-direct {p0, p3, p2}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    iget-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    if-eqz p2, :cond_a

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_zldp"

    iget-object p3, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    iget-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_zldt"

    iget-object p3, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_b
    invoke-static {p1}, Lcom/zoho/wms/common/websocket/WebSocketFactory;->createSocket(Ljava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    iget-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->wshandler:Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;

    invoke-virtual {p1, p2}, Lcom/zoho/wms/common/websocket/WebSocket;->setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V

    iget-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    invoke-interface {p1}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onBeforeConnect()V

    iget-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {p1}, Lcom/zoho/wms/common/websocket/WebSocket;->connect()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public isHold()Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->isHold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reconnect()V
    .locals 4

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sockurl:Ljava/lang/String;

    iget-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x-sid"

    iget-object v2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recon"

    const-string v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->checkforzldtExpiry()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "zldt"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "handshakekey"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "handshakekey"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "handshakekey"

    invoke-direct {p0, v2, v1}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_zldp"

    iget-object v2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_zldt"

    iget-object v2, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketFactory;->createSocket(Ljava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    iget-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->wshandler:Lcom/zoho/salesiqembed/android/tracking/UTS$WSHandler;

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/websocket/WebSocket;->setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    invoke-interface {v0}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onBeforeConnect()V

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->connect()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->resume()V

    :cond_0
    return-void
.end method

.method public setHandler(Lcom/zoho/wms/common/pex/PEXConnectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    return-void
.end method

.method public shutDown()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->sid:Ljava/lang/String;

    iput-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldp:Ljava/lang/String;

    iput-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->zldt:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->close()V

    :cond_0
    return-void
.end method

.method public writeData(Ljava/util/Hashtable;)V
    .locals 2

    iget v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zoho/wms/common/websocket/WebSocket;->write(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTS;->pex_conn_status:I

    new-instance p1, Lcom/zoho/wms/common/pex/PEXException;

    const/16 v0, 0x65

    const-string v1, "No connection available"

    invoke-direct {p1, v0, v1}, Lcom/zoho/wms/common/pex/PEXException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
