.class public Lcom/zoho/livechat/android/utils/SalesIQCache;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static add_visitor_requested:Z = false

.field private static allow_chat_in_offline_mode:Z = false

.field private static articlesSyncedDepts:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static articlesUpdatedDepts:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static articles_dept_status:Z = false

.field private static blockBotTransfer:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static cameraimageuri:Landroid/net/Uri; = null

.field public static debug_logs:Z = false

.field private static downloadedUserImages:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static file_as_first_message:Z = false

.field private static float_button_visibility:Z = false

.field private static hide_chatbutton:Z = false

.field private static library_props_status:Z = false

.field private static locationSuggestions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/LocationSuggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private static offlineMessage:Ljava/lang/String;

.field private static show_offline_message:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesUpdatedDepts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesSyncedDepts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->show_offline_message:Z

    sput-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->file_as_first_message:Z

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/zoho/livechat/android/utils/SalesIQCache;->blockBotTransfer:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/zoho/livechat/android/utils/SalesIQCache;->locationSuggestions:Ljava/util/Hashtable;

    sput-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->add_visitor_requested:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/zoho/livechat/android/utils/SalesIQCache;->cameraimageuri:Landroid/net/Uri;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/zoho/livechat/android/utils/SalesIQCache;->downloadedUserImages:Ljava/util/ArrayList;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/zoho/livechat/android/utils/SalesIQCache;->float_button_visibility:Z

    sput-boolean v1, Lcom/zoho/livechat/android/utils/SalesIQCache;->allow_chat_in_offline_mode:Z

    sput-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->debug_logs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocationSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/LocationSuggestion;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->locationSuggestions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addUser(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->downloadedUserImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static allowChatInOfflineMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->allow_chat_in_offline_mode:Z

    return-void
.end method

.method public static allowStartChatWithFile(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->file_as_first_message:Z

    return-void
.end method

.method public static blockBotTransfer(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->blockBotTransfer:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static canAllowChatInOfflineMode()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->allow_chat_in_offline_mode:Z

    return v0
.end method

.method public static canAllowFileSharingAsFirstMessage()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->file_as_first_message:Z

    return v0
.end method

.method public static canShowOfflineMessage()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->show_offline_message:Z

    return v0
.end method

.method public static clearArticleStatus()V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesUpdatedDepts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesSyncedDepts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static debugLogsEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->debug_logs:Z

    return v0
.end method

.method public static getArticlesDeptStatus()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articles_dept_status:Z

    return v0
.end method

.method public static getFloatingChatButtonVisibility()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->float_button_visibility:Z

    return v0
.end method

.method public static getLocationSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/models/LocationSuggestion;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->locationSuggestions:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getOfflineMessage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->offlineMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static isAddVisitorRequested()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->add_visitor_requested:Z

    return v0
.end method

.method public static isArticlesSynced(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesSyncedDepts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isArticlesUpdated(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesUpdatedDepts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isBotTransferBlocked(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->blockBotTransfer:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->blockBotTransfer:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHideChatbutton()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->hide_chatbutton:Z

    return v0
.end method

.method public static isLibraryPropsCalled()Z
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->library_props_status:Z

    return v0
.end method

.method public static isUserImageAvailable(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->downloadedUserImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setAddVisitorRequested(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->add_visitor_requested:Z

    return-void
.end method

.method public static setArticlesDeptStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articles_dept_status:Z

    return-void
.end method

.method public static setArticlesSyncStatus(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesSyncedDepts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setArticlesUpdateStatus(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/utils/SalesIQCache;->articlesUpdatedDepts:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setFloatingChatButtonVisibility(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->float_button_visibility:Z

    return-void
.end method

.method public static setHideChatButton(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->hide_chatbutton:Z

    return-void
.end method

.method public static setLibraryPropsStatus(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->library_props_status:Z

    return-void
.end method

.method public static setOfflineMessage(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->offlineMessage:Ljava/lang/String;

    return-void
.end method

.method public static showOfflineMessage(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/utils/SalesIQCache;->show_offline_message:Z

    return-void
.end method
