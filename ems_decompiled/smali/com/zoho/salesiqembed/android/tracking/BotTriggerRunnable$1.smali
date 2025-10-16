.class public Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;->processMessage(Lcom/zoho/livechat/android/models/SalesIQMessageMeta;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;

.field public final synthetic val$chid:Ljava/lang/String;

.field public final synthetic val$dname:Ljava/lang/String;

.field public final synthetic val$sender:Ljava/lang/String;

.field public final synthetic val$stime:J

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->this$0:Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable;

    iput-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$chid:Ljava/lang/String;

    iput-object p3, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$sender:Ljava/lang/String;

    iput-object p4, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$dname:Ljava/lang/String;

    iput-object p5, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$text:Ljava/lang/String;

    iput-wide p6, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$stime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-static {}, Lc/a/a/a/a;->x()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$chid:Ljava/lang/String;

    iget-object v4, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$sender:Ljava/lang/String;

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$dname:Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$text:Ljava/lang/String;

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-wide v12, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$stime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual/range {v1 .. v12}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$chid:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$dname:Ljava/lang/String;

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zoho/salesiqembed/android/tracking/BotTriggerRunnable$1;->val$text:Ljava/lang/String;

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getBadgeCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zoho/livechat/android/NotificationService;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
