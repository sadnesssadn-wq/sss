.class public Lcom/zoho/wms/common/pex/PEXResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private progressive:Z

.field private readystate:I

.field private response:Ljava/lang/Object;

.field private responseObject:Ljava/lang/Object;

.field private responseText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/pex/PEXResponse;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->NOT_LOADED:Lcom/zoho/wms/common/pex/PEXReadyState;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXReadyState;->getReadyState()I

    move-result v0

    iput v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->readystate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    iput-boolean p2, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseObject:Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->response:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->NOT_LOADED:Lcom/zoho/wms/common/pex/PEXReadyState;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXReadyState;->getReadyState()I

    move-result v0

    iput v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->readystate:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    iput-boolean p2, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseObject:Ljava/lang/Object;

    :cond_2
    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->response:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addResponse(Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    const-string v0, "["

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseObject:Ljava/lang/Object;

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->response:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addResponse(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    invoke-static {v1, v2, v0, p1}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseObject:Ljava/lang/Object;

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->response:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->response:Ljava/lang/Object;

    return-object v0
.end method

.method public getList()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseText:Ljava/lang/String;

    return-object v0
.end method

.method public isProgressive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/wms/common/pex/PEXResponse;->progressive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Now:"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->response:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", All:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEXResponse;->responseObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
