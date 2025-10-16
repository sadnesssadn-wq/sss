.class public Lcom/emsportal/fcm/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public f(Lc/d/b/u/h0;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lc/d/b/u/h0;->c:Landroid/os/Bundle;

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lc/d/b/u/h0;->v()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Message data payload: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lc/d/b/u/h0;->v()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lc/d/b/u/h0;->w()Lc/d/b/u/h0$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/d/b/u/h0;->w()Lc/d/b/u/h0$a;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lc/d/b/u/h0$a;->b:Ljava/lang/String;

    .line 4
    :cond_1
    invoke-virtual {p1}, Lc/d/b/u/h0;->w()Lc/d/b/u/h0$a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lc/d/b/u/h0;->w()Lc/d/b/u/h0$a;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lc/d/b/u/h0$a;->a:Ljava/lang/String;

    .line 6
    :cond_2
    invoke-virtual {p1}, Lc/d/b/u/h0;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "notify_type"

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    const-string v2, "username"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v2, "merchant_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lb/u/a;->z()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/b/v/c/a;

    invoke-virtual {v5}, Lc/b/v/c/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    const/4 v2, 0x0

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "tracking_code"

    const-string v6, "title"

    const-string v7, "description"

    if-eqz v4, :cond_6

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "status_name"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lc/b/m/d/r;

    invoke-direct {v5, v2, v2, v4, v1}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const-string v4, "4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "content"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lc/b/m/d/r;

    invoke-direct {v5, v2, v2, v4, v1}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "created_at"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lc/b/m/d/r;->q(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lc/b/m/d/r;->u(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v5, v2

    move-object v2, v3

    move-object v4, v2

    goto :goto_2

    :cond_9
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "ticket_id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, " - "

    invoke-static {v4, v8, v2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lc/b/m/d/r;

    invoke-direct {v8, v4, v2, v5, v1}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    move-object v5, v8

    :goto_2
    const-string v8, "5"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lb/u/a;->Y()V

    invoke-static {v3}, Lb/u/a;->f0(Ljava/lang/String;)V

    new-instance v5, Lc/b/m/d/r;

    invoke-direct {v5, v2, v2, v4, v1}, Lc/b/m/d/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Service;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lc/b/n/b;

    invoke-direct {v9, p0}, Lc/b/n/b;-><init>(Lcom/emsportal/fcm/MyFirebaseMessagingService;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    const-string v8, "6"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lb/u/a;->Y()V

    invoke-static {v3}, Lb/u/a;->f0(Ljava/lang/String;)V

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v6, Lcom/emsportal/activity/MaintainSystemActivity;

    invoke-direct {v0, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x34000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_b
    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-class v0, Lcom/emsportal/activity/MaintainSystemActivity;

    goto :goto_3

    :cond_c
    const-class v0, Lcom/emsportal/user/activity/LogInActivity;

    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_4

    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/emsportal/MainActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_4
    const/high16 v0, 0x4000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v5, :cond_e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "OBJ_NOTIFICATION"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    :cond_e
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v0

    iget-object v0, v0, Lc/b/k/a;->a:Lc/b/k/e;

    const/4 v3, 0x1

    const-string v5, "SETTING_NOTIFY_STATUS_DELIVER_SUCCESS"

    invoke-virtual {v0, v5, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    .line 11
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v0

    iget-object v0, v0, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v5, "SETTING_NOTIFY_STATUS_DELIVER_BACK"

    invoke-virtual {v0, v5, v3}, Lc/b/k/e;->a(Ljava/lang/String;Z)Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    long-to-int v0, v5

    div-int/lit16 v0, v0, 0x3e8

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {p0, v0, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Lb/i/e/k;

    const-string v7, "999"

    invoke-direct {v6, p0, v7}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    iget-object v8, v6, Lb/i/e/k;->s:Landroid/app/Notification;

    const/high16 v9, 0x7f0d0000

    iput v9, v8, Landroid/app/Notification;->icon:I

    .line 14
    invoke-virtual {v6, v2}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    new-instance v2, Lb/i/e/j;

    invoke-direct {v2}, Lb/i/e/j;-><init>()V

    invoke-virtual {v6, v2}, Lb/i/e/k;->h(Lb/i/e/m;)Lb/i/e/k;

    invoke-virtual {v6, v4}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    invoke-virtual {v6, v3}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    invoke-virtual {v6, v5}, Lb/i/e/k;->g(Landroid/net/Uri;)Lb/i/e/k;

    .line 15
    iput-object v1, v6, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    const-string v1, "notification"

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_f

    new-instance v2, Landroid/app/NotificationChannel;

    const v3, 0x7f100027

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v7, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_f
    invoke-virtual {v6}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 17
    invoke-virtual {p1}, Lc/d/b/u/h0;->v()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v9}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->handle(Landroid/content/Context;Ljava/util/Map;I)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lc/b/k/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "PREF_TOKEN_FCM"

    invoke-virtual {v1, v2, p1}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lb/u/a;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc/b/n/a;

    invoke-direct {v2, p0}, Lc/b/n/a;-><init>(Lcom/emsportal/fcm/MyFirebaseMessagingService;)V

    invoke-static {p1, v0, v1, v2}, Lc/b/s/a;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/b/t/b$d;)V

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->enablePush(Ljava/lang/String;Z)V

    return-void
.end method
