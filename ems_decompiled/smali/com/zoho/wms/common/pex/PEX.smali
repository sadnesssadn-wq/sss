.class public Lcom/zoho/wms/common/pex/PEX;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;,
        Lcom/zoho/wms/common/pex/PEX$WSHandler;,
        Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;
    }
.end annotation


# static fields
.field private static final DEF_SOCK_URL:Ljava/lang/String; = "ws://wms.zoho.com/pconnect"


# instance fields
.field private conLock:Ljava/lang/Object;

.field private conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

.field private cookies:Ljava/util/HashMap;

.field private credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

.field private evttimeoutmsec:J

.field public executor:Ljava/util/concurrent/ExecutorService;

.field private headers:Ljava/util/HashMap;

.field private iamticket_cookiename:Ljava/lang/String;

.field private logenabled:Z

.field private pex_conn_status:I

.field private pexevents:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/zoho/wms/common/pex/PEXEvent;",
            ">;"
        }
    .end annotation
.end field

.field private responseExecutionThread:Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

.field private responsecallbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/util/Hashtable;",
            ">;"
        }
    .end annotation
.end field

.field private sTime:J

.field private sockurl:Ljava/lang/String;

.field private tracker:Lcom/zoho/wms/common/pex/PEXTimeOutListener;

.field private ws:Lcom/zoho/wms/common/websocket/WebSocket;

.field private wshandler:Lcom/zoho/wms/common/pex/PEX$WSHandler;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IAMAGENTTICKET"

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->iamticket_cookiename:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->conLock:Ljava/lang/Object;

    new-instance v0, Lcom/zoho/wms/common/pex/PEX$WSHandler;

    invoke-direct {v0, p0}, Lcom/zoho/wms/common/pex/PEX$WSHandler;-><init>(Lcom/zoho/wms/common/pex/PEX;)V

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->wshandler:Lcom/zoho/wms/common/pex/PEX$WSHandler;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x1f4

    const v2, 0x3f4ccccd    # 0.8f

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->pexevents:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTimeOutListener;

    invoke-direct {v0, p0}, Lcom/zoho/wms/common/pex/PEXTimeOutListener;-><init>(Lcom/zoho/wms/common/pex/PEX;)V

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->tracker:Lcom/zoho/wms/common/pex/PEXTimeOutListener;

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->responsecallbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/wms/common/pex/PEX;->logenabled:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/wms/common/pex/PEX;)I
    .locals 0

    iget p0, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    return p0
.end method

.method public static synthetic access$002(Lcom/zoho/wms/common/pex/PEX;I)I
    .locals 0

    iput p1, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    return p1
.end method

.method public static synthetic access$100(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->pexevents:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXTimeOutListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->tracker:Lcom/zoho/wms/common/pex/PEXTimeOutListener;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/websocket/WebSocket;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/zoho/wms/common/pex/PEX;)J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/wms/common/pex/PEX;->sTime:J

    return-wide v0
.end method

