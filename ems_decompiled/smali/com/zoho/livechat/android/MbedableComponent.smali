.class public final enum Lcom/zoho/livechat/android/MbedableComponent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/MbedableComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/MbedableComponent;

.field public static final enum CHAT:Lcom/zoho/livechat/android/MbedableComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zoho/livechat/android/MbedableComponent;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/MbedableComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/livechat/android/MbedableComponent;->CHAT:Lcom/zoho/livechat/android/MbedableComponent;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/zoho/livechat/android/MbedableComponent;

    aput-object v0, v1, v2

    sput-object v1, Lcom/zoho/livechat/android/MbedableComponent;->$VALUES:[Lcom/zoho/livechat/android/MbedableComponent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/MbedableComponent;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/MbedableComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/MbedableComponent;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/MbedableComponent;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/MbedableComponent;->$VALUES:[Lcom/zoho/livechat/android/MbedableComponent;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/MbedableComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/MbedableComponent;

    return-object v0
.end method
