.class public Lcom/zoho/messenger/comm/WMSPEXAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;,
        Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;
    }
.end annotation


# static fields
.field private static chandler:Lcom/zoho/messenger/api/handler/ConnectionHandler;

.field private static conLock:Ljava/lang/Object;

.field private static conthandler:Lcom/zoho/messenger/api/handler/ContactsHandler;

.field private static contime:Ljava/lang/Long;

.field private static isforcedisconnect:Z

.field public static isreconnect:Z

.field private static mhandler:Lcom/zoho/messenger/api/handler/MessageHandler;

.field private static pex:Lcom/zoho/wms/common/pex/PEX;

.field public static rectime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static recvar:I

.field private static serverdisconnect:Z

.field private static sid:Ljava/lang/String;

.field private static status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

.field private static timer:Ljava/util/Timer;

.field private static wmshandler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/messenger/api/handler/ChatInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private static wmsserver:Ljava/lang/String;

.field private static xa:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->DISCONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    sput v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    sput-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->sid:Ljava/lang/String;

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->xa:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->conLock:Ljava/lang/Object;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Long;

    const-wide/16 v2, 0x1388

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    const-wide/16 v2, 0x3a98

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-wide/32 v2, 0xdbba0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->rectime:Ljava/util/List;

    const-string v1, "wss://mms.zoho.com"

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmsserver:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->contime:Ljava/lang/Long;

    sput-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->serverdisconnect:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/zoho/messenger/api/handler/ConnectionHandler;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->chandler:Lcom/zoho/messenger/api/handler/ConnectionHandler;

    return-object v0
.end method

.method public static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic access$1200()Lcom/zoho/messenger/api/handler/ContactsHandler;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->conthandler:Lcom/zoho/messenger/api/handler/ContactsHandler;

    return-object v0
.end method

.method public static synthetic access$1300()Lcom/zoho/messenger/api/handler/MessageHandler;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->mhandler:Lcom/zoho/messenger/api/handler/MessageHandler;

    return-object v0
.end method

.method public static synthetic access$200()Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    return-object v0
.end method

