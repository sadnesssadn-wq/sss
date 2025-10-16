.class public Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/pex/PEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessRunnable"
.end annotation


# instance fields
.field public event:Lcom/zoho/wms/common/pex/PEXEvent;

.field public final synthetic this$0:Lcom/zoho/wms/common/pex/PEX;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/pex/PEX;Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXEvent;->getStatus()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$000(Lcom/zoho/wms/common/pex/PEX;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXEvent;->getHandler()Lcom/zoho/wms/common/pex/PEXEventHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-interface {v0, v2}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$100(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$200(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXTimeOutListener;

    move-result-object v0

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v0, v2}, Lcom/zoho/wms/common/TimeOutListener;->touch(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/pex/PEXEvent;->setStatus(I)V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$300(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->event:Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v1}, Lcom/zoho/wms/common/pex/PEXEvent;->getObject()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zoho/wms/common/websocket/WebSocket;->write(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ProcessRunnable;->this$0:Lcom/zoho/wms/common/pex/PEX;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zoho/wms/common/pex/PEX;->access$002(Lcom/zoho/wms/common/pex/PEX;I)I

    new-instance v0, Lcom/zoho/wms/common/pex/PEXException;

    const/16 v1, 0x65

    const-string v2, "No connection available"

    invoke-direct {v0, v1, v2}, Lcom/zoho/wms/common/pex/PEXException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/zoho/wms/common/pex/PEXException;

    const/16 v1, 0x6b

    const-string v2, "Invalid State"

    invoke-direct {v0, v1, v2}, Lcom/zoho/wms/common/pex/PEXException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
