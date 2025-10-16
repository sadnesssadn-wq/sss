.class public Lcom/zoho/livechat/android/comm/LiveChatAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;,
        Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    }
.end annotation


# static fields
.field private static final BW:Ljava/lang/Long;

.field private static isforcedisconnect:Z

.field private static isreconnect:Z

.field private static messageHandler:Lcom/zoho/livechat/android/comm/ChatMessageHandler;

.field private static pex:Lcom/zoho/wms/common/pex/PEX;

.field private static rectime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static recvar:I

.field private static sid:Ljava/lang/String;

.field private static status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

.field private static timer:Ljava/util/Timer;

.field private static xa:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    invoke-direct {v0}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->messageHandler:Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    sput v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    const/4 v1, 0x0

    sput-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->sid:Ljava/lang/String;

    sput-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->xa:Ljava/lang/String;

    sput-boolean v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isreconnect:Z

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Long;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-wide/16 v2, 0x3a98

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-wide/32 v2, 0xdbba0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->rectime:Ljava/util/List;

    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->BW:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    return-object p0
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isreconnect:Z

    return v0
.end method

.method public static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->xa:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isreconnect:Z

    return p0
.end method

.method public static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public static synthetic access$202(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public static synthetic access$300()I
    .locals 1

    sget v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    return v0
.end method

.method public static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    return p0
.end method

.method public static synthetic access$308()I
    .locals 2

    sget v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    return v0
.end method

.method public static synthetic access$400()Lcom/zoho/livechat/android/comm/ChatMessageHandler;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->messageHandler:Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    return-object v0
.end method

.method public static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    return v0
.end method

.method public static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    return p0
.end method

.method public static synthetic access$600()Lcom/zoho/wms/common/pex/PEX;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    return-object v0
.end method

.method public static synthetic access$700()V
    .locals 0

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->startReconnect()V

    return-void
.end method

.method public static synthetic access$900()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->rectime:Ljava/util/List;

    return-object v0
.end method

.method public static clearSid()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->sid:Ljava/lang/String;

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->xa:Ljava/lang/String;

    const-string v0, "sid"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "xa"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "insid"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "pnskey"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static connect()V
    .locals 6

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/wms/common/pex/PEX;->getInstance()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    new-instance v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;

    invoke-direct {v1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$WMSPEXConnectionHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/pex/PEX;->setHandler(Lcom/zoho/wms/common/pex/PEXConnectionHandler;)V

    :cond_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isHold()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTING:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    sput-boolean v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    :cond_3
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->RECONNECT:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v3, :cond_5

    sput-boolean v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isreconnect:Z

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_4
    sput v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "enablelog"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v4, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v3, v4, :cond_8

    const-string v3, "annonid"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    sput-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sput-boolean v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isreconnect:Z

    sput-boolean v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pex.prd"

    const-string v4, "LD"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "pex.config"

    const-string v4, "15"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUserAgentDetails()Ljava/lang/String;

    move-result-object v4

    const-string v5, "X-Pex-Agent"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->BW:Ljava/lang/Long;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-pex-bw"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppkey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "x-appkey"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "insid"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInsID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    const-string v4, "pnskey"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    new-instance v0, Lcom/zoho/wms/common/pex/credentials/PEXAuthToken;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAccesskey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/credentials/PEXAuthToken;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/pex/credentials/PEXAuthToken;->setBundleId(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setUserAgent(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setUserName(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setDisplayName(Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/zoho/wms/common/pex/PEX;->setEventTimeout(I)V

    :try_start_0
    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getWmsServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/pconnect"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3}, Lcom/zoho/wms/common/pex/PEX;->init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Ljava/util/HashMap;)V

    const-string v0, "PEX | PCONNECT INIT"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method

.method public static disconnect()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->setNoReconnect()V

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->shutDown()V
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

.method public static getMessageHandler()Lcom/zoho/livechat/android/comm/ChatMessageHandler;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->messageHandler:Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    return-object v0
.end method

.method public static getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    return-object v0
.end method

.method private static getWmsServerUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "livechat_domain"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "localzoho"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wss://wms.localzoho.com"

    return-object v0

    :cond_0
    const-string v0, "wss://wms"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getDataCenter()Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getDataCenter()Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->getSufix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hold()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->setNoReconnect()V

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->hold()V

    const-string v0, "PEX | HOLD"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V
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

    :cond_0
    :goto_0
    return-void
.end method

.method public static isHold()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->isHold()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static networkDown()V
    .locals 0

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->setNoReconnect()V

    return-void
.end method

.method public static process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 2

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0, p0}, Lcom/zoho/wms/common/pex/PEX;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static resume()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->status:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->resume()V

    const-string v0, "PEX | RESUME"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V
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

    :cond_0
    :goto_0
    return-void
.end method

.method private static setNoReconnect()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->isforcedisconnect:Z

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->recvar:I

    return-void
.end method

.method private static startReconnect()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    sget-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->sid:Ljava/lang/String;

    sget-object v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->xa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->reconnect(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PEX | RECONNECT"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
