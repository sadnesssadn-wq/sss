.class public Lcom/zoho/livechat/android/models/SalesIQBotMessageID;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private id:Ljava/lang/String;

.field private message_sequence:I

.field private messages_count:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQBotMessageID;->id:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQBotMessageID;->messages_count:I

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQBotMessageID;->message_sequence:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQBotMessageID;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSequence()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQBotMessageID;->message_sequence:I

    return v0
.end method

.method public getMessagesCount()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQBotMessageID;->messages_count:I

    return v0
.end method
