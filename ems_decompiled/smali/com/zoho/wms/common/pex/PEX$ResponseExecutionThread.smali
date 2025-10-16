.class public Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/pex/PEX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResponseExecutionThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/wms/common/pex/PEX;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/pex/PEX;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/Hashtable;)V
    .locals 8

    const-string v0, "eid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$500(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXConnectionHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/zoho/wms/common/pex/PEXConnectionHandler;->onMessage(Ljava/util/Hashtable;)V

    goto/16 :goto_6

    :cond_0
    const-string v1, ""

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rs"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v2}, Lcom/zoho/wms/common/pex/PEX;->access$100(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zoho/wms/common/pex/PEXEvent;

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->getHandler()Lcom/zoho/wms/common/pex/PEXEventHandler;

    move-result-object v3

    if-eqz v3, :cond_9

    if-ltz v1, :cond_8

    :try_start_0
    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->getResponse()Lcom/zoho/wms/common/pex/PEXResponse;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "d"

    const-string v6, "res"

    if-eqz v4, :cond_2

    :try_start_1
    invoke-virtual {v4}, Lcom/zoho/wms/common/pex/PEXResponse;->isProgressive()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->isProgTask()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/zoho/wms/common/pex/PEXResponse;->addResponse(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/zoho/wms/common/pex/PEXResponse;->addResponse(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->isTask()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->isProgTask()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/zoho/wms/common/pex/PEXResponse;

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->isProgRequest()Z

    move-result v5

    invoke-direct {v4, p1, v5}, Lcom/zoho/wms/common/pex/PEXResponse;-><init>(Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->isProgTask()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance p1, Lcom/zoho/wms/common/pex/PEXResponse;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/zoho/wms/common/pex/PEXEvent;->isProgTask()Z

    move-result v5

    invoke-direct {p1, v4, v5}, Lcom/zoho/wms/common/pex/PEXResponse;-><init>(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/zoho/wms/common/pex/PEXResponse;

    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/zoho/wms/common/pex/PEXResponse;-><init>(Ljava/lang/Object;)V

    move-object p1, v4

    :goto_1
    move-object v4, p1

    :goto_2
    invoke-virtual {v2, v4}, Lcom/zoho/wms/common/pex/PEXEvent;->setResponse(Lcom/zoho/wms/common/pex/PEXResponse;)V

    :cond_6
    :goto_3
    sget-object p1, Lcom/zoho/wms/common/pex/PEXReadyState;->LOADING:Lcom/zoho/wms/common/pex/PEXReadyState;

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXReadyState;->getReadyState()I

    move-result p1

    if-ne v1, p1, :cond_7

    invoke-interface {v3, v4}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onProgress(Lcom/zoho/wms/common/pex/PEXResponse;)V

    goto :goto_6

    :cond_7
    sget-object p1, Lcom/zoho/wms/common/pex/PEXReadyState;->COMPLETED:Lcom/zoho/wms/common/pex/PEXReadyState;

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXReadyState;->getReadyState()I

    move-result p1

    if-ne v1, p1, :cond_9

    invoke-interface {v3, v4}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onSuccess(Lcom/zoho/wms/common/pex/PEXResponse;)V

    const/4 p1, 0x1

    invoke-interface {v3, v4, p1}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$200(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXTimeOutListener;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zoho/wms/common/TimeOutListener;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    :goto_4
    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$100(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/zoho/wms/common/pex/PEXError;

    const-string v4, "err"

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    invoke-direct {v1, p1}, Lcom/zoho/wms/common/pex/PEXError;-><init>(Ljava/util/Hashtable;)V

    invoke-interface {v3, v1}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onFailure(Lcom/zoho/wms/common/pex/PEXError;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-interface {v3, p1, v1}, Lcom/zoho/wms/common/pex/PEXEventHandler;->onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {p1}, Lcom/zoho/wms/common/pex/PEX;->access$200(Lcom/zoho/wms/common/pex/PEX;)Lcom/zoho/wms/common/pex/PEXTimeOutListener;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/zoho/wms/common/TimeOutListener;->remove(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    goto :goto_4

    :goto_5
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_6
    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$800(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v1}, Lcom/zoho/wms/common/pex/PEX;->access$800(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/LinkedBlockingQueue;

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

    check-cast v1, Ljava/util/Hashtable;

    invoke-virtual {p0, v1}, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->execute(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$000(Lcom/zoho/wms/common/pex/PEX;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->this$0:Lcom/zoho/wms/common/pex/PEX;

    invoke-static {v0}, Lcom/zoho/wms/common/pex/PEX;->access$800(Lcom/zoho/wms/common/pex/PEX;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Lcom/zoho/wms/common/pex/PEX$ResponseExecutionThread;->execute(Ljava/util/Hashtable;)V

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
