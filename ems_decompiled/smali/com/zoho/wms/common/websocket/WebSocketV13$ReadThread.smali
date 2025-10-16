.class public Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, -0x2

    :try_start_0
    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$000(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$100(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    new-instance v3, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    invoke-direct {v3, v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    invoke-static {v1, v3}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$302(Lcom/zoho/wms/common/websocket/WebSocketV13;Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;)Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$300(Lcom/zoho/wms/common/websocket/WebSocketV13;)Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$400(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    new-instance v3, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;

    iget-object v4, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {v3, v4, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;I)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    :goto_0
    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$500(Lcom/zoho/wms/common/websocket/WebSocketV13;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    invoke-virtual {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;->readFully()I

    move-result v2

    invoke-virtual {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;->isCloseFrame()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I

    goto :goto_2

    :cond_0
    if-gez v2, :cond_1

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v2, -0x3

    invoke-static {v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$602(Lcom/zoho/wms/common/websocket/WebSocketV13;J)J

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;->isTextFrame()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;

    iget-object v3, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;I)V

    const-string v3, "msg"

    invoke-virtual {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v3}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$400(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadFrame;->clear()V
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v1, v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$ReadThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$700(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    return-void
.end method
