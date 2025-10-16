.class public Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/pex/credentials/OauthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OauthScheduler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/wms/common/pex/credentials/OauthToken;


# direct methods
.method private constructor <init>(Lcom/zoho/wms/common/pex/credentials/OauthToken;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;->this$0:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/wms/common/pex/credentials/OauthToken;Lcom/zoho/wms/common/pex/credentials/OauthToken$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;-><init>(Lcom/zoho/wms/common/pex/credentials/OauthToken;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->access$100()Lcom/zoho/wms/common/pex/credentials/OauthToken;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;->this$0:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->access$200(Lcom/zoho/wms/common/pex/credentials/OauthToken;)Lcom/zoho/messenger/api/handler/OauthUpdateHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/messenger/api/handler/OauthUpdateHandler;->getToken()Lcom/zoho/wms/common/pex/credentials/OauthToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->getExpiryTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->updateOauthToken(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/OauthToken$OauthScheduler;->this$0:Lcom/zoho/wms/common/pex/credentials/OauthToken;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->scheduleTask(J)V

    :cond_1
    :goto_0
    return-void
.end method