.method public static synthetic access$402(Lcom/zoho/wms/common/pex/PEX;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zoho/wms/common/pex/PEX;->sTime:J

    return-wide p1
.end method

.method public static synthetic access$500(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->responseExecutionThread:Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/zoho/wms/common/pex/PEX;Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->responseExecutionThread:Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/credentials/PEXCredentials;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/PEX;->responsecallbackQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method public static getInstance()Lcom/zoho/wms/common/pex/PEX;
    .locals 1

    new-instance v0, Lcom/zoho/wms/common/pex/PEX;

    invoke-direct {v0}, Lcom/zoho/wms/common/pex/PEX;-><init>()V

    return-object v0
.end method

.method private getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "="

    const-string v2, "&"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private processinExecutor(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;

    invoke-direct {v0, p0, p1}, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;-><init>(Lcom/zoho/wms/common/pex/PEX;Lcom/zoho/wms/common/pex/PEXEvent;)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getConnectionTime()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/zoho/wms/common/pex/PEX;->sTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getCredentials()Lcom/zoho/wms/common/pex/credentials/PEXCredentials;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    return-object v0
.end method

.method public getEventTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/wms/common/pex/PEX;->evttimeoutmsec:J

    return-wide v0
.end method

.method public handleExpired(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXEvent;->getHandler()Lcom/zoho/wms/common/pex/PEXEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onTimeOut(Lcom/zoho/wms/common/pex/PEXEvent;)V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->pexevents:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXEvent;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public hold()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->hold()V

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    instance-of v1, v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->unscheduleTask()V

    :cond_1
    return-void
.end method

.method public init(Lcom/zoho/wms/common/pex/credentials/PEXCredentials;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/PEX;->init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;)V

    return-void
.end method

.method public init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zoho/wms/common/pex/PEX;->init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Ljava/util/HashMap;)V

    return-void
.end method

.method public init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Ljava/util/HashMap;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/zoho/wms/common/pex/PEX;->init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public init(Ljava/lang/String;Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->conLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    const-string v0, "pex.url"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    const-string p1, "ws://wms.zoho.com/pconnect"

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_0
    const-string v0, "?nocache="

    invoke-static {p1, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pex.prd"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pex.config"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "insid"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appversion"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oscode"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enablelog"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lcom/zoho/wms/common/pex/PEX;->logenabled:Z

    const-string v5, "iamticket.cookiename"

    iget-object v7, p0, Lcom/zoho/wms/common/pex/PEX;->iamticket_cookiename:Ljava/lang/String;

    invoke-static {v5, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zoho/wms/common/pex/PEX;->iamticket_cookiename:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v5, "&prd="

    invoke-static {p1, v5, v0}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "&config="

    invoke-static {p1, v0, v1}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-eqz v4, :cond_6

    const-string v0, "&oscode="

    invoke-static {p1, v0, v4}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    const-string v0, "&sessiontype=64"

    invoke-static {p1, v0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pnskey"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_7

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "insid"

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "pnskey"

    invoke-direct {p0, v1, v0}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string v0, "&authtype="

    invoke-static {p1, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "&wmsid="

    invoke-static {p1, v0}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "dname"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    if-eqz v3, :cond_b

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "appversion"

    invoke-direct {p0, v0, v3}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getType()I

    move-result v1

    if-eqz v1, :cond_14

    if-eq v1, v6, :cond_13

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    const/16 v2, 0x9

    if-eq v1, v2, :cond_e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_d

    const/4 v2, 0x6

    if-eq v1, v2, :cond_c

    goto/16 :goto_4

    :cond_c
    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "zuid"

    const-string v2, "zuid"

    goto/16 :goto_2

    :cond_d
    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "ticket"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "bundleid"

    const-string v2, "bundleid"

    goto/16 :goto_2

    :cond_e
    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "ticket"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "oprscope"

    invoke-virtual {p2, v1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "oprscope"

    const-string v2, "oprscope"

    invoke-virtual {p2, v2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_f
    const-string v1, "userscope"

    invoke-virtual {p2, v1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "userscope"

    const-string v2, "userscope"

    invoke-virtual {p2, v2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_10
    const-string v1, "orgscope"

    invoke-virtual {p2, v1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "orgscope"

    const-string v2, "orgscope"

    invoke-virtual {p2, v2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_11
    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "wmsid"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_12
    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEX;->iamticket_cookiename:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "domain"

    const-string v2, "domain"

    move-object v8, v1

    move-object v1, p1

    move-object p1, v8

    goto :goto_2

    :cond_13
    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "ticket"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "iscscope"

    const-string v2, "iscscope"

    :goto_2
    invoke-virtual {p2, v2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_14
    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEX;->iamticket_cookiename:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_4
    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->sockurl:Ljava/lang/String;

    if-eqz p4, :cond_16

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "i"

    invoke-direct {p0, v1, p4}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_16
    if-eqz p5, :cond_17

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, "xa"

    invoke-direct {p0, p4, p5}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_17
    invoke-static {p1}, Lcom/zoho/wms/common/websocket/WebSocketFactory;->createSocket(Ljava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->cookies:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {p1, v0}, Lcom/zoho/wms/common/websocket/WebSocket;->addCookies(Ljava/util/HashMap;)V

    :cond_18
    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    const-string p4, "User-Agent"

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserAgent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Lcom/zoho/wms/common/websocket/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zoho/wms/common/pex/PEX;->sTime:J

    if-eqz p3, :cond_1a

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEX;->headers:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/websocket/WebSocket;->addHeaders(Ljava/util/HashMap;)V

    :cond_1a
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    iget-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->wshandler:Lcom/zoho/wms/common/pex/PEX$WSHandler;

    invoke-virtual {p1, p2}, Lcom/zoho/wms/common/websocket/WebSocket;->setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    invoke-interface {p1}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onBeforeConnect()V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {p1}, Lcom/zoho/wms/common/websocket/WebSocket;->connect()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isHold()Z
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->isHold()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLogEnabled()Z
    .locals 2

    const-string v0, "enablelog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "X-PEX-MOBILE"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/zoho/wms/common/pex/PEX;->processinExecutor(Lcom/zoho/wms/common/pex/PEXEvent;)V

    return-void
.end method

.method public reconnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->conLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/zoho/wms/common/pex/PEX;->pex_conn_status:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->sockurl:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-direct {p0, v1, p1}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "xa"

    invoke-direct {p0, v0, p2}, Lcom/zoho/wms/common/pex/PEX;->getParamString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketFactory;->createSocket(Ljava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->cookies:Ljava/util/HashMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    iget-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->cookies:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Lcom/zoho/wms/common/websocket/WebSocket;->addCookies(Ljava/util/HashMap;)V

    :cond_3
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserAgent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    const-string p2, "User-Agent"

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zoho/wms/common/websocket/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->headers:Ljava/util/HashMap;

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {p2, p1}, Lcom/zoho/wms/common/websocket/WebSocket;->addHeaders(Ljava/util/HashMap;)V

    :cond_5
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    iget-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->wshandler:Lcom/zoho/wms/common/pex/PEX$WSHandler;

    invoke-virtual {p1, p2}, Lcom/zoho/wms/common/websocket/WebSocket;->setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    invoke-interface {p1}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onBeforeConnect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/zoho/wms/common/pex/PEX;->sTime:J

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    invoke-virtual {p1}, Lcom/zoho/wms/common/websocket/WebSocket;->connect()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public resume()V
    .locals 4

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    instance-of v1, v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->scheduleTask(JZ)V

    :cond_1
    return-void
.end method

.method public setEventTimeout(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/zoho/wms/common/pex/PEX;->evttimeoutmsec:J

    return-void
.end method

.method public setHandler(Lcom/zoho/wms/common/pex/PEXConnectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->conhandler:Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    return-void
.end method

.method public shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->ws:Lcom/zoho/wms/common/websocket/WebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocket;->close()V

    :cond_0
    return-void
.end method

.method public updateOauthToken(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    check-cast v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-virtual {v0, p2, p3}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->scheduleTask(J)V

    iget-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {p2, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setKey(Ljava/lang/String;)V

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    const-string p3, "ticket"

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    const-string p3, "orgscope"

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    const-string p3, "userscope"

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    const-string p3, "oprscope"

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX;->credentials:Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    invoke-virtual {p1, p3}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getAddInfo(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 p1, 0x9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "authtype"

    invoke-virtual {p2, p3, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    new-instance p1, Lcom/zoho/wms/common/pex/PEXReAuth;

    invoke-direct {p1, p2}, Lcom/zoho/wms/common/pex/PEXReAuth;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/zoho/wms/common/pex/PEX$1;

    invoke-direct {p2, p0}, Lcom/zoho/wms/common/pex/PEX$1;-><init>(Lcom/zoho/wms/common/pex/PEX;)V

    invoke-virtual {p1, p2}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-virtual {p0, p1}, Lcom/zoho/wms/common/pex/PEX;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
