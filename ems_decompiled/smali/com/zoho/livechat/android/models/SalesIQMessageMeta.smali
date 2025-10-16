.class public Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;,
        Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;,
        Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;,
        Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;
    }
.end annotation


# instance fields
.field private cardData:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;

.field private displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

.field private hand_off:Z

.field private inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

.field private message_delay:I

.field private skippable:Z

.field private suggestions:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "input_card"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-direct {v1, p0, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;-><init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    :cond_0
    const-string v0, "display_card"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-direct {v1, p0, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;-><init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    :cond_1
    const-string v0, "suggestions"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->suggestions:Ljava/util/ArrayList;

    const-string v0, "hand_off"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->hand_off:Z

    :cond_2
    const-string v0, "card_data"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Hashtable;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-direct {v1, p0, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;-><init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->cardData:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;

    :cond_3
    const-string v0, "typing_delay"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->message_delay:I

    const-string v0, "skippable"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->skippable:Z

    :cond_4
    return-void
.end method

.method private toHashtable()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->toHashtable()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "input_card"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->toHashtable()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "display_card"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->cardData:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->access$100(Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "card_data"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->suggestions:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const-string v2, "suggestions"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->hand_off:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hand_off"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->message_delay:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typing_delay"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->skippable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "skippable"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getCardData()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->cardData:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;

    return-object v0
.end method

.method public getDisplayCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    return-object v0
.end method

.method public getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    return-object v0
.end method

.method public getMessageDelay()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->message_delay:I

    return v0
.end method

.method public getMessageType(I)I
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    const-string v1, "location"

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "select"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x9

    return p1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multiple-select"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xd

    return p1

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "happiness-rating"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0xb

    return p1

    :cond_2
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p1, 0xc

    return p1

    :cond_3
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0xe

    return p1

    :cond_4
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "timeslots"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p1, 0x11

    return p1

    :cond_5
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "date-timeslots"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0x12

    return p1

    :cond_6
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "range-calendar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p1, 0x10

    return p1

    :cond_7
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "slider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p1, 0x14

    return p1

    :cond_8
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "range-slider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0x15

    return p1

    :cond_9
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "star-rating"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p1, 0xf

    return p1

    :cond_a
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->inputCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x13

    return p1

    :cond_b
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "links"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0xa

    return p1

    :cond_c
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "articles"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x16

    return p1

    :cond_d
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->displayCard:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->getImage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 p1, 0x8

    return p1

    :cond_e
    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->cardData:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p1, 0x18

    :cond_f
    return p1
.end method

.method public getSuggestions()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->suggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isHandOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->hand_off:Z

    return v0
.end method

.method public isSkippable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->skippable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->toHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
