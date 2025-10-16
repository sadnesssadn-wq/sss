.class public Lcom/zoho/livechat/android/provider/ZohoLDContract;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesSync;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$Articles;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticleDepts;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotification;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatMessage;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ChatConversation;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesSyncColumns;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticlesColumns;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ArticleDeptColumns;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$PushNotificationColumns;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$ConversationColumns;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$MessageColumns;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;,
        Lcom/zoho/livechat/android/provider/ZohoLDContract$MSGSTATUS;
    }
.end annotation


# static fields
.field public static final PATH_ARTICLEDEPTS:Ljava/lang/String; = "ArticleDepts"

.field public static final PATH_ARTICLES:Ljava/lang/String; = "Articles"

.field public static final PATH_ARTICLES_SYNC:Ljava/lang/String; = "ArticlesSync"

.field public static final PATH_CHATCONVERSATION:Ljava/lang/String; = "ChatConversation"

.field public static final PATH_CHATMESSAGE:Ljava/lang/String; = "ChatMessage"

.field public static final PATH_CHATNOTIFICATION:Ljava/lang/String; = "ChatNotification"

.field public static basecontenturi:Landroid/net/Uri;

.field public static contentauthority:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://"

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zoho/livechat/android/provider/ZohoLDContract;->contentauthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/provider/ZohoLDContract;->basecontenturi:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
