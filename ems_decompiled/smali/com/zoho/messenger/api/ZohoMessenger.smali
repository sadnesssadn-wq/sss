.class public Lcom/zoho/messenger/api/ZohoMessenger;
.super Lcom/zoho/messenger/api/PEXLibrary;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/messenger/api/PEXLibrary;-><init>()V

    return-void
.end method

.method public static addBotHandler(Lcom/zoho/messenger/api/handler/BotHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->BOT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/BotHandler;)V

    return-void
.end method

.method public static addChannelHandler(Lcom/zoho/messenger/api/handler/ChannelHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHANNEL:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/ChannelHandler;)V

    return-void
.end method

.method public static addChatHandler(Lcom/zoho/messenger/api/handler/ChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/ChatHandler;)V

    return-void
.end method

.method public static addEntityChatHandler(Lcom/zoho/messenger/api/handler/EntityChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->ENTITYCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/EntityChatHandler;)V

    return-void
.end method

.method public static removeBotHandler(Lcom/zoho/messenger/api/handler/BotHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->BOT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeChannelHandler(Lcom/zoho/messenger/api/handler/ChannelHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHANNEL:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeChatHandler(Lcom/zoho/messenger/api/handler/ChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeEntityChatHandler(Lcom/zoho/messenger/api/handler/EntityChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->ENTITYCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static sendInfoMessage(Ljava/lang/String;Ljava/lang/Object;Lcom/zoho/wms/common/pex/PEXEventHandler;)V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "recipants"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "msg"

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/zoho/messenger/comm/WMSPEXTask;

    invoke-direct {p0}, Lcom/zoho/messenger/comm/WMSPEXTask;-><init>()V

    sget-object p1, Lcom/zoho/wms/common/pex/PEXTaskTypes;->INFO_MSG:Lcom/zoho/wms/common/pex/PEXTaskTypes;

    invoke-virtual {p0, v0, p1, p2}, Lcom/zoho/messenger/comm/WMSPEXTask;->process(Ljava/util/Hashtable;Lcom/zoho/wms/common/pex/PEXTaskTypes;Lcom/zoho/wms/common/pex/PEXEventHandler;)V

    return-void
.end method

.method public static setBotHandler(Lcom/zoho/messenger/api/handler/BotHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoMessenger;->addBotHandler(Lcom/zoho/messenger/api/handler/BotHandler;)V

    return-void
.end method

.method public static setChannelHandler(Lcom/zoho/messenger/api/handler/ChannelHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoMessenger;->addChannelHandler(Lcom/zoho/messenger/api/handler/ChannelHandler;)V

    return-void
.end method

.method public static setChatHandler(Lcom/zoho/messenger/api/handler/ChatHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoMessenger;->addChatHandler(Lcom/zoho/messenger/api/handler/ChatHandler;)V

    return-void
.end method

.method public static setContactsHandler(Lcom/zoho/messenger/api/handler/ContactsHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerContactsHandler(Lcom/zoho/messenger/api/handler/ContactsHandler;)V

    return-void
.end method

.method public static setEntityChatHandler(Lcom/zoho/messenger/api/handler/EntityChatHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoMessenger;->addEntityChatHandler(Lcom/zoho/messenger/api/handler/EntityChatHandler;)V

    return-void
.end method

.method public static setMessageHandler(Lcom/zoho/messenger/api/handler/MessageHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerMessageHandler(Lcom/zoho/messenger/api/handler/MessageHandler;)V

    return-void
.end method
