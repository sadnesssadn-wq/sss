.class public Lcom/zoho/wms/common/pex/PEXTimeOutListener;
.super Lcom/zoho/wms/common/TimeOutListener;
.source ""


# instance fields
.field private pexobj:Lcom/zoho/wms/common/pex/PEX;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/pex/PEX;)V
    .locals 3

    const-string v0, "PEXTimeOutListener"

    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2}, Lcom/zoho/wms/common/TimeOutListener;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXTimeOutListener;->pexobj:Lcom/zoho/wms/common/pex/PEX;

    return-void
.end method


# virtual methods
.method public handleExpired(Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/wms/common/pex/PEXEvent;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXTimeOutListener;->pexobj:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {v1, v0}, Lcom/zoho/wms/common/pex/PEX;->handleExpired(Lcom/zoho/wms/common/pex/PEXEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isExpired(Ljava/lang/Object;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    check-cast p1, Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXEvent;->getCreatedTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEXTimeOutListener;->pexobj:Lcom/zoho/wms/common/pex/PEX;

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEX;->getEventTimeout()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
