.class public Lcom/zoho/messenger/api/constants/ChatInfoMessage;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final HAS_ENTERED_TEXT:Lcom/zoho/messenger/api/constants/ChatInfoMessage;

.field public static final IDLE:Lcom/zoho/messenger/api/constants/ChatInfoMessage;

.field public static final TYPING:Lcom/zoho/messenger/api/constants/ChatInfoMessage;


# instance fields
.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Lcom/zoho/messenger/api/constants/ChatInfoMessage;-><init>(I)V

    sput-object v0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->TYPING:Lcom/zoho/messenger/api/constants/ChatInfoMessage;

    new-instance v0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/zoho/messenger/api/constants/ChatInfoMessage;-><init>(I)V

    sput-object v0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->IDLE:Lcom/zoho/messenger/api/constants/ChatInfoMessage;

    new-instance v0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lcom/zoho/messenger/api/constants/ChatInfoMessage;-><init>(I)V

    sput-object v0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->HAS_ENTERED_TEXT:Lcom/zoho/messenger/api/constants/ChatInfoMessage;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->type:I

    iput p1, p0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->type:I

    return-void
.end method


# virtual methods
.method public getNumericType()I
    .locals 1

    iget v0, p0, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->type:I

    return v0
.end method
