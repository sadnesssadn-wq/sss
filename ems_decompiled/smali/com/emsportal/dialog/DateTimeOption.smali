.class public final enum Lcom/emsportal/dialog/DateTimeOption;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/emsportal/dialog/DateTimeOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/emsportal/dialog/DateTimeOption;

.field public static final enum FOURTEEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

.field public static final enum LAST_MONTH:Lcom/emsportal/dialog/DateTimeOption;

.field public static final enum OPTION:Lcom/emsportal/dialog/DateTimeOption;

.field public static final enum SENVEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

.field public static final enum THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

.field public static final enum THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/emsportal/dialog/DateTimeOption;

    const-string v1, "OPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/emsportal/dialog/DateTimeOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/emsportal/dialog/DateTimeOption;->OPTION:Lcom/emsportal/dialog/DateTimeOption;

    new-instance v1, Lcom/emsportal/dialog/DateTimeOption;

    const-string v3, "THIS_MONTH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/emsportal/dialog/DateTimeOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    new-instance v3, Lcom/emsportal/dialog/DateTimeOption;

    const-string v5, "LAST_MONTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/emsportal/dialog/DateTimeOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/emsportal/dialog/DateTimeOption;->LAST_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    new-instance v5, Lcom/emsportal/dialog/DateTimeOption;

    const-string v7, "SENVEN_DAY_AGO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/emsportal/dialog/DateTimeOption;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/emsportal/dialog/DateTimeOption;->SENVEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    new-instance v7, Lcom/emsportal/dialog/DateTimeOption;

    const-string v9, "FOURTEEN_DAY_AGO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/emsportal/dialog/DateTimeOption;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/emsportal/dialog/DateTimeOption;->FOURTEEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    new-instance v9, Lcom/emsportal/dialog/DateTimeOption;

    const-string v11, "THIRDTY_DAY_AGO"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/emsportal/dialog/DateTimeOption;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/emsportal/dialog/DateTimeOption;->THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/emsportal/dialog/DateTimeOption;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/emsportal/dialog/DateTimeOption;->$VALUES:[Lcom/emsportal/dialog/DateTimeOption;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/emsportal/dialog/DateTimeOption;
    .locals 1

    const-class v0, Lcom/emsportal/dialog/DateTimeOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/emsportal/dialog/DateTimeOption;

    return-object p0
.end method

.method public static values()[Lcom/emsportal/dialog/DateTimeOption;
    .locals 1

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->$VALUES:[Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {v0}, [Lcom/emsportal/dialog/DateTimeOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/emsportal/dialog/DateTimeOption;

    return-object v0
.end method
