.class public Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputCard"
.end annotation


# instance fields
.field private dateSlots:Ljava/util/Hashtable;

.field private format:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private level:I

.field private longitude:Ljava/lang/String;

.field private max_selection:I

.field private options:Ljava/util/ArrayList;

.field private radius:Ljava/lang/String;

.field public final synthetic this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

.field private time:Z

.field private timeSlots:Ljava/util/ArrayList;

.field private timeformat:Ljava/lang/String;

.field private to:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private tz:Z

.field private values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V
    .locals 1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "type"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->type:Ljava/lang/String;

    const-string p1, "options"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->options:Ljava/util/ArrayList;

    const-string p1, "level"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->level:I

    :cond_0
    const-string p1, "max_selection"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->max_selection:I

    :cond_1
    const-string p1, "time"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->time:Z

    :cond_2
    const-string p1, "tz"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->tz:Z

    :cond_3
    const-string p1, "to"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->to:Ljava/lang/String;

    const-string p1, "from"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->from:Ljava/lang/String;

    const-string p1, "format"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->format:Ljava/lang/String;

    const-string p1, "timeformat"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->timeformat:Ljava/lang/String;

    const-string p1, "slots"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->timeSlots:Ljava/util/ArrayList;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/util/Hashtable;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->dateSlots:Ljava/util/Hashtable;

    :cond_5
    :goto_0
    const-string p1, "values"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->values:Ljava/util/ArrayList;

    const-string p1, "label"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->label:Ljava/lang/String;

    const-string p1, "radius"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->radius:Ljava/lang/String;

    const-string p1, "lat"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->latitude:Ljava/lang/String;

    const-string p1, "lng"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->longitude:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDateSlots()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->dateSlots:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->level:I

    return v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSelection()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->max_selection:I

    return v0
.end method

.method public getOptions()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->options:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRadius()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->radius:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSlots()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->timeSlots:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimeformat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->timeformat:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->values:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->time:Z

    return v0
.end method

.method public isTz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->tz:Z

    return v0
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->options:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->level:I

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->max_selection:I

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "max_selection"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->time:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->tz:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "tz"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->from:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->to:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "to"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->format:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->timeformat:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v2, "timeformat"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->timeSlots:Ljava/util/ArrayList;

    const-string v2, "slots"

    if-eqz v1, :cond_7

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->dateSlots:Ljava/util/Hashtable;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->values:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->label:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->radius:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v2, "radius"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v2, "lng"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->toHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
