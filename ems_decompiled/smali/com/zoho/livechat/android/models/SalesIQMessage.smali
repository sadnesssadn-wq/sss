.class public Lcom/zoho/livechat/android/models/SalesIQMessage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

.field private chid:Ljava/lang/String;

.field private ctime:J

.field private dname:Ljava/lang/String;

.field private id:I

.field private is_bot:Z

.field private metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

.field private msgid:Ljava/lang/String;

.field private mtype:I

.field private respondedValue:Ljava/util/Hashtable;

.field private sender:Ljava/lang/String;

.field private status:I

.field private stime:J

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->id:I

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->id:I

    const-string v0, "CHATID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->chid:Ljava/lang/String;

    const-string v0, "SENDER"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->sender:Ljava/lang/String;

    const-string v0, "DNAME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->dname:Ljava/lang/String;

    const-string v0, "MSGID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->msgid:Ljava/lang/String;

    const-string v0, "STIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->stime:J

    const-string v0, "CTIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->ctime:J

    const-string v0, "TYPE"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->mtype:I

    const-string v0, "STATUS"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->status:I

    const-string v0, "TEXT"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->text:Ljava/lang/String;

    const-string v0, "IS_BOT"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->is_bot:Z

    const-string v0, "RESPONDED_VALUE"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->respondedValue:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v0, "META"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    invoke-direct {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;-><init>(Ljava/util/Hashtable;)V

    iput-object v1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    const-string v0, "MSGMETA"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    invoke-direct {v0, p1}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;-><init>(Ljava/util/Hashtable;)V

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IZLjava/util/Hashtable;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->id:I

    move-object v1, p1

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->chid:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->sender:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->dname:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->msgid:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->stime:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->ctime:J

    move v1, p9

    iput v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->mtype:I

    move-object v1, p10

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->text:Ljava/lang/String;

    move v1, p11

    iput v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->status:I

    move v1, p12

    iput-boolean v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->is_bot:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->respondedValue:Ljava/util/Hashtable;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessage;->metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    return-void
.end method


# virtual methods
.method public getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    return-object v0
.end method

.method public getChid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->chid:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->ctime:J

    return-wide v0
.end method

.method public getDname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->dname:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->id:I

    return v0
.end method

.method public getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    return-object v0
.end method

.method public getMsgid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->msgid:Ljava/lang/String;

    return-object v0
.end method

.method public getMtype()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->mtype:I

    return v0
.end method

.method public getRespondedValue()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->respondedValue:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->status:I

    return v0
.end method

.method public getStime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->stime:J

    return-wide v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isBot()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->is_bot:Z

    return v0
.end method

.method public isInputCard()Z
    .locals 2

    invoke-virtual {p0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->isBot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMetaInfo()Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta;->getInputCard()Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessageMeta$InputCard;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAttachmentInfo(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    return-void
.end method

.method public setChid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->chid:Ljava/lang/String;

    return-void
.end method

.method public setCtime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->ctime:J

    return-void
.end method

.method public setDname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->dname:Ljava/lang/String;

    return-void
.end method

.method public setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    return-void
.end method

.method public setMsgid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->msgid:Ljava/lang/String;

    return-void
.end method

.method public setMtype(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->mtype:I

    return-void
.end method

.method public setRespondedValue(Ljava/util/Hashtable;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->respondedValue:Ljava/util/Hashtable;

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->sender:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->status:I

    return-void
.end method

.method public setStime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->stime:J

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessage;->text:Ljava/lang/String;

    return-void
.end method
