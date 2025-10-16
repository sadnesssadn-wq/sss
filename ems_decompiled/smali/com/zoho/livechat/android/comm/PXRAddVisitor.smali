.class public Lcom/zoho/livechat/android/comm/PXRAddVisitor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/wms/common/pex/PEXEventHandler;


# instance fields
.field private chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private hide_question:Z

.field private question:Lcom/zoho/livechat/android/models/SalesIQMessage;

.field private triggerenabled:Z


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-object p2, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->triggerenabled:Z

    iput-boolean p4, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->hide_question:Z

    return-void
.end method


# virtual methods
.method public onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 2

    iget-boolean p1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->hide_question:Z

    if-nez p1, :cond_0

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0, p1, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/zoho/wms/common/pex/PEXResponse;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string p2, "d"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string p2, "objString"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    const-string p2, "CU_ID"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getPexUtil()Lcom/zoho/livechat/android/utils/LDPEXUtil;

    move-result-object p2

    iget-boolean v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->triggerenabled:Z

    invoke-virtual {p2, p1, v1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->handleAddVisitor(Ljava/util/Hashtable;Z)V

    goto :goto_0

    :cond_0
    const-string p2, "exception"

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->hide_question:Z

    if-nez p1, :cond_1

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object p2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {p2, p1, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "receivelivechat"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "message"

    const-string v1, "onInvalidOperation"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setAddVisitorRequested(Z)V

    return-void
.end method

.method public onFailure(Lcom/zoho/wms/common/pex/PEXError;)V
    .locals 2

    iget-boolean p1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->hide_question:Z

    if-nez p1, :cond_0

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0, p1, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "receivelivechat"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    const-string v1, "onInvalidOperation"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setAddVisitorRequested(Z)V

    return-void
.end method

.method public onProgress(Lcom/zoho/wms/common/pex/PEXResponse;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/zoho/wms/common/pex/PEXResponse;)V
    .locals 0

    return-void
.end method

.method public onTimeOut(Lcom/zoho/wms/common/pex/PEXEvent;)V
    .locals 2

    iget-boolean p1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->hide_question:Z

    if-nez p1, :cond_0

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->FAILURE:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->setStatus(I)V

    sget-object v0, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v0, p1, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setAddVisitorRequested(Z)V

    return-void
.end method

.method public request()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getDeptid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deptid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ques"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAnnonID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "annonid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uvid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "embeduname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "visitorid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getAddinfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getAddinfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cinfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attenderemail"

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getAgentEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->getAgentEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attender"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-boolean v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->triggerenabled:Z

    const-string v2, "true"

    if-eqz v1, :cond_8

    const-string v1, "autotrigger"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->isConversationEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAVUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAVUID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "avuid"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getCVUID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getCVUID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cvuid"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v1, "includebots"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isbotchat"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zoho/livechat/android/comm/PXRAddVisitor;->question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMsgid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msgid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v1

    sget-object v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v1, v2, :cond_b

    :try_start_0
    new-instance v1, Lcom/zoho/wms/common/pex/PEXRequest;

    sget-object v2, Lcom/zoho/wms/common/WmsService;->LIVEDESK:Lcom/zoho/wms/common/WmsService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/addvist.wms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/zoho/wms/common/pex/PEXRequest;-><init>(Lcom/zoho/wms/common/WmsService;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "X-Pex-Agent"

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUserAgentDetails()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/zoho/wms/common/pex/PEXEvent;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {v1, v0}, Lcom/zoho/wms/common/pex/PEXRequest;->setMethod(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/zoho/wms/common/pex/PEXEvent;->setHandler(Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    invoke-static {v1}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->process(Lcom/zoho/wms/common/pex/PEXEvent;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setAddVisitorRequested(Z)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/zoho/wms/common/exception/WMSEventException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zoho/wms/common/pex/PEXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    return-void
.end method
