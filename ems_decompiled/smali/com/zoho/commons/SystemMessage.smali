.class public final enum Lcom/zoho/commons/SystemMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/commons/SystemMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/commons/SystemMessage;

.field public static final enum FEEDBACK_COMPLETED:Lcom/zoho/commons/SystemMessage;

.field public static final enum RATING_AND_FEEDBACK_COMPLETED:Lcom/zoho/commons/SystemMessage;

.field public static final enum RATING_COMPLETED:Lcom/zoho/commons/SystemMessage;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/zoho/commons/SystemMessage;

    const-string v1, "RATING_COMPLETED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zoho/commons/SystemMessage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zoho/commons/SystemMessage;->RATING_COMPLETED:Lcom/zoho/commons/SystemMessage;

    new-instance v1, Lcom/zoho/commons/SystemMessage;

    const-string v3, "FEEDBACK_COMPLETED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zoho/commons/SystemMessage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zoho/commons/SystemMessage;->FEEDBACK_COMPLETED:Lcom/zoho/commons/SystemMessage;

    new-instance v3, Lcom/zoho/commons/SystemMessage;

    const-string v5, "RATING_AND_FEEDBACK_COMPLETED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zoho/commons/SystemMessage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zoho/commons/SystemMessage;->RATING_AND_FEEDBACK_COMPLETED:Lcom/zoho/commons/SystemMessage;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/zoho/commons/SystemMessage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/zoho/commons/SystemMessage;->$VALUES:[Lcom/zoho/commons/SystemMessage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/commons/SystemMessage;
    .locals 1

    const-class v0, Lcom/zoho/commons/SystemMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/commons/SystemMessage;

    return-object p0
.end method

.method public static values()[Lcom/zoho/commons/SystemMessage;
    .locals 1

    sget-object v0, Lcom/zoho/commons/SystemMessage;->$VALUES:[Lcom/zoho/commons/SystemMessage;

    invoke-virtual {v0}, [Lcom/zoho/commons/SystemMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/commons/SystemMessage;

    return-object v0
.end method
