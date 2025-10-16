.class public Lcom/zoho/livechat/android/models/SalesIQArticle;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private articleInfo:Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

.field private canned_category_id:Ljava/lang/String;

.field private canned_category_name:Ljava/lang/String;

.field private created_time:J

.field private department_id:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private last_search_time:J

.field private last_viewed_time:J

.field private message:Ljava/lang/String;

.field private modified_time:J

.field private rated_type:I

.field private usage_count:I

.field private visitors_disliked:I

.field private visitors_liked:I

.field private visitors_viewed:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->rated_type:I

    const-string v0, "ARTICLE_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->id:Ljava/lang/String;

    const-string v0, "CATEGORY_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_id:Ljava/lang/String;

    const-string v0, "CATEGORY_NAME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_name:Ljava/lang/String;

    const-string v0, "VISITORS_VIEWED"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_viewed:I

    const-string v0, "USAGE_COUNT"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->usage_count:I

    const-string v0, "LIKES"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_liked:I

    const-string v0, "DISLIKES"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_disliked:I

    const-string v0, "DEPT_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->department_id:Ljava/lang/String;

    const-string v0, "CTIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->created_time:J

    const-string v0, "MTIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->modified_time:J

    const-string v0, "ARTICLE_MESSAGE"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->message:Ljava/lang/String;

    const-string v0, "LAST_SEARCH_TIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->last_search_time:J

    const-string v0, "LAST_VIEWED_TIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->last_viewed_time:J

    const-string v0, "RATED_TYPE"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->rated_type:I

    :try_start_0
    const-string v0, "ARTICLE_INFO"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;-><init>(Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->articleInfo:Lcom/zoho/livechat/android/models/SalesIQArticleInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->rated_type:I

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->id:Ljava/lang/String;

    const-string v0, "canned_category_id"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_id:Ljava/lang/String;

    const-string v0, "canned_category_name"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_name:Ljava/lang/String;

    const-string v0, "visitors_viewed"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_viewed:I

    const-string v0, "usage_count"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->usage_count:I

    const-string v0, "visitors_liked"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_liked:I

    const-string v0, "visitors_disliked"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_disliked:I

    const-string v0, "department_id"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->department_id:Ljava/lang/String;

    const-string v0, "created_time"

    invoke-static {p1, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->created_time:J

    const-string v0, "modified_time"

    invoke-static {p1, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->modified_time:J

    const-string v0, "message"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->message:Ljava/lang/String;

    const-string v0, "article_info"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;-><init>(Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->articleInfo:Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public getArticleInfo()Lcom/zoho/livechat/android/models/SalesIQArticleInfo;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->articleInfo:Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

    return-object v0
.end method

.method public getCanned_category_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCanned_category_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_name:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_time()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->created_time:J

    return-wide v0
.end method

.method public getDepartment_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->department_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLast_search_time()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->last_search_time:J

    return-wide v0
.end method

.method public getLast_viewed_time()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->last_viewed_time:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getModified_time()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->modified_time:J

    return-wide v0
.end method

.method public getRated_type()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->rated_type:I

    return v0
.end method

.method public getUsage_count()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->usage_count:I

    return v0
.end method

.method public getVisitors_disliked()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_disliked:I

    return v0
.end method

.method public getVisitors_liked()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_liked:I

    return v0
.end method

.method public getVisitors_viewed()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_viewed:I

    return v0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->id:Ljava/lang/String;

    const-string v2, "ARTICLE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->articleInfo:Lcom/zoho/livechat/android/models/SalesIQArticleInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQArticleInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ARTICLE_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_id:Ljava/lang/String;

    const-string v2, "CATEGORY_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->canned_category_name:Ljava/lang/String;

    const-string v2, "CATEGORY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->usage_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "USAGE_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_liked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LIKES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_disliked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DISLIKES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->visitors_viewed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VISITORS_VIEWED"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->department_id:Ljava/lang/String;

    const-string v2, "DEPT_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->created_time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CTIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->modified_time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "MTIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQArticle;->message:Ljava/lang/String;

    const-string v2, "ARTICLE_MESSAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
