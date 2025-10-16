.class public abstract Lcom/zoho/wms/common/pex/PEXEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private config:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ctime:J

.field private data:Ljava/lang/Object;

.field private handler:Lcom/zoho/wms/common/pex/PEXEventHandler;

.field private header:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private response:Lcom/zoho/wms/common/pex/PEXResponse;

.field private status:I

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->status:I

    invoke-static {}, Lcom/zoho/wms/common/pex/internal/PEXEventIDGenerator;->getRandomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->id:Ljava/lang/String;

    iput p1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->type:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->ctime:J

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXEvent;->data:Ljava/lang/Object;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->config:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->config:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p2, Lcom/zoho/wms/common/exception/WMSEventException;

    const-string v0, "Unable to add Header "

    const-string v1, ", (Why? : Only X-* headers supported)"

    invoke-static {v0, p1, v1}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zoho/wms/common/exception/WMSEventException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->ctime:J

    return-wide v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Lcom/zoho/wms/common/pex/PEXEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->handler:Lcom/zoho/wms/common/pex/PEXEventHandler;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLog()Ljava/util/Hashtable;
    .locals 5

    const-string v0, "msg"

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEXEvent;->id:Ljava/lang/String;

    const-string v3, "i"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/zoho/wms/common/pex/PEXEvent;->getOperation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "o"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEXEvent;->data:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "d"

    if-eqz v2, :cond_0

    :try_start_1
    instance-of v4, v2, Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, p0, Lcom/zoho/wms/common/pex/PEXEvent;->data:Ljava/lang/Object;

    check-cast v4, Ljava/util/Hashtable;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    const-string v2, "h"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->config:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->config:Ljava/util/Hashtable;

    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getObject()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->id:Ljava/lang/String;

    const-string v2, "i"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/zoho/wms/common/pex/PEXEvent;->getOperation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    const-string v2, "h"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->data:Ljava/lang/Object;

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->config:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->config:Ljava/util/Hashtable;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public abstract getOperation()Ljava/lang/String;
.end method

.method public getResponse()Lcom/zoho/wms/common/pex/PEXResponse;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->response:Lcom/zoho/wms/common/pex/PEXResponse;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->status:I

    return v0
.end method

.method public isProgRequest()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProgTask()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRequest()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTask()Z
    .locals 2

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXEvent;->header:Ljava/util/Hashtable;

    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->handler:Lcom/zoho/wms/common/pex/PEXEventHandler;

    return-void
.end method

.method public setResponse(Lcom/zoho/wms/common/pex/PEXResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->response:Lcom/zoho/wms/common/pex/PEXResponse;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/wms/common/pex/PEXEvent;->status:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zoho/wms/common/pex/PEXEvent;->getObject()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
