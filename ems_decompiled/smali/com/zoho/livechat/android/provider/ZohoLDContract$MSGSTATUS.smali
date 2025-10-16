.class public final enum Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MSGSTATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum OFFLINE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum ONPROGRESS:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum ONSUCCESS:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

.field public static final enum TIMEOUT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v1, "NOTSENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->NOTSENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v3, "SENDING"

    const/4 v4, 0x1

    const/4 v5, 0x5

    invoke-direct {v1, v3, v4, v5}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENDING:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v6, "ONPROGRESS"

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-direct {v3, v6, v7, v8}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->ONPROGRESS:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v8, "ONSUCCESS"

    const/4 v9, 0x3

    const/16 v10, 0xf

    invoke-direct {v6, v8, v9, v10}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->ONSUCCESS:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v8, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v10, "SENT"

    const/4 v11, 0x4

    const/16 v12, 0x14

    invoke-direct {v8, v10, v11, v12}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->SENT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v10, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v12, "DELIVERED"

    const/16 v13, 0x17

    invoke-direct {v10, v12, v5, v13}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v12, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v13, "FAILURE"

    const/4 v14, 0x6

    const/16 v15, 0x19

    invoke-direct {v12, v13, v14, v15}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v13, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v15, "TIMEOUT"

    const/4 v14, 0x7

    const/16 v5, 0x1e

    invoke-direct {v13, v15, v14, v5}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->TIMEOUT:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    new-instance v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const-string v15, "OFFLINE"

    const/16 v14, 0x8

    const/16 v11, 0x1f

    invoke-direct {v5, v15, v14, v11}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->OFFLINE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    const/16 v11, 0x9

    new-array v11, v11, [Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v7

    aput-object v6, v11, v9

    const/4 v0, 0x4

    aput-object v8, v11, v0

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    const/4 v0, 0x7

    aput-object v13, v11, v0

    aput-object v5, v11, v14

    sput-object v11, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->$VALUES:[Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->$VALUES:[Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value:I

    return v0
.end method
