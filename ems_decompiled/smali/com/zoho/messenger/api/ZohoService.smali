.class public Lcom/zoho/messenger/api/ZohoService;
.super Lcom/zoho/messenger/api/PEXLibrary;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zoho/messenger/api/PEXLibrary;-><init>()V

    return-void
.end method

.method public static addCollaborationHandler(Lcom/zoho/messenger/api/handler/CollaborationHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/CollaborationHandler;)V

    return-void
.end method

.method public static addCustomChatHandler(Lcom/zoho/messenger/api/handler/CustomChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CUSTOMCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/CustomChatHandler;)V

    return-void
.end method

.method public static addPresenceGroupHandler(Lcom/zoho/messenger/api/handler/PresenceGroupHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->PRESENCE_CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/PresenceGroupHandler;)V

    return-void
.end method

.method public static addServiceHandler(Lcom/zoho/messenger/api/handler/ServiceChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->SERVICECHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->registerHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Lcom/zoho/messenger/api/handler/ServiceChatHandler;)V

    return-void
.end method

.method public static removeCollaborationHandler(Lcom/zoho/messenger/api/handler/CollaborationHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->COLLABORATION:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeCustomChatHandler(Lcom/zoho/messenger/api/handler/CustomChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->CUSTOMCHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static removePresenceGroupHandler(Lcom/zoho/messenger/api/handler/PresenceGroupHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->PRESENCE_CHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeServiceHandler(Lcom/zoho/messenger/api/handler/ServiceChatHandler;)V
    .locals 1

    sget-object v0, Lcom/zoho/messenger/api/BaseChatAPI$handlerType;->SERVICECHAT:Lcom/zoho/messenger/api/BaseChatAPI$handlerType;

    invoke-static {v0, p0}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->unregisterHandler(Lcom/zoho/messenger/api/BaseChatAPI$handlerType;Ljava/lang/Object;)V

    return-void
.end method

.method public static setCollaborationHandler(Lcom/zoho/messenger/api/handler/CollaborationHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoService;->addCollaborationHandler(Lcom/zoho/messenger/api/handler/CollaborationHandler;)V

    return-void
.end method

.method public static setCustomChatHandler(Lcom/zoho/messenger/api/handler/CustomChatHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoService;->addCustomChatHandler(Lcom/zoho/messenger/api/handler/CustomChatHandler;)V

    return-void
.end method

.method public static setPresenceGroupHandler(Lcom/zoho/messenger/api/handler/PresenceGroupHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoService;->addPresenceGroupHandler(Lcom/zoho/messenger/api/handler/PresenceGroupHandler;)V

    return-void
.end method

.method public static setServiceHandler(Lcom/zoho/messenger/api/handler/ServiceChatHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/messenger/api/ZohoService;->addServiceHandler(Lcom/zoho/messenger/api/handler/ServiceChatHandler;)V

    return-void
.end method
