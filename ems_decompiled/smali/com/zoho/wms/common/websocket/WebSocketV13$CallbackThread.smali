.class public Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$1000(Lcom/zoho/wms/common/websocket/WebSocketV13;)Lcom/zoho/wms/common/websocket/WebSocketHandler;

    move-result-object v0

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/zoho/wms/common/websocket/WebSocketHandler;->onMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {p1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$1000(Lcom/zoho/wms/common/websocket/WebSocketV13;)Lcom/zoho/wms/common/websocket/WebSocketHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoho/wms/common/websocket/WebSocketHandler;->onOpen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$400(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$400(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;

    invoke-virtual {p0, v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->execute(Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$500(Lcom/zoho/wms/common/websocket/WebSocketV13;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$400(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;

    invoke-virtual {p0, v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackThread;->execute(Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;)V

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method
