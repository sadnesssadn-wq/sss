.class public Lcom/zoho/livechat/android/NotificationService;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/NotificationService$ImageDownloaderTask;
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String;

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Zoho SalesIQ"

.field private static final ENDCHAT:I = 0x5c8

.field private static final NORMAL:I = 0x5c4

.field public static final TEST:I = 0x5c7

.field private static final TRIGGER:I = 0x5c6

.field public static final VHISTORY:I = 0x5c5

.field private static r:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mobilisten"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x4

    const-string v4, "Zoho SalesIQ"

    invoke-direct {v2, v0, v4, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/zoho/livechat/android/NotificationService;->createVHNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelAll(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lb/i/e/p;

    invoke-direct {v0, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p0, v0, Lb/i/e/p;->b:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt p0, v1, :cond_0

    new-instance p0, Lb/i/e/p$a;

    iget-object v1, v0, Lb/i/e/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/i/e/p$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lb/i/e/p;->c(Lb/i/e/p$e;)V

    :cond_0
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    .line 1
    new-instance v0, Lb/i/e/p;

    invoke-direct {v0, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0, p1}, Lb/i/e/p;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lb/i/e/p;

    invoke-direct {v0, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x5c5

    .line 4
    invoke-virtual {v0, p1, p0}, Lb/i/e/p;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private static createEndChatNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1
    new-instance v1, Lb/i/e/t;

    invoke-direct {v1, p0}, Lb/i/e/t;-><init>(Landroid/content/Context;)V

    .line 2
    const-class v2, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v1, v2}, Lb/i/e/t;->k(Ljava/lang/Class;)Lb/i/e/t;

    .line 3
    iget-object v2, v1, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    iget-object p3, v1, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p3, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    const/high16 v0, 0x8000000

    invoke-virtual {v1, p3, v0}, Lb/i/e/t;->l(II)Landroid/app/PendingIntent;

    move-result-object p3

    new-instance v0, Lb/i/e/k;

    sget-object v1, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v0, p2}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    new-instance p1, Lb/i/e/j;

    invoke-direct {p1}, Lb/i/e/j;-><init>()V

    invoke-virtual {p1, p2}, Lb/i/e/j;->d(Ljava/lang/CharSequence;)Lb/i/e/j;

    invoke-virtual {v0, p1}, Lb/i/e/k;->h(Lb/i/e/m;)Lb/i/e/k;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    .line 7
    iput-object p3, v0, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 8
    iput p4, v0, Lb/i/e/k;->i:I

    const/4 p2, 0x0

    new-array p2, p2, [J

    .line 9
    iget-object p3, v0, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object p2, p3, Landroid/app/Notification;->vibrate:[J

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_0

    .line 11
    iput p1, v0, Lb/i/e/k;->j:I

    .line 12
    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    .line 13
    iget-object p2, v0, Lb/i/e/k;->s:Landroid/app/Notification;

    :goto_0
    iput p1, p2, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 14
    :cond_1
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    .line 15
    iget-object p2, v0, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v0}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p1

    .line 17
    new-instance p2, Lb/i/e/p;

    invoke-direct {p2, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x5c8

    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3, p0, p1}, Lb/i/e/p;->b(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_d

    :cond_0
    const/4 p4, 0x1

    :goto_0
    new-instance v1, Lb/i/e/l;

    invoke-direct {v1}, Lb/i/e/l;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    sget-object v4, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    sget-object v5, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const-string v5, "select * from SIQ_NOTIFICATIONS where TYPE=0 order by STIME desc"

    invoke-virtual {v4, v5}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "MESSAGE"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownForNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1
    iget-object v7, v1, Lb/i/e/l;->e:Ljava/util/ArrayList;

    invoke-static {v6}, Lb/i/e/k;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 2
    :cond_2
    :goto_2
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v4

    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_4

    :catch_3
    move-exception v5

    move-object v6, v5

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_b

    :catch_4
    move-exception v4

    move-object v6, v4

    move-object v4, v2

    :goto_3
    const/4 v5, 0x0

    :goto_4
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :goto_6
    invoke-static {p2}, Lb/i/e/k;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v1, Lb/i/e/m;->b:Ljava/lang/CharSequence;

    if-gt v5, v0, :cond_3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {v4}, Lb/i/e/k;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_7
    iput-object v4, v1, Lb/i/e/m;->c:Ljava/lang/CharSequence;

    goto :goto_8

    .line 6
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " new messages"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Lb/i/e/k;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_7

    :goto_8
    iput-boolean v0, v1, Lb/i/e/m;->d:Z

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 9
    new-instance v5, Lb/i/e/t;

    invoke-direct {v5, p0}, Lb/i/e/t;-><init>(Landroid/content/Context;)V

    .line 10
    const-class v6, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v5, v6}, Lb/i/e/t;->k(Ljava/lang/Class;)Lb/i/e/t;

    .line 11
    iget-object v6, v5, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "chid"

    invoke-virtual {v4, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    iget-object p1, v5, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object p1, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    const/high16 v4, 0x8000000

    invoke-virtual {v5, p1, v4}, Lb/i/e/t;->l(II)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v4, Lb/i/e/k;

    sget-object v5, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->removeMarkdownForNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v4, v0}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    invoke-virtual {v4, v1}, Lb/i/e/k;->h(Lb/i/e/m;)Lb/i/e/k;

    .line 15
    iput-object p1, v4, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 16
    iput p4, v4, Lb/i/e/k;->i:I

    new-array p1, v3, [J

    .line 17
    iget-object p2, v4, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object p1, p2, Landroid/app/Notification;->vibrate:[J

    .line 18
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_4

    .line 19
    iput v0, v4, Lb/i/e/k;->j:I

    .line 20
    :cond_4
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    .line 21
    :goto_9
    iget-object p2, v4, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_a

    .line 22
    :cond_5
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    goto :goto_9

    .line 23
    :goto_a
    iput p1, p2, Landroid/app/Notification;->icon:I

    .line 24
    new-instance p1, Lb/i/e/p;

    invoke-direct {p1, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x5c4

    .line 25
    invoke-virtual {v4}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p2

    .line 26
    invoke-virtual {p1, v2, p0, p2}, Lb/i/e/p;->b(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_e

    :catchall_1
    move-exception p0

    move-object v2, v4

    .line 27
    :goto_b
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    :catch_5
    move-exception p1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :goto_d
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method

.method private static createPickUpNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1
    new-instance v1, Lb/i/e/t;

    invoke-direct {v1, p0}, Lb/i/e/t;-><init>(Landroid/content/Context;)V

    .line 2
    const-class v2, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v1, v2}, Lb/i/e/t;->k(Ljava/lang/Class;)Lb/i/e/t;

    .line 3
    iget-object v2, v1, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x14000000

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    iget-object p3, v1, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object p3, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    const/high16 v0, 0x8000000

    invoke-virtual {v1, p3, v0}, Lb/i/e/t;->l(II)Landroid/app/PendingIntent;

    move-result-object p3

    new-instance v0, Lb/i/e/k;

    sget-object v1, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v0, p2}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    .line 7
    iput-object p3, v0, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 8
    iput p4, v0, Lb/i/e/k;->i:I

    const/4 p2, 0x0

    new-array p2, p2, [J

    .line 9
    iget-object p3, v0, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object p2, p3, Landroid/app/Notification;->vibrate:[J

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_1

    .line 11
    iput p1, v0, Lb/i/e/k;->j:I

    .line 12
    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    .line 13
    iget-object p2, v0, Lb/i/e/k;->s:Landroid/app/Notification;

    :goto_0
    iput p1, p2, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 14
    :cond_2
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    .line 15
    iget-object p2, v0, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v0}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p1

    .line 17
    new-instance p2, Lb/i/e/p;

    invoke-direct {p2, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x5c8

    const/4 p3, 0x0

    .line 18
    invoke-virtual {p2, p3, p0, p1}, Lb/i/e/p;->b(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static createTestNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/high16 v4, 0x48000000    # 131072.0f

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Lb/i/e/k;

    sget-object v4, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v3, p1}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v3, v0}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    .line 1
    iput-object v2, v3, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 2
    iput p2, v3, Lb/i/e/k;->i:I

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_1

    .line 4
    iput v0, v3, Lb/i/e/k;->j:I

    .line 5
    :cond_1
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    .line 6
    iget-object p2, v3, Lb/i/e/k;->s:Landroid/app/Notification;

    :goto_1
    iput p1, p2, Landroid/app/Notification;->icon:I

    goto :goto_2

    .line 7
    :cond_2
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    .line 8
    iget-object p2, v3, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_1

    .line 9
    :goto_2
    invoke-virtual {v3}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p1

    .line 10
    new-instance p2, Lb/i/e/p;

    invoke-direct {p2, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x5c7

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p2, v0, p0, p1}, Lb/i/e/p;->b(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static createTriggerNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1
    new-instance v1, Lb/i/e/t;

    invoke-direct {v1, p0}, Lb/i/e/t;-><init>(Landroid/content/Context;)V

    .line 2
    const-class v2, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v1, v2}, Lb/i/e/t;->k(Ljava/lang/Class;)Lb/i/e/t;

    .line 3
    iget-object v2, v1, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/zoho/livechat/android/ui/activities/ChatActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "chid"

    const-string v3, "temp_chid"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v2, v1, Lb/i/e/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v0, v2}, Lb/i/e/t;->l(II)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Lb/i/e/k;

    sget-object v2, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v1, p2}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    .line 7
    iput-object v0, v1, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 8
    iput p1, v1, Lb/i/e/k;->i:I

    const/4 p2, 0x0

    new-array p2, p2, [J

    .line 9
    iget-object v0, v1, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->vibrate:[J

    .line 10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 11
    iput p1, v1, Lb/i/e/k;->j:I

    .line 12
    :cond_0
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p1

    .line 13
    iget-object p2, v1, Lb/i/e/k;->s:Landroid/app/Notification;

    :goto_0
    iput p1, p2, Landroid/app/Notification;->icon:I

    goto :goto_1

    .line 14
    :cond_1
    sget p1, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    .line 15
    iget-object p2, v1, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual {v1}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p1

    .line 17
    new-instance p2, Lb/i/e/p;

    invoke-direct {p2, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x5c6

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p2, v0, p0, p1}, Lb/i/e/p;->b(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private static createVHNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    :try_start_0
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    const/4 p6, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {v2, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v3, "timeuuid"

    invoke-virtual {p4, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "groupid"

    const-string v4, "siq_vh"

    invoke-virtual {p4, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v3, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/high16 v4, 0x48000000    # 131072.0f

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/zoho/livechat/android/NotificationDeleteReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object p4, Lcom/zoho/livechat/android/NotificationService;->r:Ljava/util/Random;

    invoke-virtual {p4}, Ljava/util/Random;->nextInt()I

    move-result p4

    const/4 v4, 0x0

    invoke-static {p0, p4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    const/16 v3, 0x5c5

    const/16 v4, 0x15

    if-eqz p5, :cond_4

    new-instance v5, Lb/i/e/i;

    invoke-direct {v5}, Lb/i/e/i;-><init>()V

    .line 1
    iput-object p5, v5, Lb/i/e/i;->e:Landroid/graphics/Bitmap;

    .line 2
    new-instance p5, Lb/i/e/k;

    sget-object v6, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {p5, p0, v6}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {p5, p3}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {p5, v5}, Lb/i/e/k;->h(Lb/i/e/m;)Lb/i/e/k;

    invoke-virtual {p5, v1}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    .line 3
    iget-object p2, p5, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object p4, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 4
    iput-object v2, p5, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 5
    iput p6, p5, Lb/i/e/k;->i:I

    if-lt v0, v4, :cond_2

    .line 6
    iput v1, p5, Lb/i/e/k;->j:I

    .line 7
    :cond_2
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p2

    .line 8
    :goto_1
    iget-object p3, p5, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_2

    .line 9
    :cond_3
    sget p2, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    goto :goto_1

    .line 10
    :goto_2
    iput p2, p3, Landroid/app/Notification;->icon:I

    .line 11
    invoke-virtual {p5}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p2

    .line 12
    new-instance p3, Lb/i/e/p;

    invoke-direct {p3, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    goto :goto_5

    .line 13
    :cond_4
    new-instance p5, Lb/i/e/k;

    sget-object v5, Lcom/zoho/livechat/android/NotificationService;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {p5, p0, v5}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {p5, p3}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {p5, v1}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    .line 14
    iget-object p2, p5, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object p4, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 15
    iput-object v2, p5, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 16
    iput p6, p5, Lb/i/e/k;->i:I

    if-lt v0, v4, :cond_5

    .line 17
    iput v1, p5, Lb/i/e/k;->j:I

    .line 18
    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getNotificationIcon()I

    move-result p2

    .line 19
    :goto_3
    iget-object p3, p5, Lb/i/e/k;->s:Landroid/app/Notification;

    goto :goto_4

    .line 20
    :cond_6
    sget p2, Lcom/zoho/livechat/android/R$drawable;->salesiq_notification_small_default:I

    goto :goto_3

    .line 21
    :goto_4
    iput p2, p3, Landroid/app/Notification;->icon:I

    .line 22
    invoke-virtual {p5}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object p2

    .line 23
    new-instance p3, Lb/i/e/p;

    invoke-direct {p3, p0}, Lb/i/e/p;-><init>(Landroid/content/Context;)V

    .line 24
    :goto_5
    invoke-virtual {p3, p1, v3, p2}, Lb/i/e/p;->b(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    return-void
.end method

.method public static handleNotification(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "rmsg"

    const-string v3, "dname"

    const-string v4, "timer"

    const-string v5, "groupid"

    const-string v6, "addInfo"

    const-string v7, "title"

    if-eqz v1, :cond_d

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->setIcon(I)V

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v9, "badge"

    const-string v10, "msg"

    if-eqz v8, :cond_c

    :try_start_1
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_d

    :try_start_2
    const-string v8, "chid"

    invoke-virtual {v6, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getOngoingChat()Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v14

    const-string v15, "temp_chid"

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/zoho/livechat/android/models/SalesIQChat;->getChid()Ljava/lang/String;

    move-result-object v15

    :cond_0
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v2

    invoke-static/range {v16 .. v16}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v3

    const-string v3, "siq_vh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "timeuuid"

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v3, "targetlink"

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    const-string v3, "imgpath"

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v17, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget-object v22, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->SIQ:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->getServerTime()Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v8

    move-object/from16 v27, v3

    invoke-virtual/range {v17 .. v28}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v11, Lcom/zoho/livechat/android/NotificationService$ImageDownloaderTask;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    move-object v1, v11

    move-object v2, v3

    move-object/from16 v3, p0

    move-object v7, v8

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/zoho/livechat/android/NotificationService$ImageDownloaderTask;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v11, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v4, v5

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Lcom/zoho/livechat/android/NotificationService;->createVHNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v3, "siq_endchat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v15, :cond_3

    return-void

    :cond_3
    invoke-static {v0, v12, v13, v8, v11}, Lcom/zoho/livechat/android/NotificationService;->createEndChatNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "endtimerstart"

    const-string v2, "starttime"

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "endtimertime"

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    :cond_4
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/zoho/livechat/android/models/SalesIQChat;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/zoho/livechat/android/config/LDChatConfig;->setUnsent()V

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v14}, Lcom/zoho/livechat/android/models/SalesIQChat;->getAttenderEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/VisitorChat;->setAttenderEmail(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v14}, Lcom/zoho/livechat/android/models/SalesIQChat;->getQuestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/VisitorChat;->setQuestion(Ljava/lang/String;)V

    sget-object v0, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-virtual {v14}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zoho/livechat/android/VisitorChat;->setChatID(Ljava/lang/String;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Admin;->getChathandler()Lcom/zoho/livechat/android/ChatActivityInterface;

    move-result-object v0

    sget-object v2, Lcom/zoho/livechat/android/config/LDChatConfig;->chatObject:Lcom/zoho/livechat/android/VisitorChat;

    invoke-interface {v0, v2}, Lcom/zoho/livechat/android/ChatActivityInterface;->handleChatComplete(Lcom/zoho/livechat/android/VisitorChat;)V

    :cond_5
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v14, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setStatus(I)V

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->showFeedback(Z)V

    invoke-virtual {v14, v1}, Lcom/zoho/livechat/android/models/SalesIQChat;->showContinueChat(Z)V

    sget-object v1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual {v1, v0, v14}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeActiveChatPKID()V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->clearUnreadCountInPrefs()V

    goto/16 :goto_1

    :cond_6
    const-string v3, "siq_pickupchat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v15, :cond_d

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0, v12, v13, v8, v11}, Lcom/zoho/livechat/android/NotificationService;->createPickUpNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v6, v5}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->removeTimerPreferences()V

    invoke-static {v8}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChat(Ljava/lang/String;)Lcom/zoho/livechat/android/models/SalesIQChat;

    move-result-object v2

    const-string v3, "lt"

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, "rfid"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/zoho/wms/common/HttpDataWraper;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Hashtable;

    const-string v7, "ofi"

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_9

    const-wide/16 v10, -0x1

    cmp-long v5, v3, v10

    if-eqz v5, :cond_8

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v10

    cmp-long v5, v3, v10

    if-nez v5, :cond_9

    :cond_8
    invoke-static {v6}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->insertPushMessage(Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getLiveChatID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->setUnreadCountInPrefs()V

    goto :goto_0

    :cond_9
    new-instance v3, Lcom/zoho/livechat/android/utils/GetVisitorTranscriptUtil;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getVisitorid()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getZLDT()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQChat;->getLastmsgtime()J

    move-result-wide v15

    const/16 v17, 0x0

    move-object v11, v3

    move-object v12, v8

    invoke-direct/range {v11 .. v17}, Lcom/zoho/livechat/android/utils/GetVisitorTranscriptUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_a
    :goto_0
    sget-object v11, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v2, "sender"

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    move-object/from16 v2, v24

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/lang/String;

    sget-object v16, Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;->WMS:Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, v23

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v4, "t"

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    move-object v13, v8

    invoke-virtual/range {v11 .. v22}, Lcom/zoho/livechat/android/provider/CursorUtility;->insertPushNotification(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zoho/livechat/android/provider/ZohoLDContract$NOTTYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v4, 0x5c8

    invoke-static {v0, v4}, Lcom/zoho/livechat/android/NotificationService;->cancelNotification(Landroid/content/Context;I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowInAppNotification()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getUILive()Z

    move-result v4

    if-eqz v4, :cond_b

    return-void

    :cond_b
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v8, v2, v3, v1}, Lcom/zoho/livechat/android/NotificationService;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_c
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/zoho/livechat/android/NotificationService;->createTestNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_1
    return-void
.end method
