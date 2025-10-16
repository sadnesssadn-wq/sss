.class public Lcom/zoho/livechat/android/models/SalesIQArticleInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private content:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private modifiedtime:J


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "modifiedtime"

    invoke-static {p1, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->modifiedtime:J

    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->content:Ljava/lang/String;

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedtime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->modifiedtime:J

    return-wide v0
.end method

.method public toHashtable()Ljava/util/Hashtable;
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-wide v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->modifiedtime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "modifiedtime"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->mode:Ljava/lang/String;

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->toHashtable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
