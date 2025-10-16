.class public Lcom/zoho/wms/common/websocket/WebSocketV13$OPCode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/websocket/WebSocketV13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OPCode"
.end annotation


# static fields
.field public static final BINARY:I = 0x2

.field public static final CLOSE:I = 0x8

.field public static final CONTINUATION:I = 0x0

.field public static final PING:I = 0x9

.field public static final PONG:I = 0xa

.field public static final TEXT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
