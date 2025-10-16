.class public final enum Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/provider/ZohoLDContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NOTTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

.field public static final enum SIQ:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

.field public static final enum WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const-string v1, "WMS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    new-instance v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const-string v3, "SIQ"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->SIQ:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->$VALUES:[Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->$VALUES:[Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    return-object v0
.end method
