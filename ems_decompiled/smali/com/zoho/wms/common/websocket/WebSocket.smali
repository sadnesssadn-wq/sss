.class public abstract Lcom/zoho/wms/common/websocket/WebSocket;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public headers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public inprogress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocket;->inprogress:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocket;->headers:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public abstract addCookie(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public addCookies(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zoho/wms/common/websocket/WebSocket;->addCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocket;->headers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addHeaders(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/zoho/wms/common/websocket/WebSocket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract close()V
.end method

.method public abstract connect()V
.end method

.method public abstract hold()V
.end method

.method public abstract isHold()Z
.end method

.method public isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/wms/common/websocket/WebSocket;->inprogress:Z

    return v0
.end method

.method public processCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    new-instance p1, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string v0, "Unsupported Operation"

    invoke-direct {p1, v0}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract resume()V
.end method

.method public abstract setHandler(Lcom/zoho/wms/common/websocket/WebSocketHandler;)V
.end method

.method public abstract write(Ljava/lang/String;)Z
.end method
