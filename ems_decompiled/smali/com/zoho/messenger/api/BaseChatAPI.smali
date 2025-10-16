.class public Lcom/zoho/messenger/api/BaseChatAPI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/messenger/api/BaseChatAPI$handlerType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMember(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "chid"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "uhash"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "info"

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->ADD_MEMBER:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p3}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static create(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "chid"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const-string p2, "config"

    if-eq p0, p1, :cond_5

    sget-object p1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CUSTOMCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    if-ne p0, p1, :cond_3

    const-string p1, "32"

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->SERVICECHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    if-ne p0, p1, :cond_4

    const-string p1, "33"

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->PRESENCE_CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    if-ne p0, p1, :cond_6

    const-string p1, "48"

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "3"

    :goto_1
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz p5, :cond_7

    const-string p1, "private"

    const-string p2, "true"

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "isNew"

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p4, :cond_8

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "join"

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p0}, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "recipants"

    invoke-virtual {v0, p0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CREATE_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p6}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static create(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/String;Ljava/lang/String;ZZLcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/zoho/messenger/api/BaseChatAPI;->create(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static createGroup(Ljava/lang/String;ZLcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "grpId"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "verifyinfo"

    const-string v1, "WMS_Group_Member"

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "private"

    const-string p1, "true"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CREATE_GROUP_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static deleteMember(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "chid"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "uhash"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p0, "info"

    invoke-virtual {v0, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->DELETE_MEMBER:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p3}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "chid"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "uname"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->JOIN_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static joinandAttach(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "chid"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "uname"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->ATTACH_JOIN_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static quit(Ljava/lang/String;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "chid"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p0, "details"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->QUIT_CHAT:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static sendInfoMessage(Ljava/lang/String;Ljava/lang/Object;Lcom/zoho/messenger/api/constants/ChatInfoMessage;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "chid"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "msg"

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/zoho/messenger/api/constants/ChatInfoMessage;->getNumericType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mtype"

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CHAT_INFO_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p3}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 1

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "chid"

    invoke-virtual {p1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "msg"

    invoke-virtual {p1, p0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string p0, "msgid"

    invoke-virtual {p1, p0, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p2, Lcom/zoho/wms/common/pex/PEXTaskTypes;->CHAT_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, p1, p2, p4}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method
