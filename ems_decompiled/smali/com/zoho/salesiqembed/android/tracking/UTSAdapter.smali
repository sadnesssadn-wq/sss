.class public Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$WMSPEXConnectionHandler;,
        Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static isforcedisconnect:Z

.field private static isreconnect:Z

.field private static rectime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static recvar:I

.field private static status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

.field public static timedTask:Ljava/lang/Runnable;

.field private static uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

.field private static utsMessageHandler:Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isforcedisconnect:Z

    sput v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    sput-boolean v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isreconnect:Z

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x3a98

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/16 v0, 0x7530

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const v0, 0xdbba0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->rectime:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$1;

    invoke-direct {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$1;-><init>()V

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->startReconnect()V

    return-void
.end method

.method public static synthetic access$100()I
    .locals 1

    sget v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    return v0
.end method

.method public static synthetic access$102(I)I
    .locals 0

    sput p0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    return p0
.end method

.method public static synthetic access$108()I
    .locals 2

    sget v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    return v0
.end method

.method public static synthetic access$200()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->rectime:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$300()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$502(Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;)Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;
    .locals 0

    sput-object p0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    return-object p0
.end method

.method public static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isreconnect:Z

    return v0
.end method

.method public static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isreconnect:Z

    return p0
.end method

.method public static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isforcedisconnect:Z

    return v0
.end method

.method public static synthetic access$800()Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;
    .locals 1

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->utsMessageHandler:Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    return-object v0
.end method

.method public static connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .locals 7

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTS;->getInstance()Lcom/zoho/salesiqembed/android/tracking/UTS;

    move-result-object v0

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    new-instance v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$WMSPEXConnectionHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$WMSPEXConnectionHandler;-><init>(Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$1;)V

    invoke-virtual {v0, v1}, Lcom/zoho/salesiqembed/android/tracking/UTS;->setHandler(Lcom/zoho/wms/common/pex/PEXConnectionHandler;)V

    :cond_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTING:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    sput-boolean v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isforcedisconnect:Z

    :cond_1
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sget-object v3, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->RECONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v3, :cond_2

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sput-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    :cond_2
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sget-object v3, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v3, :cond_4

    sput-boolean v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isreconnect:Z

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    sput-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sput-boolean v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isreconnect:Z

    sput-boolean v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isforcedisconnect:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOs()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "os-version"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobilemanufacturer"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getProduct()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobileversion"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "ua"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-uts-agent"

    invoke-virtual {p4, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "x-vwmsid"

    invoke-virtual {p4, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getSocketUrl()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/zoho/salesiqembed/android/tracking/UTS;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    :cond_4
    return-void
.end method

.method public static disconnect()V
    .locals 1

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->setNoReconnect()V

    :try_start_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->shutDown()V
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

.method public static getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;
    .locals 1

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    return-object v0
.end method

.method private static getSocketUrl()Ljava/lang/String;
    .locals 2

    const-string v0, "livechat_domain"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "localzoho"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wss://vts.localzohopublic.com/watchws"

    return-object v0

    :cond_0
    const-string v0, "wss://vts"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getDataCenter()Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->getTrackingDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zoho/livechat/android/constants/UrlUtil;->getDataCenter()Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->getSufix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/watchws"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hold()V
    .locals 2

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->setNoReconnect()V

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->hold()V
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

.method public static isHold()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->isHold()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static networkUp()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isforcedisconnect:Z

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    sget-object v3, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->rectime:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static resume()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->status:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->isHold()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->resume()V
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

.method public static setHandler(Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;)V
    .locals 0

    sput-object p0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->utsMessageHandler:Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    return-void
.end method

.method public static setNoReconnect()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isforcedisconnect:Z

    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->timedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->recvar:I

    return-void
.end method

.method private static startReconnect()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->reconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static writeData(Ljava/util/Hashtable;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->uts:Lcom/zoho/salesiqembed/android/tracking/UTS;

    invoke-virtual {v0, p0}, Lcom/zoho/salesiqembed/android/tracking/UTS;->writeData(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
