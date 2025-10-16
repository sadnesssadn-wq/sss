.class public Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

.field private chid:Ljava/lang/String;

.field private ctime:J

.field private dname:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->chid:Ljava/lang/String;

    iput p2, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->mtype:I

    iput-object p3, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->sender:Ljava/lang/String;

    iput-wide p4, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->stime:J

    iput-wide p6, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->ctime:J

    iput p8, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->status:I

    return-void
.end method


# virtual methods
.method public createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;
    .locals 18

    move-object/from16 v0, p0

    new-instance v17, Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v2, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->chid:Ljava/lang/String;

    iget-object v3, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->sender:Ljava/lang/String;

    iget-object v4, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->dname:Ljava/lang/String;

    iget-object v5, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->msgid:Ljava/lang/String;

    iget-wide v6, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->stime:J

    iget-wide v8, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->ctime:J

    iget v10, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->mtype:I

    iget-object v11, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->text:Ljava/lang/String;

    iget v12, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->status:I

    iget-boolean v13, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->is_bot:Z

    iget-object v14, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->respondedValue:Ljava/util/Hashtable;

    iget-object v15, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    iget-object v1, v0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;IZLjava/util/Hashtable;Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V

    return-object v17
.end method

.method public setAttachment(Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->attachment:Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    return-object p0
.end method

.method public setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->dname:Ljava/lang/String;

    return-object p0
.end method

.method public setIsBot(Z)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->is_bot:Z

    return-object p0
.end method

.method public setMetaInfo(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->metaInfo:Lcom/zoho/livechat/android/models/SalesIQMessageMeta;

    return-void
.end method

.method public setMsgid(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->msgid:Ljava/lang/String;

    return-object p0
.end method

.method public setRespondedValue(Ljava/util/Hashtable;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->respondedValue:Ljava/util/Hashtable;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->text:Ljava/lang/String;

    return-object p0
.end method
