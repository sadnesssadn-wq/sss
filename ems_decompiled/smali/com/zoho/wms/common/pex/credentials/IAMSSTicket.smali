.class public Lcom/zoho/wms/common/pex/credentials/IAMSSTicket;
.super Lcom/zoho/wms/common/pex/credentials/PEXCredentials;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public setDomain(Ljava/lang/String;)V
    .locals 1

    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->addInfo(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
