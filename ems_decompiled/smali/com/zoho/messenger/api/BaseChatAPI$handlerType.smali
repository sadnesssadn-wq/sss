.class public final enum Lcom/zoho/messenger/api/BaseChatAPI$handlerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/messenger/api/BaseChatAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "handlerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/messenger/api/BaseChatAPI$handlerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum BOT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum CHANNEL:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum CUSTOMCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum ENTITYCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum PRESENCE_CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

.field public static final enum SERVICECHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;


# instance fields
.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v4, "COLLABORATION"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v4, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v6, "SERVICECHAT"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->SERVICECHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v6, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v8, "CUSTOMCHAT"

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-direct {v6, v8, v9, v10}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CUSTOMCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v8, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v11, "PRESENCE_CHAT"

    const/4 v12, 0x6

    invoke-direct {v8, v11, v7, v12}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->PRESENCE_CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v11, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v13, "CHANNEL"

    const/16 v14, 0x8

    invoke-direct {v11, v13, v10, v14}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHANNEL:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v13, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v15, "BOT"

    const/16 v10, 0x9

    invoke-direct {v13, v15, v12, v10}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->BOT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-instance v10, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string v15, "ENTITYCHAT"

    const/4 v12, 0x7

    const/16 v7, 0xa

    invoke-direct {v10, v15, v12, v7}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->ENTITYCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    new-array v7, v14, [Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    const/4 v0, 0x4

    aput-object v8, v7, v0

    const/4 v0, 0x5

    aput-object v11, v7, v0

    const/4 v0, 0x6

    aput-object v13, v7, v0

    aput-object v10, v7, v12

    sput-object v7, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->$VALUES:[Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

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

    iput p3, p0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/messenger/api/BaseChatAPI$handlerType;
    .locals 1

    const-class v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    return-object p0
.end method

.method public static values()[Lcom/zoho/messenger/api/BaseChatAPI$handlerType;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->$VALUES:[Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-virtual {v0}, [Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    return-object v0
.end method


# virtual methods
.method public getNumericType()I
    .locals 1

    iget v0, p0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->type:I

    return v0
.end method
