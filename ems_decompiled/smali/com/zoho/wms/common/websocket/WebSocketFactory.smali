.class public Lcom/zoho/wms/common/websocket/WebSocketFactory;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NORMAL:I = 0x1

.field public static final QUERY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSocket(Ljava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zoho/wms/common/websocket/WebSocketFactory;->createSocket(Ljava/lang/String;I)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object p0

    return-object p0
.end method

.method public static createSocket(Ljava/lang/String;I)Lcom/zoho/wms/common/websocket/WebSocket;
    .locals 1

    const-string v0, "v13"

    invoke-static {p0, p1, v0}, Lcom/zoho/wms/common/websocket/WebSocketFactory;->createSocket(Ljava/lang/String;ILjava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;

    move-result-object p0

    return-object p0
.end method

.method public static createSocket(Ljava/lang/String;ILjava/lang/String;)Lcom/zoho/wms/common/websocket/WebSocket;
    .locals 1

    const-string v0, "v13"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    new-instance p1, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;

    invoke-direct {p1, p0}, Lcom/zoho/wms/common/websocket/WebSocketQueryV13;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {p1, p0}, Lcom/zoho/wms/common/websocket/WebSocketV13;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/zoho/wms/common/exception/WMSCommunicationException;

    const-string p1, "Unsupported Version"

    invoke-direct {p0, p1}, Lcom/zoho/wms/common/exception/WMSCommunicationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
