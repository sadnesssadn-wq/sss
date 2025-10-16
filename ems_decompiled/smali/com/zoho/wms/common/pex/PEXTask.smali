.class public Lcom/zoho/wms/common/pex/PEXTask;
.super Lcom/zoho/wms/common/pex/PEXEvent;
.source ""


# instance fields
.field private operation:Ljava/lang/String;

.field private tasktype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/pex/PEXTaskTypes;Ljava/util/Hashtable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/zoho/wms/common/pex/PEXEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXTask;->tasktype:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "teg@RS:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXTask;->operation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zoho/wms/common/pex/PEXTaskTypes;Ljava/util/Hashtable;Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/zoho/wms/common/pex/PEXEvent;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXTaskTypes;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXTask;->tasktype:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "pteg@RS:"

    goto :goto_0

    :cond_0
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "teg@RS:"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXTask;->operation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXTask;->tasktype:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXTask;->operation:Ljava/lang/String;

    return-object v0
.end method
