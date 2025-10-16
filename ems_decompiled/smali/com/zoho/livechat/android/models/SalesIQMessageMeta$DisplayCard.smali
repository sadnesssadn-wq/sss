.class public Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayCard"
.end annotation


# instance fields
.field private articles:Ljava/util/ArrayList;

.field private description:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private links:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

.field private type:Ljava/lang/String;

.field private validate:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V
    .locals 2

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->image:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->type:Ljava/lang/String;

    const-string v0, "links"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->links:Ljava/util/ArrayList;

    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->description:Ljava/lang/String;

    const-string v0, "articles"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->articles:Ljava/util/ArrayList;

    const-string v0, "validate"

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Hashtable;

    invoke-direct {v1, p1, p2}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;-><init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->validate:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;

    :cond_0
    return-void
.end method


# virtual methods
.method public getArticles()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->articles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->links:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValidate()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->validate:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;

    return-object v0
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->image:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "image"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->links:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const-string v2, "links"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->description:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->articles:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    const-string v2, "articles"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$DisplayCard;->validate:Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;->access$000(Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputValidation;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "validate"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method
