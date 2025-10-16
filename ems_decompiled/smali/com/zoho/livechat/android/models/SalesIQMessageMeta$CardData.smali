.class public Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CardData"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->this$0:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "type"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->type:Ljava/lang/String;

    const-string p1, "value"

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->value:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;)Ljava/util/Hashtable;
    .locals 0

    invoke-direct {p0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->toHashtable()Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method private toHashtable()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$CardData;->value:Ljava/lang/Object;

    return-object v0
.end method
