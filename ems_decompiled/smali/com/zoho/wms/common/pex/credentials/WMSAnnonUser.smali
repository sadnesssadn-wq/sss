.class public Lcom/zoho/wms/common/pex/credentials/WMSAnnonUser;
.super Lcom/zoho/wms/common/pex/credentials/PEXCredentials;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setUserName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zoho/wms/common/pex/credentials/PEXCredentials;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method
