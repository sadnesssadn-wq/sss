.class public Lcom/zoho/livechat/android/utils/DateUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static timebreakstrings:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "s"

    const-string v1, "1m ago"

    const-string v2, "m"

    const-string v3, "1h ago"

    const-string v4, "h"

    const-string v5, "Yesterday"

    const-string v6, "days"

    const-string v7, "Last week"

    const-string v8, "weeks"

    const-string v9, "Last month"

    const-string v10, "months"

    const-string v11, "Last year"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/utils/DateUtil;->timebreakstrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEndChatTimerTime(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zoho/livechat/android/utils/DateUtil;->timebreakstrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeDifference(J)Ljava/lang/String;
    .locals 14

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    const/16 p0, 0xc

    new-array p1, p0, [J

    fill-array-data p1, :array_0

    const-string v2, ""

    const-string v3, "1 minute from now"

    const-string v4, ""

    const-string v5, "1 hour from now"

    const-string v6, ""

    const-string v7, "Tomorrow"

    const-string v8, ""

    const-string v9, "Next week"

    const-string v10, ""

    const-string v11, "Next month"

    const-string v12, ""

    const-string v13, "Next year"

    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v2

    new-array v3, p0, [J

    fill-array-data v3, :array_1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const-string p0, "Just now"

    goto :goto_2

    :cond_0
    const/4 v6, 0x2

    cmp-long v7, v0, v4

    if-gez v7, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-string v4, "from now"

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    const-string v4, "ago"

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, p0, :cond_5

    aget-wide v8, p1, v7

    cmp-long v10, v0, v8

    if-gez v10, :cond_4

    rem-int/lit8 p0, v7, 0x2

    if-nez p0, :cond_2

    long-to-double p0, v0

    aget-wide v0, v3, v7

    long-to-double v0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/zoho/livechat/android/utils/DateUtil;->timebreakstrings:[Ljava/lang/String;

    aget-object p0, p0, v7

    const-string p1, " "

    invoke-static {v0, p0, p1, v4}, Lc/a/a/a/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    if-ne v5, v6, :cond_3

    aget-object p0, v2, v7

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/zoho/livechat/android/utils/DateUtil;->timebreakstrings:[Ljava/lang/String;

    aget-object p0, p0, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const-string p0, ""

    :goto_2
    return-object p0

    nop

    :array_0
    .array-data 8
        0x3c
        0x78
        0xe10
        0x1c20
        0x15180
        0x2a300
        0x93a80
        0x127500
        0x24ea00
        0x49d400
        0x1baf800
        0x375f000
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x0
        0x3c
        0x0
        0xe10
        0x0
        0x15180
        0x0
        0x93a80
        0x0
        0x24ea00
        0x0
    .end array-data
.end method
