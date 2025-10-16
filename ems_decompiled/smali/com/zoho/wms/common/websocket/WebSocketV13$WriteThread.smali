.class public Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteThread"
.end annotation


# instance fields
.field private lastPingTime:J

.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketV13;)V
    .locals 2

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->lastPingTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$500(Lcom/zoho/wms/common/websocket/WebSocketV13;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$800(Lcom/zoho/wms/common/websocket/WebSocketV13;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-virtual {v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->isHold()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->lastPingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->lastPingTime:J

    new-instance v0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v2, 0x1

    const-string v3, "-"

    invoke-direct {v0, v1, v2, v3}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;-><init>(Lcom/zoho/wms/common/websocket/WebSocketV13;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$900(Lcom/zoho/wms/common/websocket/WebSocketV13;[B)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$900(Lcom/zoho/wms/common/websocket/WebSocketV13;[B)V

    invoke-virtual {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteFrame;->isCloseFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v0, 0x1f4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v2}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$600(Lcom/zoho/wms/common/websocket/WebSocketV13;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v1, "Network Timedout"

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$202(Lcom/zoho/wms/common/websocket/WebSocketV13;I)I

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$WriteThread;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-static {v0}, Lcom/zoho/wms/common/websocket/WebSocketV13;->access$700(Lcom/zoho/wms/common/websocket/WebSocketV13;)V

    return-void
.end method
