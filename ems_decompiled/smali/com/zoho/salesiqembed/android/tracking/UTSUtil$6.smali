.class public final Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/salesiqembed/android/tracking/UTSUtil;->executeTrigger(ILjava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$sendername:Ljava/lang/String;

.field public final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;->val$sendername:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;->val$sendername:Ljava/lang/String;

    iget-object v2, p0, Lcom/zoho/salesiqembed/android/tracking/UTSUtil$6;->val$text:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/zoho/livechat/android/NotificationService;->createTriggerNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
