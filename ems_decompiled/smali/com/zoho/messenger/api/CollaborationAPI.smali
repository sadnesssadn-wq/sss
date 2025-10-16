.class public Lcom/zoho/messenger/api/CollaborationAPI;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMember(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zoho/messenger/api/BaseChatAPI;->addMember(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 6

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/zoho/messenger/api/BaseChatAPI;->create(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/String;Ljava/lang/String;ZZLcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ZLcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 6

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/zoho/messenger/api/BaseChatAPI;->create(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/String;Ljava/lang/String;ZZLcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static deleteMember(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zoho/messenger/api/BaseChatAPI;->deleteMember(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static join(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zoho/messenger/api/BaseChatAPI;->join(Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static quit(Ljava/lang/String;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zoho/messenger/api/BaseChatAPI;->quit(Ljava/lang/String;Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static sendInfoMessage(Ljava/lang/String;Ljava/lang/Object;Lcom/zoho/messenger/api/constants/ChatInfoMessage;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/zoho/messenger/api/BaseChatAPI;->sendInfoMessage(Ljava/lang/String;Ljava/lang/Object;Lcom/zoho/messenger/api/constants/ChatInfoMessage;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/zoho/messenger/api/BaseChatAPI;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method
