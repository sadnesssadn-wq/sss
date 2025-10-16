.class public Lcom/zoho/messenger/api/config/WmsConfig;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private config:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method


# virtual methods
.method public enableChat()V
    .locals 4

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public enableChatPresence()V
    .locals 4

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public enableCrossProductMessage()V
    .locals 4

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public enableLoadBalance()V
    .locals 4

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public enableOrgPresence()V
    .locals 4

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public enablePersonalPresence()V
    .locals 4

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    return-void
.end method

.method public getConfig()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lcom/zoho/messenger/api/config/WmsConfig;->config:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
