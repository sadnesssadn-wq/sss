.class public final enum Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/constants/UrlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCenter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum AU:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum CN:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum EU:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum FUJI_PRODUCTION:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum FUJI_STAGE:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum IN:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

.field public static final enum US:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;


# instance fields
.field private domain:Ljava/lang/String;

.field private sufix:Ljava/lang/String;

.field private trackingDomain:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v1, "US"

    const/4 v2, 0x0

    const-string v3, ".zoho"

    const-string v4, ".zohopublic"

    const-string v5, ".com"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->US:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    new-instance v0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v8, "EU"

    const/4 v9, 0x1

    const-string v10, ".zoho"

    const-string v11, ".zohopublic"

    const-string v12, ".eu"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->EU:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    new-instance v1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v14, "CN"

    const/4 v15, 0x2

    const-string v16, ".zoho"

    const-string v17, ".zohopublic"

    const-string v18, ".com.cn"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->CN:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    new-instance v2, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v8, "IN"

    const/4 v9, 0x3

    const-string v10, ".zoho"

    const-string v11, ".zohopublic"

    const-string v12, ".in"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->IN:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    new-instance v3, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v14, "AU"

    const/4 v15, 0x4

    const-string v16, ".zoho"

    const-string v17, ".zohopublic"

    const-string v18, ".com.au"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->AU:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    new-instance v4, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v8, "FUJI_STAGE"

    const/4 v9, 0x5

    const-string v10, ".stage.skydesk"

    const-string v11, ".stage.skydeskpublic"

    const-string v12, ".jp"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->FUJI_STAGE:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    new-instance v5, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const-string v14, "FUJI_PRODUCTION"

    const/4 v15, 0x6

    const-string v16, ".skydesk"

    const-string v17, ".skydeskpublic"

    const-string v18, ".jp"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->FUJI_PRODUCTION:Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    sput-object v7, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->$VALUES:[Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->trackingDomain:Ljava/lang/String;

    iput-object p5, p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->sufix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->$VALUES:[Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;

    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getSufix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->sufix:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/constants/UrlUtil$DataCenter;->trackingDomain:Ljava/lang/String;

    return-object v0
.end method
