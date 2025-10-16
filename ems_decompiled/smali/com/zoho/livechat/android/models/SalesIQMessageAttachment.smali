.class public Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private blurimg:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private dim:Ljava/util/Hashtable;

.field private fName:Ljava/lang/String;

.field private fileId:Ljava/lang/String;

.field private hideemailview:Z

.field private mode:Ljava/lang/String;

.field private msg_time:J

.field private opruser:Ljava/util/Hashtable;

.field private rating:I

.field private ratingmessage:Ljava/lang/String;

.field private size:J

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private userid:J

.field private userlist:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->rating:I

    iput-object p2, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->ratingmessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->blurimg:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->dim:Ljava/util/Hashtable;

    iput-wide p4, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->size:J

    iput-object p6, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fName:Ljava/lang/String;

    iput-object p7, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->url:Ljava/lang/String;

    iput-wide p8, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->msg_time:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->mode:Ljava/lang/String;

    :cond_0
    const-string v0, "fileId"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fileId:Ljava/lang/String;

    :cond_1
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->content:Ljava/lang/String;

    :cond_2
    const-string v0, "blurimg"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->blurimg:Ljava/lang/String;

    :cond_3
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->size:J

    :cond_4
    const-string v0, "fName"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fName:Ljava/lang/String;

    :cond_5
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->url:Ljava/lang/String;

    :cond_6
    const-string v0, "dim"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->dim:Ljava/util/Hashtable;

    :cond_7
    const-string v0, "opruser"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->opruser:Ljava/util/Hashtable;

    :cond_8
    const-string v0, "userlist"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userlist:Ljava/util/Hashtable;

    :cond_9
    const-string v0, "hideemailview"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    :cond_a
    const-string v0, "ratingmessage"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->ratingmessage:Ljava/lang/String;

    :cond_b
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->rating:I

    :cond_c
    const-string v0, "msg_time"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->msg_time:J

    :cond_d
    const-string v0, "userid"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1, v0}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userid:J

    :cond_e
    const-string v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->type:Ljava/lang/String;

    :cond_f
    return-void
.end method

.method private toHashTable()Ljava/util/Hashtable;
    .locals 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fileId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "fileId"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->content:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->blurimg:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "blurimg"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->size:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fName:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, "fName"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->url:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->dim:Ljava/util/Hashtable;

    if-eqz v1, :cond_6

    const-string v2, "dim"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->opruser:Ljava/util/Hashtable;

    if-eqz v1, :cond_7

    const-string v2, "opruser"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userlist:Ljava/util/Hashtable;

    if-eqz v1, :cond_8

    const-string v2, "userlist"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->mode:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v2, "mode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->rating:I

    if-eqz v1, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rating"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->ratingmessage:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v2, "ratingmessage"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    if-eqz v1, :cond_c

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "hideemailview"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-wide v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->msg_time:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "msg_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-wide v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userid:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "userid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->type:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object v0
.end method


# virtual methods
.method public getBlurimg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->blurimg:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDim()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->dim:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->msg_time:J

    return-wide v0
.end method

.method public getOpruser()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->opruser:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->rating:I

    return v0
.end method

.method public getRatingmessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->ratingmessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUserid()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userid:J

    return-wide v0
.end method

.method public getUserlist()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userlist:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getfName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public isHideEmailView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    return v0
.end method

.method public setHideEmailView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->hideemailview:Z

    return-void
.end method

.method public setRating(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->rating:I

    return-void
.end method

.method public setRatingmessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->ratingmessage:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->userid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->toHashTable()Ljava/util/Hashtable;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
