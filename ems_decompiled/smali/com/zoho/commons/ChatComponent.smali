.class public final enum Lcom/zoho/commons/ChatComponent;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/commons/ChatComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/commons/ChatComponent;

.field public static final enum Feedback:Lcom/zoho/commons/ChatComponent;

.field public static final enum Operator_Image:Lcom/zoho/commons/ChatComponent;

.field public static final enum Rating:Lcom/zoho/commons/ChatComponent;

.field public static final enum Screenshot:Lcom/zoho/commons/ChatComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/zoho/commons/ChatComponent;

    const-string v1, "Operator_Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/commons/ChatComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/commons/ChatComponent;->Operator_Image:Lcom/zoho/commons/ChatComponent;

    new-instance v1, Lcom/zoho/commons/ChatComponent;

    const-string v3, "Rating"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zoho/commons/ChatComponent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zoho/commons/ChatComponent;->Rating:Lcom/zoho/commons/ChatComponent;

    new-instance v3, Lcom/zoho/commons/ChatComponent;

    const-string v5, "Feedback"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zoho/commons/ChatComponent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zoho/commons/ChatComponent;->Feedback:Lcom/zoho/commons/ChatComponent;

    new-instance v5, Lcom/zoho/commons/ChatComponent;

    const-string v7, "Screenshot"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/zoho/commons/ChatComponent;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zoho/commons/ChatComponent;->Screenshot:Lcom/zoho/commons/ChatComponent;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/zoho/commons/ChatComponent;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/zoho/commons/ChatComponent;->$VALUES:[Lcom/zoho/commons/ChatComponent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/commons/ChatComponent;
    .locals 1

    const-class v0, Lcom/zoho/commons/ChatComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/commons/ChatComponent;

    return-object p0
.end method

.method public static values()[Lcom/zoho/commons/ChatComponent;
    .locals 1

    sget-object v0, Lcom/zoho/commons/ChatComponent;->$VALUES:[Lcom/zoho/commons/ChatComponent;

    invoke-virtual {v0}, [Lcom/zoho/commons/ChatComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/commons/ChatComponent;

    return-object v0
.end method
