.class public Lcom/zoho/livechat/android/models/Department;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private engaged:Z

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private status:Z


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/Department;->id:Ljava/lang/String;

    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/Department;->name:Ljava/lang/String;

    const-string v0, "STATUS"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/Department;->status:Z

    const-string v0, "ENGAGED"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/Department;->engaged:Z

    return-void
.end method

.method private isEngaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/Department;->engaged:Z

    return v0
.end method

.method private isStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/Department;->status:Z

    return v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/Department;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/Department;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/models/Department;->isEngaged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zoho/livechat/android/models/Department;->isStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
