.class public Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private iconResID:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->title:Ljava/lang/String;

    iput p2, p0, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->iconResID:I

    return-void
.end method


# virtual methods
.method public getIconResID()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->iconResID:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQAttachmentDialog;->title:Ljava/lang/String;

    return-object v0
.end method
