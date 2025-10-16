.class public Lcom/zoho/salesiqembed/android/tracking/UTSUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/salesiqembed/android/tracking/UTSUtil$TrackingConsentConfig;
    }
.end annotation


# static fields
.field private static tracking_consent_dialog_shown:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/app/Activity;ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->connectToUTS(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static canExecuteTrigger()Z
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static clearTriggerMessage()V
    .locals 8

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->isTriggerChatAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "temp_chid"

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v1

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearTriggerDepartments()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "temp_chid_"

    invoke-static {v3}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "CHATID"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "STATUS"

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    sget-object v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "CHATID=?"

    invoke-virtual {v2, v5, v3, v7, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v7, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static connectToUTS(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getTrackingConsentConfig()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "tracking_consent"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->connectToUTS(Landroid/app/Activity;ZI)V

    return-void
.end method

.method private static connectToUTS(Landroid/app/Activity;ZI)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    sget-boolean p1, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->tracking_consent_dialog_shown:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    sput-boolean p1, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->tracking_consent_dialog_shown:Z

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/SalesIQCache;->setHideChatButton(Z)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$layout;->siq_dialog_textview:I

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/zoho/livechat/android/R$id;->siq_dialog_textview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-ne p2, p1, :cond_1

    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_trackingconsent_notify:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_trackingconsent_notifywithoptout:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_learnmore:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getTrackingConsentPolicyUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/text/SpannableString;

    const-string v6, " "

    invoke-static {v2, v6, v3}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$1;

    invoke-direct {v3, v4}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1000000

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v4, 0x12

    invoke-virtual {v5, v3, v2, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget p1, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_trackingconsent_gotit:I

    new-instance v0, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$2;

    invoke-direct {v0, p0}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x2

    if-ne p2, p1, :cond_3

    sget p1, Lcom/zoho/livechat/android/R$string;->livechat_gdpr_trackingconsent_donttrack:I

    new-instance p2, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$3;

    invoke-direct {p2}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$3;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    new-instance p1, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$4;

    invoke-direct {p1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$4;-><init>()V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$5;

    invoke-direct {p2, p1, p0}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$5;-><init>(Landroid/app/AlertDialog;Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->clearTriggerMessage()V

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object p1

    sget-object p2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne p1, p2, :cond_5

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->isHold()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->resume()V

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object p1

    sget-object p2, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne p1, p2, :cond_c

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string p2, "siq_session"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getVisitorName(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getAddinfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Visitor;->getAddinfo()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cinfo"

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-static {p0}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Tracking;->getPageTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ptitle"

    if-eqz v1, :cond_a

    invoke-virtual {p2, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_a
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_2
    new-instance p0, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;

    invoke-direct {p0}, Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;-><init>()V

    invoke-static {p0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->setHandler(Lcom/zoho/salesiqembed/android/tracking/UTSMessageHandler;)V

    :try_start_0
    const-string p0, "annonid"

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAppkey()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/exception/WMSCommunicationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_3
    return-void
.end method

.method public static executeTrigger(ILjava/util/Hashtable;)V
    .locals 23

    move/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->canExecuteTrigger()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getEmbedStatus()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    const-string v3, "executedtriggerid"

    const-string v4, "12"

    const-string v5, "mtype"

    const-string v6, "triggerid"

    const-string v7, "attender"

    const-string v8, "msg"

    const-string v9, "sender"

    if-ne v0, v2, :cond_5

    const-string v0, "sendername"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "message"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "attenderdetails"

    invoke-virtual {v1, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    invoke-virtual {v1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Hashtable;

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v7, "imagefkey"

    invoke-virtual {v11, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Lcom/zoho/livechat/android/models/SalesIQChat;

    const/16 v16, 0x0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const/16 v19, 0x3

    const-string v15, "temp_chid"

    move-object v14, v12

    invoke-direct/range {v14 .. v19}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v12, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    if-nez v13, :cond_1

    move-object v15, v0

    goto :goto_1

    :cond_1
    move-object v15, v13

    :goto_1
    invoke-virtual {v14, v9, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsginfo(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderImgkey(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v4, v11, v12}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    new-instance v5, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    invoke-virtual {v12}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    if-nez v13, :cond_2

    move-object/from16 v17, v0

    goto :goto_2

    :cond_2
    move-object/from16 v17, v13

    :goto_2
    sget-object v7, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->DELIVERED:Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;

    invoke-virtual {v7}, Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;->value()I

    move-result v22

    move-object v14, v5

    move-wide/from16 v18, v20

    invoke-direct/range {v14 .. v22}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;JJI)V

    invoke-virtual {v5, v10}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setText(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->setDname(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/SalesIQMessageBuilder;->createMessage()Lcom/zoho/livechat/android/models/SalesIQMessage;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertMessage(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->sendTriggerAcknowledgement()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v4

    sget-object v5, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;

    invoke-direct {v3, v0, v10}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "receivelivechat"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "refreshchat"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chid"

    const-string v2, "temp_chid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z

    goto/16 :goto_6

    :cond_5
    const/16 v2, 0x10

    if-ne v0, v2, :cond_c

    const-string v0, "dname"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "msglist"

    invoke-virtual {v1, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_c

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Hashtable;

    invoke-virtual {v12, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_6

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v15

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Hashtable;

    invoke-virtual {v14, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_6
    move-object v14, v13

    :goto_3
    const-string v15, "time"

    invoke-static {v12, v15}, Lc/a/a/a/a;->m(Ljava/util/Hashtable;Ljava/lang/String;)J

    move-result-wide v19

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 p0, v15

    new-instance v15, Lcom/zoho/livechat/android/models/SalesIQChat;

    const/16 v18, 0x0

    const/16 v21, 0x3

    const-string v17, "temp_chid"

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v21}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v15, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v15, v13}, Lcom/zoho/livechat/android/models/SalesIQChat;->setIsBotAttender(Z)V

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v13, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v8, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v13}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setLastmsginfo(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    const-string v4, "departments"

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptid(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/DepartmentsUtil;->getConfiguredDepartmentsInServer()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zoho/livechat/android/models/Department;

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/Department;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/zoho/livechat/android/models/Department;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptname(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {v1}, Lcom/zoho/wms/common/HttpDataWraper;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "trigger_depts"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_9
    :goto_4
    sget-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    const/4 v4, 0x1

    invoke-virtual {v1, v12, v15, v4}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->sendTriggerAcknowledgement()V

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v1

    sget-object v4, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->DISCONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v1, v4, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_a
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-virtual {v3, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, p0

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "msgid"

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getMessageHandler()Lcom/zoho/livechat/android/comm/ChatMessageHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zoho/livechat/android/comm/ChatMessageHandler;->getExecutorService()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v5

    new-instance v6, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;

    invoke-direct {v6, v3}, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    add-int/lit8 v1, v1, 0x1

    move-object/from16 p0, v4

    goto :goto_5

    :cond_c
    :goto_6
    return-void
.end method

.method private static getparseTime(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "second"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    const-string v2, " "

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    :goto_0
    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-string v0, "minute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    :goto_1
    mul-int/lit8 p0, p0, 0x3c

    goto :goto_0

    :cond_1
    const-string v0, "hour"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/lit16 p0, p0, 0x3e8

    mul-int/lit8 p0, p0, 0x3c

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static handleProactiveChat(Ljava/util/Hashtable;)V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "chid"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "department"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object v9, v6

    :goto_0
    const-string v3, "attender"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object v10, v6

    :goto_1
    const-string v3, "attendername"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v15, v3

    goto :goto_2

    :cond_2
    move-object v15, v6

    :goto_2
    const-string v3, "attenderemail"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v11, v3

    goto :goto_3

    :cond_3
    move-object v11, v6

    :goto_3
    const-string v3, "image_fkey"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v6

    :goto_4
    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;->contenturi:Landroid/net/Uri;

    const-string v5, "temp_chid"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "CHATID =? "

    invoke-virtual {v13, v12, v3, v8, v7}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v3, Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;->contenturi:Landroid/net/Uri;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v7, "CHATID=?"

    invoke-virtual {v13, v12, v3, v7, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->delete(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "SELECT * FROM SIQ_CONVERSATIONS WHERE CHATID = \'"

    const-string v5, "\'"

    invoke-static {v3, v4, v5}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v13, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v3, Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-direct {v3, v14}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v3, v9}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptid(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    invoke-virtual {v3, v6}, Lcom/zoho/livechat/android/models/SalesIQChat;->setVisitorid(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderEmail(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderImgkey(Ljava/lang/String;)V

    invoke-virtual {v13, v12, v3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 p0, v14

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    move-object v6, v14

    goto/16 :goto_9

    :cond_5
    :try_start_3
    new-instance v8, Lcom/zoho/livechat/android/models/SalesIQChat;

    const/4 v5, 0x0

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/16 v16, 0x4

    move-object v3, v8

    move-object/from16 p0, v14

    move-object v14, v8

    move/from16 v8, v16

    :try_start_4
    invoke-direct/range {v3 .. v8}, Lcom/zoho/livechat/android/models/SalesIQChat;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v14, v15}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderName(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptid(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderid(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderEmail(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Lcom/zoho/livechat/android/models/SalesIQChat;->setAttenderImgkey(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setQuestion(Ljava/lang/String;)V

    invoke-virtual {v13, v12, v14}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    move-object v3, v14

    :goto_5
    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v5, v13

    move-object v8, v10

    move-object v9, v15

    move-object v10, v0

    move-object v13, v2

    move-object/from16 v17, p0

    move-object v0, v15

    move-object v15, v4

    :try_start_5
    invoke-virtual/range {v5 .. v16}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v0, v2, v6}, Lcom/zoho/livechat/android/NotificationService;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object/from16 v17, p0

    :goto_6
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->connectToWMS()V

    invoke-static {}, Lcom/zoho/livechat/android/comm/LiveChatAdapter;->getStatus()Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    move-result-object v0

    sget-object v2, Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;->CONNECTED:Lcom/zoho/livechat/android/comm/LiveChatAdapter$Status;

    if-ne v0, v2, :cond_7

    new-instance v0, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/zoho/livechat/android/comm/PXRGetVisitorTranscript;->request()V

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "receivelivechat"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    const-string v4, "refreshchat"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lb/q/a/a;->a(Landroid/content/Context;)Lb/q/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/q/a/a;->c(Landroid/content/Intent;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v17, p0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v17, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v17, v14

    :goto_7
    move-object/from16 v14, v17

    goto :goto_c

    :catch_3
    move-exception v0

    move-object/from16 v17, v14

    :goto_8
    move-object/from16 v6, v17

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_a
    return-void

    :goto_b
    move-object v14, v6

    :goto_c
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static handleTrigger(Ljava/util/Hashtable;)V
    .locals 11

    const-string v0, "time"

    const-string v1, "type"

    const-string v2, "triggerid"

    :try_start_0
    const-string v3, "triggers"

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/16 v5, 0x10

    if-ne v3, v5, :cond_3

    :cond_0
    const-string v5, "value"

    invoke-virtual {p0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Hashtable;

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zoho/salesiqembed/android/TriggerReceiver;

    invoke-direct {v8, v4, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "triggerinfo"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->getparseTime(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v9, v0

    const-wide/16 v0, 0x3e8

    cmp-long p0, v9, v0

    if-lez p0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v9

    const-string p0, "alarm"

    invoke-virtual {v4, p0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    if-eqz p0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v5, 0x8000000

    invoke-static {v4, v3, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v3, v7}, Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->executeTrigger(ILjava/util/Hashtable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v2, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static isProactiveChatAvailable()Z
    .locals 3

    const-string v0, "SELECT * FROM SIQ_CONVERSATIONS WHERE STATUS = \'4\'"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static isTrackingEnabled()Z
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "emprops"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    const-string v1, "tracking"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTriggerChatAvailable()Z
    .locals 3

    const-string v0, "SELECT * FROM SIQ_CONVERSATIONS WHERE STATUS = \'3\'"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v2, v0}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static sendCustomAction(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "customaction"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "field"

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "action"

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static sendTriggerAcknowledgement()V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static updateEmail(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "updateinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static updateName(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "updateinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static updateName(Ljava/util/Hashtable;)V
    .locals 3

    const-string v0, "name"

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "token"

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Visitor "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p0, "livechatname"

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static updatePageTitle(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "nav"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string v2, "mpage"

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "navdata"

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static updatePhone(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "updateinfo"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_1
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static updateSDKOpen()V
    .locals 3

    invoke-static {}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->getConnStatus()Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;->CONNECTED:Lcom/zoho/salesiqembed/android/tracking/UTSAdapter$Status;

    if-ne v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string v1, "opr"

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/zoho/salesiqembed/android/tracking/UTSAdapter;->writeData(Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lcom/zoho/wms/common/pex/PEXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
