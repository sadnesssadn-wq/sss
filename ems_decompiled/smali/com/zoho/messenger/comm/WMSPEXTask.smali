.class public Lcom/zoho/messenger/comm/WMSPEXTask;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 1

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTask;

    invoke-direct {v0, p2, p1}, Lcom/zoho/wms/common/pex/PEXTask;-><init>(Lcom/zoho/wms/common/pex/PEXTaskTypes;Ljava/util/Hashtable;)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-static {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V

    :cond_0
    return-void
.end method

.method public process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;Z)V
    .locals 1

    new-instance v0, Lcom/zoho/wms/common/pex/PEXTask;

    invoke-direct {v0, p2, p1, p4}, Lcom/zoho/wms/common/pex/PEXTask;-><init>(Lcom/zoho/wms/common/pex/PEXTaskTypes;Ljava/util/Hashtable;Z)V

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-static {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V

    :cond_0
    return-void
.end method
