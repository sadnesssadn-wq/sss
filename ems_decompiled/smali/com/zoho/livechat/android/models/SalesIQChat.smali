.class public Lcom/zoho/livechat/android/models/SalesIQChat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attender:Ljava/lang/String;

.field private attender_imgkey:Ljava/lang/String;

.field private attenderemail:Ljava/lang/String;

.field private attenderid:Ljava/lang/String;

.field private chid:Ljava/lang/String;

.field private deptid:Ljava/lang/String;

.field private deptname:Ljava/lang/String;

.field private draft:Ljava/lang/String;

.field private isbotattender:Z

.field private lastmsginfo:Ljava/lang/String;

.field private lastmsgtime:J

.field private pkid:Ljava/lang/String;

.field private question:Ljava/lang/String;

.field private show_continue_chat:Z

.field private show_feedback:Z

.field private status:I

.field private time:J

.field private visitid:Ljava/lang/String;

.field private visitorid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->pkid:Ljava/lang/String;

    const-string v0, "CHATID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->chid:Ljava/lang/String;

    const-string v0, "VISITORID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitorid:Ljava/lang/String;

    const-string v0, "TIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->time:J

    const-string v0, "ATTENDER"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attender:Ljava/lang/String;

    const-string v0, "QUESTION"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->question:Ljava/lang/String;

    const-string v0, "ATTENDER_IMGKEY"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attender_imgkey:Ljava/lang/String;

    const-string v0, "LASTMSG"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->lastmsginfo:Ljava/lang/String;

    const-string v0, "ISBOTATTENDER"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->isbotattender:Z

    const-string v0, "VISITID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitid:Ljava/lang/String;

    const-string v0, "DEPTID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->deptid:Ljava/lang/String;

    const-string v0, "STATUS"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->status:I

    const-string v0, "ATTENDER_ID"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attenderid:Ljava/lang/String;

    const-string v0, "LMTIME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->lastmsgtime:J

    const-string v0, "ATTENDER_EMAIL"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attenderemail:Ljava/lang/String;

    const-string v0, "DEPTNAME"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->deptname:Ljava/lang/String;

    const-string v0, "DRAFT"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->draft:Ljava/lang/String;

    const-string v0, "SHOW_FEEDBACK"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->show_feedback:Z

    const-string v0, "SHOW_CONTINUE_CHAT"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->show_continue_chat:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->chid:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitorid:Ljava/lang/String;

    iput-wide p3, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->time:J

    iput p5, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->status:I

    return-void
.end method


# virtual methods
.method public canShowContinueChat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->show_continue_chat:Z

    return v0
.end method

.method public canShowFeedback()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->show_feedback:Z

    return v0
.end method

.method public getAttenderEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attenderemail:Ljava/lang/String;

    return-object v0
.end method

.method public getAttenderImgkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attender_imgkey:Ljava/lang/String;

    return-object v0
.end method

.method public getAttenderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attender:Ljava/lang/String;

    return-object v0
.end method

.method public getAttenderid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attenderid:Ljava/lang/String;

    return-object v0
.end method

.method public getChid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->chid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->deptid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->deptname:Ljava/lang/String;

    return-object v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->draft:Ljava/lang/String;

    return-object v0
.end method

.method public getLastmsginfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->lastmsginfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLastmsgtime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->lastmsgtime:J

    return-wide v0
.end method

.method public getPkid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->pkid:Ljava/lang/String;

    return-object v0
.end method

.method public getQuestion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->question:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->status:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->time:J

    return-wide v0
.end method

.method public getVisitid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitid:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitorid:Ljava/lang/String;

    return-object v0
.end method

.method public isBotAttender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->isbotattender:Z

    return v0
.end method

.method public isIsbotattender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->isbotattender:Z

    return v0
.end method

.method public setAttenderEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attenderemail:Ljava/lang/String;

    return-void
.end method

.method public setAttenderImgkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attender_imgkey:Ljava/lang/String;

    return-void
.end method

.method public setAttenderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attender:Ljava/lang/String;

    return-void
.end method

.method public setAttenderid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->attenderid:Ljava/lang/String;

    return-void
.end method

.method public setChid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->chid:Ljava/lang/String;

    return-void
.end method

.method public setDeptid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->deptid:Ljava/lang/String;

    return-void
.end method

.method public setDeptname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->deptname:Ljava/lang/String;

    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->draft:Ljava/lang/String;

    return-void
.end method

.method public setIsBotAttender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->isbotattender:Z

    return-void
.end method

.method public setIsbotattender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->isbotattender:Z

    return-void
.end method

.method public setLastmsginfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->lastmsginfo:Ljava/lang/String;

    return-void
.end method

.method public setLastmsgtime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->lastmsgtime:J

    return-void
.end method

.method public setQuestion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->question:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->status:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->time:J

    return-void
.end method

.method public setVisitid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitid:Ljava/lang/String;

    return-void
.end method

.method public setVisitorid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->visitorid:Ljava/lang/String;

    return-void
.end method

.method public showContinueChat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->show_continue_chat:Z

    return-void
.end method

.method public showFeedback(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/models/SalesIQChat;->show_feedback:Z

    return-void
.end method
