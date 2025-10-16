.class public Lcom/zoho/wms/common/pex/PEXRequest;
.super Lcom/zoho/wms/common/pex/PEXEvent;
.source ""


# instance fields
.field private cookies:Ljava/util/Hashtable;

.field private method:Ljava/lang/String;

.field private prd:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, Lcom/zoho/wms/common/pex/PEXEvent;-><init>(ILjava/lang/Object;)V

    const-string p3, "GET"

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEXRequest;->method:Ljava/lang/String;

    const-string p3, "req"

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEXRequest;->type:Ljava/lang/String;

    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEXRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/zoho/wms/common/WmsService;->getPrd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->prd:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXRequest;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p3}, Lcom/zoho/wms/common/pex/PEXEvent;-><init>(ILjava/lang/Object;)V

    const-string p3, "GET"

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEXRequest;->method:Ljava/lang/String;

    const-string p3, "req"

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEXRequest;->type:Ljava/lang/String;

    new-instance p3, Ljava/util/Hashtable;

    invoke-direct {p3}, Ljava/util/Hashtable;-><init>()V

    iput-object p3, p0, Lcom/zoho/wms/common/pex/PEXRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/zoho/wms/common/WmsService;->getPrd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->prd:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXRequest;->url:Ljava/lang/String;

    if-eqz p4, :cond_0

    const-string p1, "preq"

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->type:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->cookies:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zoho/wms/common/pex/PEXEvent;->setCookie(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->prd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXRequest;->method:Ljava/lang/String;

    return-void
.end method
