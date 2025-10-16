.class public final enum Lcom/zoho/messenger/api/constants/MType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zoho/messenger/api/constants/MType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_ACS_MSG:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_CONTACTS_DETAILS:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_CONTACTS_MSG:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_CONTACTS_UPDATE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_CROSSPRD_MSG:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_CUSTOM_MSG:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_JOIN:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_ATTACH:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_IDLE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_INFOMSG:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_INVITE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_MEMBERADD:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_MEMBERDELETE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_REMOVE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_TITLECHANGE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_TXTENTRD:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_TYPING:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_NFY_USERSTATUS:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_STATUS_CHANGE:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum WM_TXT_MSG:Lcom/zoho/messenger/api/constants/MType;

.field public static final enum ZOHO_MSG:Lcom/zoho/messenger/api/constants/MType;


# instance fields
.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/zoho/messenger/api/constants/MType;

    const-string v1, "ZOHO_MSG"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zoho/messenger/api/constants/MType;->ZOHO_MSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v1, Lcom/zoho/messenger/api/constants/MType;

    const-string v4, "WM_CUSTOM_MSG"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/zoho/messenger/api/constants/MType;->WM_CUSTOM_MSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v4, Lcom/zoho/messenger/api/constants/MType;

    const-string v6, "WM_CROSSPRD_MSG"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/zoho/messenger/api/constants/MType;->WM_CROSSPRD_MSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v6, Lcom/zoho/messenger/api/constants/MType;

    const-string v8, "WM_JOIN"

    const/4 v9, 0x3

    const/16 v10, 0xa

    invoke-direct {v6, v8, v9, v10}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/zoho/messenger/api/constants/MType;->WM_JOIN:Lcom/zoho/messenger/api/constants/MType;

    new-instance v8, Lcom/zoho/messenger/api/constants/MType;

    const-string v11, "WM_TXT_MSG"

    const/16 v12, 0xc

    invoke-direct {v8, v11, v7, v12}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/zoho/messenger/api/constants/MType;->WM_TXT_MSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v11, Lcom/zoho/messenger/api/constants/MType;

    const-string v13, "WM_NFY_USERSTATUS"

    const/4 v14, 0x5

    const/16 v15, 0xd

    invoke-direct {v11, v13, v14, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_USERSTATUS:Lcom/zoho/messenger/api/constants/MType;

    new-instance v13, Lcom/zoho/messenger/api/constants/MType;

    const-string v14, "WM_NFY_MEMBERADD"

    const/4 v7, 0x6

    const/16 v9, 0xe

    invoke-direct {v13, v14, v7, v9}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_MEMBERADD:Lcom/zoho/messenger/api/constants/MType;

    new-instance v14, Lcom/zoho/messenger/api/constants/MType;

    const-string v7, "WM_NFY_MEMBERDELETE"

    const/4 v5, 0x7

    const/16 v3, 0xf

    invoke-direct {v14, v7, v5, v3}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_MEMBERDELETE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v7, Lcom/zoho/messenger/api/constants/MType;

    const-string v5, "WM_NFY_INFOMSG"

    const/16 v2, 0x8

    const/16 v3, 0x10

    invoke-direct {v7, v5, v2, v3}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_INFOMSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v5, Lcom/zoho/messenger/api/constants/MType;

    const-string v2, "WM_NFY_TITLECHANGE"

    const/16 v3, 0x9

    const/16 v9, 0x13

    invoke-direct {v5, v2, v3, v9}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_TITLECHANGE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v2, Lcom/zoho/messenger/api/constants/MType;

    const-string v3, "WM_NFY_ATTACH"

    const/16 v9, 0x14

    invoke-direct {v2, v3, v10, v9}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_ATTACH:Lcom/zoho/messenger/api/constants/MType;

    new-instance v3, Lcom/zoho/messenger/api/constants/MType;

    const-string v10, "WM_NFY_INVITE"

    const/16 v9, 0xb

    const/16 v15, 0x15

    invoke-direct {v3, v10, v9, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_INVITE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v10, Lcom/zoho/messenger/api/constants/MType;

    const-string v9, "WM_NFY_REMOVE"

    const/16 v15, 0x16

    invoke-direct {v10, v9, v12, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_REMOVE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v9, Lcom/zoho/messenger/api/constants/MType;

    const-string v15, "WM_STATUS_CHANGE"

    const/16 v12, 0x17

    move-object/from16 v16, v10

    const/16 v10, 0xd

    invoke-direct {v9, v15, v10, v12}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_STATUS_CHANGE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v10, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_CONTACTS_UPDATE"

    const/16 v15, 0x1b

    move-object/from16 v17, v9

    const/16 v9, 0xe

    invoke-direct {v10, v12, v9, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/messenger/api/constants/MType;->WM_CONTACTS_UPDATE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v9, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_CONTACTS_DETAILS"

    const/16 v15, 0x34

    move-object/from16 v18, v10

    const/16 v10, 0xf

    invoke-direct {v9, v12, v10, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_CONTACTS_DETAILS:Lcom/zoho/messenger/api/constants/MType;

    new-instance v10, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_ACS_MSG"

    const/16 v15, 0x2b

    move-object/from16 v19, v9

    const/16 v9, 0x10

    invoke-direct {v10, v12, v9, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/messenger/api/constants/MType;->WM_ACS_MSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v9, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_CONTACTS_MSG"

    const/16 v15, 0x11

    move-object/from16 v20, v10

    const/16 v10, 0x66

    invoke-direct {v9, v12, v15, v10}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_CONTACTS_MSG:Lcom/zoho/messenger/api/constants/MType;

    new-instance v10, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_NFY_TYPING"

    const/16 v15, 0x12

    move-object/from16 v21, v9

    const/16 v9, 0x68

    invoke-direct {v10, v12, v15, v9}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_TYPING:Lcom/zoho/messenger/api/constants/MType;

    new-instance v9, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_NFY_IDLE"

    const/16 v15, 0x69

    move-object/from16 v22, v10

    const/16 v10, 0x13

    invoke-direct {v9, v12, v10, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_IDLE:Lcom/zoho/messenger/api/constants/MType;

    new-instance v10, Lcom/zoho/messenger/api/constants/MType;

    const-string v12, "WM_NFY_TXTENTRD"

    const/16 v15, 0x6e

    move-object/from16 v23, v9

    const/16 v9, 0x14

    invoke-direct {v10, v12, v9, v15}, Lcom/zoho/messenger/api/constants/MType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/zoho/messenger/api/constants/MType;->WM_NFY_TXTENTRD:Lcom/zoho/messenger/api/constants/MType;

    const/16 v9, 0x15

    new-array v9, v9, [Lcom/zoho/messenger/api/constants/MType;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    const/4 v0, 0x1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    aput-object v8, v9, v0

    const/4 v0, 0x5

    aput-object v11, v9, v0

    const/4 v0, 0x6

    aput-object v13, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    const/16 v0, 0x9

    aput-object v5, v9, v0

    const/16 v0, 0xa

    aput-object v2, v9, v0

    const/16 v0, 0xb

    aput-object v3, v9, v0

    const/16 v0, 0xc

    aput-object v16, v9, v0

    const/16 v0, 0xd

    aput-object v17, v9, v0

    const/16 v0, 0xe

    aput-object v18, v9, v0

    const/16 v0, 0xf

    aput-object v19, v9, v0

    const/16 v0, 0x10

    aput-object v20, v9, v0

    const/16 v0, 0x11

    aput-object v21, v9, v0

    const/16 v0, 0x12

    aput-object v22, v9, v0

    const/16 v0, 0x13

    aput-object v23, v9, v0

    const/16 v0, 0x14

    aput-object v10, v9, v0

    sput-object v9, Lcom/zoho/messenger/api/constants/MType;->$VALUES:[Lcom/zoho/messenger/api/constants/MType;

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

    iput p3, p0, Lcom/zoho/messenger/api/constants/MType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zoho/messenger/api/constants/MType;
    .locals 1

    const-class v0, Lcom/zoho/messenger/api/constants/MType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zoho/messenger/api/constants/MType;

    return-object p0
.end method

.method public static values()[Lcom/zoho/messenger/api/constants/MType;
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/constants/MType;->$VALUES:[Lcom/zoho/messenger/api/constants/MType;

    invoke-virtual {v0}, [Lcom/zoho/messenger/api/constants/MType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zoho/messenger/api/constants/MType;

    return-object v0
.end method


# virtual methods
.method public getNumericType()I
    .locals 1

    iget v0, p0, Lcom/zoho/messenger/api/constants/MType;->type:I

    return v0
.end method
