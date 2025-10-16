.class public Lcom/zoho/wms/common/pex/PEX$WSHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/websocket/WebSocketHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/pex/PEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WSHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/wms/common/pex/PEX;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/pex/PEX;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(I)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/wms/common/pex/PEX;->access$002(Lcom/zoho/wms/common/pex/PEX;I)I

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$500(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onDisconnect()V

    :try_start_0
    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$600(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$600(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$600(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->flush()V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/wms/common/pex/PEX;->access$602(Lcom/zoho/wms/common/pex/PEX;Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "websocket connection closed"

    invoke-static {p1}, Lcom/zoho/wms/common/WmsLog;->info(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "seq"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const-string v3, "s"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v2}, Lcom/zoho/wms/common/pex/PEX;->access$300(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zoho/wms/common/websocket/WebSocket;->write(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v1}, Lcom/zoho/wms/common/pex/PEX;->access$800(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public onOpen()V
    .locals 5

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v3}, Lcom/zoho/wms/common/pex/PEX;->access$400(Lcom/zoho/wms/common/pex/PEX;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/zoho/wms/common/pex/PEX;->access$402(Lcom/zoho/wms/common/pex/PEX;J)J

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zoho/wms/common/pex/PEX;->access$002(Lcom/zoho/wms/common/pex/PEX;I)I

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$500(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onConnect()V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    new-instance v2, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    iget-object v3, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-direct {v2, v3}, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;-><init>(Lcom/zoho/wms/common/pex/PEX;)V

    invoke-static {v0, v2}, Lcom/zoho/wms/common/pex/PEX;->access$602(Lcom/zoho/wms/common/pex/PEX;Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$600(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$700(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    move-result-object v0

    instance-of v0, v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$WSHandler;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$700(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/credentials/PEXCredentials;

    move-result-object v0

    check-cast v0, Lcom/zoho/wms/common/pex/credentials/OauthToken;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/zoho/wms/common/pex/credentials/OauthToken;->scheduleTask(JZ)V

    :cond_0
    return-void
.end method
