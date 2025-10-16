.class public Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackEvent"
.end annotation


# static fields
.field public static final TYPE_MESSAGE:I = 0x2

.field public static final TYPE_OPEN:I = 0x1


# instance fields
.field private details:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/websocket/WebSocketV13;I)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->this$0:Lcom/zoho/wms/common/websocket/WebSocketV13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, -0xa

    iput p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->type:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->details:Ljava/util/HashMap;

    iput p2, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->type:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->details:Ljava/util/HashMap;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->details:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->type:I

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/websocket/WebSocketV13$CallbackEvent;->details:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
