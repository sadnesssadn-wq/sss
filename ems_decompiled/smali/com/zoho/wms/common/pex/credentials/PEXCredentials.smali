.class public Lcom/zoho/wms/common/pex/credentials/PEXCredentials;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private dname:Ljava/lang/String;

.field private info:Ljava/util/Hashtable;

.field private key:Ljava/lang/String;

.field private type:I

.field private userId:Ljava/lang/String;

.field private useragent:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->info:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->key:Ljava/lang/String;

    iput p2, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->type:I

    return-void
.end method


# virtual methods
.method public addInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->info:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAddInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->info:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->dname:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->type:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->useragent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->dname:Ljava/lang/String;

    return-void
.end method

.method public setIP(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ip"

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInfo(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->info:Ljava/util/Hashtable;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->key:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "useragent"

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->useragent:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->username:Ljava/lang/String;

    return-void
.end method
