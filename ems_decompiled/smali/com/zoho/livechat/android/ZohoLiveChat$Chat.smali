.class public Lcom/zoho/livechat/android/ZohoLiveChat$Chat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ZohoLiveChat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chat"
.end annotation


# static fields
.field private static agentmailid:Ljava/lang/String;

.field private static departlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static departname:Ljava/lang/String;

.field private static image:Landroid/graphics/Bitmap;

.field private static locale:Ljava/util/Locale;

.field private static showAgentImage:Z

.field private static sysmessagelist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static themes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/zoho/commons/Color;",
            ">;"
        }
    .end annotation
.end field

.field private static title:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->sysmessagelist:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->themes:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowChatInOfflineMode(Z)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->allowChatInOfflineMode(Z)V

    return-void
.end method

.method public static allowStartChatWithFile(Z)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->allowStartChatWithFile(Z)V

    return-void
.end method

.method public static canShowOperatorImageOnBubble()Ljava/lang/Boolean;
    .locals 1

    sget-boolean v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->showAgentImage:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static endSession()V
    .locals 0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->endChat()V

    return-void
.end method

.method public static getAgentEmail()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->agentmailid:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeptName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->departname:Ljava/lang/String;

    return-object v0
.end method

.method public static getDepts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->departlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getLanguage()Ljava/util/Locale;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public static getMessage(Lcom/zoho/commons/SystemMessage;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->sysmessagelist:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    sget-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->sysmessagelist:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getThemeColor(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->themes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->themes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zoho/commons/Color;

    invoke-virtual {p0}, Lcom/zoho/commons/Color;->getRGB()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static getVisitorImage()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->image:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static open()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->openChat(Landroid/app/Activity;)V

    return-void
.end method

.method public static open(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->setCurrentActivity(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->openChat(Landroid/app/Activity;)V

    return-void
.end method

.method public static setDepartment(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->departname:Ljava/lang/String;

    return-void
.end method

.method public static setDepartments(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->departlist:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public static setFloatingChatButtonVisibility(Z)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setFloatingChatButtonVisibility(Z)V

    return-void
.end method

.method public static setLanguage(Ljava/util/Locale;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static setMessage(Lcom/zoho/commons/SystemMessage;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->sysmessagelist:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static setOfflineMessage(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setOfflineMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static setOperatorEmail(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->agentmailid:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lcom/zoho/livechat/android/exception/InvalidEmailException;

    const-string v1, "Invalid Email ID \'"

    const-string v2, "\'"

    invoke-static {v1, p0, v2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/exception/InvalidEmailException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setThemeColor(Ljava/lang/String;Lcom/zoho/commons/Color;)V
    .locals 1

    sget-object v0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->themes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setTitle(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->title:Ljava/lang/String;

    return-void
.end method

.method public static setVisibility(Lcom/zoho/commons/ChatComponent;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/zoho/commons/ChatComponent;->Operator_Image:Lcom/zoho/commons/ChatComponent;

    if-ne p0, v1, :cond_1

    const-string p0, "component_operator_image"

    :goto_0
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/zoho/commons/ChatComponent;->Rating:Lcom/zoho/commons/ChatComponent;

    if-ne p0, v1, :cond_2

    const-string p0, "component_rating"

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/zoho/commons/ChatComponent;->Feedback:Lcom/zoho/commons/ChatComponent;

    if-ne p0, v1, :cond_3

    const-string p0, "component_feedback"

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/zoho/commons/ChatComponent;->Screenshot:Lcom/zoho/commons/ChatComponent;

    if-ne p0, v1, :cond_4

    const-string p0, "screen_shot"

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setVisibility(Lcom/zoho/livechat/android/MbedableComponent;Z)V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getMbedablehiddenlist()Ljava/util/Hashtable;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/MbedableComponent;->CHAT:Lcom/zoho/livechat/android/MbedableComponent;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getMbedablehiddenlist()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    :goto_0
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getMbedablehiddenlist()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez p1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->removeChatView(Landroid/app/Activity;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object p1, Lcom/zoho/livechat/android/MbedableComponent;->CHAT:Lcom/zoho/livechat/android/MbedableComponent;

    if-nez p0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->canShowBubble(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->showChatBubble(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/ClassNotFoundException;

    const-string p1, "No Activity found to set the API"

    invoke-direct {p0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setVisitorImage(Landroid/graphics/Bitmap;)V
    .locals 0

    sput-object p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static show()V
    .locals 1

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->openChat(Landroid/app/Activity;)V

    return-void
.end method

.method public static showOfflineMessage(Z)V
    .locals 0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/SalesIQCache;->showOfflineMessage(Z)V

    return-void
.end method

.method public static showOperatorImageInLauncher(Z)V
    .locals 0

    sput-boolean p0, Lcom/zoho/livechat/android/ZohoLiveChat$Chat;->showAgentImage:Z

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->refreshChatBubble()V

    return-void
.end method
