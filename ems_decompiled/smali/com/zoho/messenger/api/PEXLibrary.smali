.class public Lcom/zoho/messenger/api/PEXLibrary;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Hold()V
    .locals 0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->hold()V

    return-void
.end method

.method public static Resume()V
    .locals 0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->resume()V

    return-void
.end method

.method public static connect(Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Lcom/zoho/wms/common/WmsService;Lcom/zoho/messenger/api/config/WmsConfig;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->connect(Lcom/zoho/wms/common/pex/credentials/PEXCredentials;Lcom/zoho/wms/common/WmsService;Lcom/zoho/messenger/api/config/WmsConfig;)V

    return-void
.end method

.method public static disconnect()V
    .locals 0

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->disconnect()V

    return-void
.end method

.method public static isConnected()Z
    .locals 1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static isHold()Z
    .locals 1

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->isHold()Z

    move-result v0

    return v0
.end method

.method public static process(Lcom/zoho/wms/common/pex/PEXRequest;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V

    return-void
.end method

.method public static setConnectionHandler(Lcom/zoho/messenger/api/handler/ConnectionHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/handler/ConnectionHandler;)V

    return-void
.end method
