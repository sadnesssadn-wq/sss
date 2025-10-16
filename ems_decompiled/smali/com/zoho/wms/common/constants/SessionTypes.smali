.class public Lcom/zoho/wms/common/constants/SessionTypes;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BROWSER:I = 0x1

.field public static final DMS:I = 0x8

.field public static final JABBER:I = 0x2

.field public static final LIVE_HTTP:I = 0x10

.field public static final MS_SYNC:I = 0x4

.field public static final PEX_MOBILE:I = 0x40

.field public static final S2S:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEngine(I)I
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
