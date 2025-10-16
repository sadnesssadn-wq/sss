.class public final enum Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/comm/LiveChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

.field public static final enum CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

.field public static final enum CONNECTING:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

.field public static final enum DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

.field public static final enum RECONNECT:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTING:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    new-instance v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const-string v3, "DISCONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->DISCONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    new-instance v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const-string v5, "RECONNECT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->RECONNECT:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    new-instance v5, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const-string v7, "CONNECTED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->$VALUES:[Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    .locals 1

    const-class v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    return-object p0
.end method

.method public static values()[Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->$VALUES:[Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    invoke-virtual {v0}, [Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    return-object v0
.end method