.method public static synthetic access$202(Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;)Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/util/Timer;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public static synthetic access$302(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public static synthetic access$400()Lcom/zoho/wms/common/pex/PEX;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    return-object v0
.end method

.method public static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->serverdisconnect:Z

    return v0
.end method

.method public static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->serverdisconnect:Z

    return p0
.end method

.method public static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    return v0
.end method

.method public static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    return p0
.end method

.method public static synthetic access$700()V
    .locals 0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->startReconnect()V

    return-void
.end method

.method public static synthetic access$800()Ljava/lang/Long;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->contime:Ljava/lang/Long;

    return-object v0
.end method

.method public static synthetic access$802(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->contime:Ljava/lang/Long;

    return-object p0
.end method

.method public static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->xa:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->xa:Ljava/lang/String;

    return-object p0
.end method

.method public static clearSid()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->sid:Ljava/lang/String;

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->xa:Ljava/lang/String;

    const-string v0, "sid"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "xa"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "insid"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static connect(Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Lcom/zoho/wms/common/WmsService;Lcom/zoho/messenger/api/config/WmsConfig;)V
    .locals 7

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->conLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zoho/wms/common/pex/PEX;->getInstance()Lcom/zoho/wms/common/pex/PEX;

    move-result-object v1

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    new-instance v2, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;-><init>(Lcom/zoho/messenger/comm/WMSPEXAdapter$1;)V

    invoke-virtual {v1, v2}, Lcom/zoho/wms/common/pex/PEX;->setHandler(Lcom/zoho/wms/common/pex/PEXConnectionHandler;)V

    :cond_0
    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isHold()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTING:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    sput-boolean v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    :cond_3
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v3, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->RECONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-ne v0, v3, :cond_5

    sput-boolean v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_4
    sput v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->DISCONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    :cond_5
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v3, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->DISCONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-ne v0, v3, :cond_8

    sput-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sput-boolean v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isreconnect:Z

    sput-boolean v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmsserver:Ljava/lang/String;

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/zoho/messenger/comm/WMSPEXAdapter;->chandler:Lcom/zoho/messenger/api/handler/ConnectionHandler;

    invoke-virtual {v3}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->getDCLPFX()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/zoho/messenger/comm/WMSPEXAdapter;->chandler:Lcom/zoho/messenger/api/handler/ConnectionHandler;

    invoke-virtual {v4}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->getDCLBD()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-eqz v4, :cond_7

    const-string v1, ".zoho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_7
    :goto_0
    const-string v1, "pex.prd"

    invoke-virtual {p1}, Lcom/zoho/wms/common/WmsService;->getPrd()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "pex.config"

    invoke-virtual {p2}, Lcom/zoho/messenger/api/config/WmsConfig;->getConfig()Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Accept-Language"

    invoke-virtual {v4, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "User-Agent"

    const-string p2, "useragent"

    const-string v1, "AND"

    invoke-static {p2, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "wmsserver"

    invoke-static {p1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    const/16 v0, 0x3c

    invoke-virtual {p2, v0}, Lcom/zoho/wms/common/pex/PEX;->setEventTimeout(I)V

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sput-object p2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->contime:Ljava/lang/Long;

    sget-object p2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->chandler:Lcom/zoho/messenger/api/handler/ConnectionHandler;

    invoke-virtual {p2}, Lcom/zoho/messenger/api/handler/ConnectionHandler;->onBeforeconnect()V

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/pconnect"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/zoho/messenger/comm/WMSPEXAdapter;->sid:Ljava/lang/String;

    sget-object v6, Lcom/zoho/messenger/comm/WMSPEXAdapter;->xa:Ljava/lang/String;

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/zoho/wms/common/pex/PEX;->init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static disconnect()V
    .locals 1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->setNoReconnect()V

    :try_start_0
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->DISCONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->shutDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static hold()V
    .locals 2

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->setNoReconnect()V

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->hold()V
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

.method public static isConnected()Z
    .locals 2

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHold()Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->isHold()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 2

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0, p0}, Lcom/zoho/wms/common/pex/PEX;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    new-instance p0, Lcom/zoho/wms/common/pex/PEXException;

    const/16 v0, 0x65

    const-string v1, "No connection available"

    invoke-direct {p0, v0, v1}, Lcom/zoho/wms/common/pex/PEXException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static registerContactsHandler(Lcom/zoho/messenger/api/handler/ContactsHandler;)V
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->conthandler:Lcom/zoho/messenger/api/handler/ContactsHandler;

    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/BotHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/ChannelHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/ChatHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/CollaborationHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/CustomChatHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/EntityChatHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/PresenceGroupHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/ServiceChatHandler;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static registerHandler(Lcom/zoho/messenger/api/handler/ConnectionHandler;)V
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->chandler:Lcom/zoho/messenger/api/handler/ConnectionHandler;

    return-void
.end method

.method public static registerMessageHandler(Lcom/zoho/messenger/api/handler/MessageHandler;)V
    .locals 0

    sput-object p0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->mhandler:Lcom/zoho/messenger/api/handler/MessageHandler;

    return-void
.end method

.method public static resume()V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->status:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->DISCONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEX;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static setNoReconnect()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isforcedisconnect:Z

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    return-void
.end method

.method private static startReconnect()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->contime:Ljava/lang/Long;

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->sid:Ljava/lang/String;

    sget-object v2, Lcom/zoho/messenger/comm/WMSPEXAdapter;->xa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->reconnect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V
    .locals 3

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/zoho/messenger/comm/WMSPEXAdapter;->wmshandler:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static updateOauthToken(Ljava/lang/String;J)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->pex:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v0, p0, p1, p2}, Lcom/zoho/wms/common/pex/PEX;->updateOauthToken(Ljava/lang/String;J)V

    return-void
.end method
