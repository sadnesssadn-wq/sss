.class public Lcom/zoho/wms/common/pex/credentials/OauthToken;
.super Lcom/zoho/wms/common/pex/credentials/PEXCredentials;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;
    }
.end annotation


# static fields
.field private static final FORCED_TIME:J = 0xaL

.field private static final MIN_TIME:J = 0x4e20L

.field private static oauthToken:Lcom/zoho/wms/common/pex/credentials/OauthToken;


# instance fields
.field private expiryTime:J

.field private handler:Lcom/zoho/messenger/api/handler/OauthUpdateHandler;

.field private oauthScheduler:Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;-><init>(Ljava/lang/String;I)V

    iput-wide p2, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->expiryTime:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/zoho/messenger/api/handler/OauthUpdateHandler;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->handler:Lcom/zoho/messenger/api/handler/OauthUpdateHandler;

    return-void
.end method

.method public static synthetic access$100()Lcom/zoho/wms/common/pex/credentials/OauthToken;
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthToken:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/zoho/wms/common/pex/credentials/OauthToken;)Lcom/zoho/messenger/api/handler/OauthUpdateHandler;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->handler:Lcom/zoho/messenger/api/handler/OauthUpdateHandler;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;Lcom/zoho/messenger/api/handler/OauthUpdateHandler;)Lcom/zoho/wms/common/pex/credentials/OauthToken;
    .locals 2

    const-class v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthToken:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-direct {v1, p0, p1}, Lcom/zoho/wms/common/pex/credentials/OauthToken;-><init>(Ljava/lang/String;Lcom/zoho/messenger/api/handler/OauthUpdateHandler;)V

    sput-object v1, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthToken:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setKey(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthToken:Lcom/zoho/wms/common/pex/credentials/OauthToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clearInstance()V
    .locals 1

    invoke-virtual {p0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->unscheduleTask()V

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthToken:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    return-void
.end method

.method public getExpiryTime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->expiryTime:J

    return-wide v0
.end method

.method public getOauthExpiryHandler()Lcom/zoho/messenger/api/handler/OauthUpdateHandler;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->handler:Lcom/zoho/messenger/api/handler/OauthUpdateHandler;

    return-object v0
.end method

.method public declared-synchronized scheduleTask(J)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->scheduleTask(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleTask(JZ)V
    .locals 6

    monitor-enter p0

    if-eqz p3, :cond_0

    const-wide/16 p1, 0xa

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    const-wide/16 p1, 0x4e20

    :cond_1
    :goto_0
    move-wide v4, p1

    :try_start_0
    invoke-virtual {p0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->unscheduleTask()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;-><init>(Lcom/zoho/wms/common/pex/credentials/OauthToken;Lcom/zoho/wms/common/pex/credentials/OauthToken$1;)V

    iput-object v1, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthScheduler:Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->timer:Ljava/util/Timer;

    move-wide v2, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOprscope(Ljava/lang/String;)V
    .locals 1

    const-string v0, "oprscope"

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOrgscope(Ljava/lang/String;)V
    .locals 1

    const-string v0, "orgscope"

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUserscope(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userscope"

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized unscheduleTask()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken;->oauthScheduler:Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
