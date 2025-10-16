.class public Lc/d/b/u/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public final c:Lc/d/b/u/e0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/b/u/e0;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lc/d/b/u/c;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lc/d/b/u/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lc/d/b/u/c;->c:Lc/d/b/u/e0;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 15

    iget-object v0, p0, Lc/d/b/u/c;->c:Lc/d/b/u/e0;

    const-string v1, "gcm.n.noui"

    invoke-virtual {v0, v1}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget-object v0, p0, Lc/d/b/u/c;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->g0()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, p0, Lc/d/b/u/c;->b:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_3

    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    return v1

    .line 2
    :cond_5
    iget-object v0, p0, Lc/d/b/u/c;->c:Lc/d/b/u/e0;

    const-string v2, "gcm.n.image"

    invoke-virtual {v0, v2}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "FirebaseMessaging"

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    :try_start_0
    new-instance v2, Lc/d/b/u/b0;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lc/d/b/u/b0;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not downloading image, bad URL: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    .line 4
    iget-object v0, p0, Lc/d/b/u/c;->a:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v4, Lc/d/b/u/a0;

    invoke-direct {v4, v2}, Lc/d/b/u/a0;-><init>(Lc/d/b/u/b0;)V

    invoke-static {v0, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lc/d/a/b/p/l;

    move-result-object v0

    iput-object v0, v2, Lc/d/b/u/b0;->d:Lc/d/a/b/p/l;

    .line 6
    :cond_8
    iget-object v0, p0, Lc/d/b/u/c;->b:Landroid/content/Context;

    iget-object v4, p0, Lc/d/b/u/c;->c:Lc/d/b/u/e0;

    .line 7
    sget-object v5, Lc/d/b/u/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "Couldn\'t get own application info: "

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    .line 8
    :try_start_1
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v7, :cond_9

    goto :goto_5

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 9
    :goto_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "gcm.n.android_channel_id"

    .line 10
    invoke-virtual {v4, v9}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1a

    const/4 v11, 0x3

    if-ge v5, v10, :cond_a

    goto/16 :goto_8

    .line 11
    :cond_a
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-lt v1, v10, :cond_10

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x7a

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Notification Channel requested ("

    const-string v13, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-static {v12, v10, v9, v13, v3}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v9, "com.google.firebase.messaging.default_notification_channel_id"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-eqz v10, :cond_d

    goto :goto_9

    :cond_d
    const-string v9, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    goto :goto_6

    :cond_e
    const-string v9, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    :goto_6
    invoke-static {v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "fcm_fallback_notification_channel"

    invoke-virtual {v1, v9}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v10

    if-nez v10, :cond_11

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "fcm_fallback_notification_channel_label"

    const-string v14, "string"

    invoke-virtual {v10, v13, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_f

    const-string v10, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "Misc"

    goto :goto_7

    :cond_f
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_7
    new-instance v12, Landroid/app/NotificationChannel;

    invoke-direct {v12, v9, v10, v11}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_9

    :catch_2
    :cond_10
    :goto_8
    const/4 v9, 0x0

    .line 12
    :cond_11
    :goto_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 13
    new-instance v11, Lb/i/e/k;

    invoke-direct {v11, v0, v9}, Lb/i/e/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v9, "gcm.n.title"

    invoke-virtual {v4, v1, v8, v9}, Lc/d/b/u/e0;->i(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    invoke-virtual {v11, v9}, Lb/i/e/k;->e(Ljava/lang/CharSequence;)Lb/i/e/k;

    :cond_12
    const-string v9, "gcm.n.body"

    invoke-virtual {v4, v1, v8, v9}, Lc/d/b/u/e0;->i(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-virtual {v11, v9}, Lb/i/e/k;->d(Ljava/lang/CharSequence;)Lb/i/e/k;

    new-instance v12, Lb/i/e/j;

    invoke-direct {v12}, Lb/i/e/j;-><init>()V

    invoke-virtual {v12, v9}, Lb/i/e/j;->d(Ljava/lang/CharSequence;)Lb/i/e/j;

    invoke-virtual {v11, v12}, Lb/i/e/k;->h(Lb/i/e/m;)Lb/i/e/k;

    :cond_13
    const-string v9, "gcm.n.icon"

    invoke-virtual {v4, v9}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_16

    const-string v12, "drawable"

    invoke-virtual {v1, v9, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v1, v12}, Lc/d/b/u/a;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_1a

    :cond_14
    const-string v12, "mipmap"

    invoke-virtual {v1, v9, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_15

    invoke-static {v1, v12}, Lc/d/b/u/a;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_1a

    :cond_15
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x3d

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Icon resource "

    const-string v14, " not found. Notification will use default icon."

    invoke-static {v13, v12, v9, v14, v3}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v9, "com.google.firebase.messaging.default_notification_icon"

    const/4 v12, 0x0

    invoke-virtual {v7, v9, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_17

    invoke-static {v1, v9}, Lc/d/b/u/a;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_18

    :cond_17
    :try_start_3
    invoke-virtual {v10, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v6, v12, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v12, v6

    goto :goto_a

    :catch_3
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move v12, v9

    :goto_a
    if-eqz v12, :cond_19

    invoke-static {v1, v12}, Lc/d/b/u/a;->a(Landroid/content/res/Resources;I)Z

    move-result v6

    if-nez v6, :cond_1a

    :cond_19
    const v12, 0x1080093

    .line 15
    :cond_1a
    iget-object v6, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    iput v12, v6, Landroid/app/Notification;->icon:I

    const-string v6, "gcm.n.sound2"

    .line 16
    invoke-virtual {v4, v6}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const-string v6, "gcm.n.sound"

    invoke-virtual {v4, v6}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 17
    :cond_1b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_1c

    const/4 v1, 0x0

    goto :goto_b

    :cond_1c
    const-string v9, "default"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string v9, "raw"

    invoke-virtual {v1, v6, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x18

    add-int/2addr v1, v9

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "android.resource://"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/raw/"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_b

    :cond_1d
    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_1e

    .line 18
    invoke-virtual {v11, v1}, Lb/i/e/k;->g(Landroid/net/Uri;)Lb/i/e/k;

    :cond_1e
    const-string v1, "gcm.n.click_action"

    .line 19
    invoke-virtual {v4, v1}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1f

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_c

    :cond_1f
    invoke-virtual {v4}, Lc/d/b/u/e0;->e()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_20

    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_c

    :cond_20
    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_21

    const-string v1, "No activity found to launch app"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_c
    const/16 v1, 0x17

    const-string v8, "google.c.a.e"

    if-nez v6, :cond_22

    const/4 v6, 0x0

    goto :goto_11

    :cond_22
    const/high16 v9, 0x4000000

    .line 20
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    new-instance v9, Landroid/os/Bundle;

    iget-object v10, v4, Lc/d/b/u/e0;->a:Landroid/os/Bundle;

    invoke-direct {v9, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v10, v4, Lc/d/b/u/e0;->a:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_23
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_26

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "google.c."

    .line 22
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_25

    const-string v14, "gcm.n."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_25

    const-string v14, "gcm.notification."

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_24

    goto :goto_e

    :cond_24
    const/4 v14, 0x0

    goto :goto_f

    :cond_25
    :goto_e
    const/4 v14, 0x1

    :goto_f
    if-eqz v14, :cond_23

    .line 23
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_d

    .line 24
    :cond_26
    invoke-virtual {v6, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v4, v8}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 26
    invoke-virtual {v4}, Lc/d/b/u/e0;->m()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "gcm.n.analytics_data"

    invoke-virtual {v6, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 27
    :cond_27
    sget-object v9, Lc/d/b/u/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    if-lt v5, v1, :cond_28

    const/high16 v10, 0x44000000    # 512.0f

    goto :goto_10

    :cond_28
    const/high16 v10, 0x40000000    # 2.0f

    .line 28
    :goto_10
    invoke-static {v0, v9, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 29
    :goto_11
    iput-object v6, v11, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    .line 30
    invoke-virtual {v4, v8}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_29

    const/4 v1, 0x0

    goto :goto_13

    .line 31
    :cond_29
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lc/d/b/u/e0;->m()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    .line 32
    sget-object v8, Lc/d/b/u/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    .line 33
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-string v13, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v10, v0, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "wrapped_intent"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    if-lt v5, v1, :cond_2a

    const/high16 v1, 0x44000000    # 512.0f

    goto :goto_12

    :cond_2a
    const/high16 v1, 0x40000000    # 2.0f

    :goto_12
    invoke-static {v0, v8, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_13
    if-eqz v1, :cond_2b

    .line 34
    iget-object v6, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object v1, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_2b
    const-string v1, "gcm.n.color"

    .line 35
    invoke-virtual {v4, v1}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x15

    if-ge v5, v6, :cond_2c

    goto :goto_14

    .line 36
    :cond_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2d

    :try_start_4
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_15

    :catch_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x38

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Color is invalid: "

    const-string v8, ". Notification will use default color."

    invoke-static {v6, v5, v1, v8, v3}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const-string v1, "com.google.firebase.messaging.default_notification_color"

    const/4 v5, 0x0

    invoke-virtual {v7, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2e

    :try_start_5
    invoke-static {v0, v1}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_15

    :catch_5
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    :goto_14
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_2f

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    iput v0, v11, Lb/i/e/k;->o:I

    :cond_2f
    const-string v0, "gcm.n.sticky"

    .line 39
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v11, v0}, Lb/i/e/k;->c(Z)Lb/i/e/k;

    const-string v0, "gcm.n.local_only"

    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v0

    .line 40
    iput-boolean v0, v11, Lb/i/e/k;->m:Z

    const-string v0, "gcm.n.ticker"

    .line 41
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 42
    iget-object v1, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    invoke-static {v0}, Lb/i/e/k;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_30
    const-string v0, "gcm.n.notification_priority"

    .line 43
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_31

    goto :goto_16

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v1, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v12, :cond_33

    :cond_32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x48

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "notificationPriority is invalid "

    const-string v7, ". Skipping setting notificationPriority."

    invoke-static {v5, v6, v0, v7, v3}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    const/4 v0, 0x0

    :cond_33
    if-eqz v0, :cond_34

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    iput v0, v11, Lb/i/e/k;->j:I

    :cond_34
    const-string v0, "gcm.n.visibility"

    .line 46
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_35

    goto :goto_17

    :cond_35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    if-lt v5, v6, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_37

    :cond_36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x35

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "visibility is invalid: "

    const-string v7, ". Skipping setting visibility."

    const-string v8, "NotificationParams"

    invoke-static {v5, v6, v0, v7, v8}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const/4 v0, 0x0

    :cond_37
    if-eqz v0, :cond_38

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    iput v0, v11, Lb/i/e/k;->p:I

    :cond_38
    const-string v0, "gcm.n.notification_count"

    .line 49
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_18

    :cond_39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gez v5, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x43

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "notificationCount is invalid: "

    const-string v7, ". Skipping setting notificationCount."

    invoke-static {v5, v6, v0, v7, v3}, Lc/a/a/a/a;->D(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    const/4 v0, 0x0

    :cond_3a
    if-eqz v0, :cond_3b

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    iput v0, v11, Lb/i/e/k;->i:I

    :cond_3b
    const-string v0, "gcm.n.event_time"

    .line 52
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->h(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/4 v5, 0x1

    .line 53
    iput-boolean v5, v11, Lb/i/e/k;->k:Z

    .line 54
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 55
    iget-object v0, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-wide v5, v0, Landroid/app/Notification;->when:J

    .line 56
    :cond_3c
    invoke-virtual {v4}, Lc/d/b/u/e0;->k()[J

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 57
    iget-object v5, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    iput-object v0, v5, Landroid/app/Notification;->vibrate:[J

    .line 58
    :cond_3d
    invoke-virtual {v4}, Lc/d/b/u/e0;->d()[I

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v5, 0x0

    aget v5, v0, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    aget v0, v0, v12

    .line 59
    iget-object v7, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    iput v5, v7, Landroid/app/Notification;->ledARGB:I

    iput v6, v7, Landroid/app/Notification;->ledOnMS:I

    iput v0, v7, Landroid/app/Notification;->ledOffMS:I

    if-eqz v6, :cond_3e

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_19

    :cond_3e
    const/4 v0, 0x0

    :goto_19
    iget v5, v7, Landroid/app/Notification;->flags:I

    and-int/2addr v1, v5

    or-int/2addr v0, v1

    iput v0, v7, Landroid/app/Notification;->flags:I

    :cond_3f
    const-string v0, "gcm.n.default_sound"

    .line 60
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gcm.n.default_vibrate_timings"

    invoke-virtual {v4, v1}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    or-int/lit8 v0, v0, 0x2

    :cond_40
    const-string v1, "gcm.n.default_light_settings"

    invoke-virtual {v4, v1}, Lc/d/b/u/e0;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    or-int/lit8 v0, v0, 0x4

    .line 61
    :cond_41
    iget-object v1, v11, Lb/i/e/k;->s:Landroid/app/Notification;

    iput v0, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_42

    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->flags:I

    :cond_42
    const-string v0, "gcm.n.tag"

    .line 62
    invoke-virtual {v4, v0}, Lc/d/b/u/e0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    goto :goto_1a

    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "FCM-Notification:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    if-nez v2, :cond_44

    goto :goto_1b

    .line 63
    :cond_44
    :try_start_6
    iget-object v1, v2, Lc/d/b/u/b0;->d:Lc/d/a/b/p/l;

    const-string v4, "null reference"

    .line 64
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v4, 0x5

    .line 65
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v4, v5, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->b(Lc/d/a/b/p/l;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v11, v1}, Lb/i/e/k;->f(Landroid/graphics/Bitmap;)Lb/i/e/k;

    new-instance v4, Lb/i/e/i;

    invoke-direct {v4}, Lb/i/e/i;-><init>()V

    .line 66
    iput-object v1, v4, Lb/i/e/i;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v4, v1}, Lb/i/e/i;->d(Landroid/graphics/Bitmap;)Lb/i/e/i;

    invoke-virtual {v11, v4}, Lb/i/e/k;->h(Lb/i/e/m;)Lb/i/e/k;
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_1b

    :catch_6
    const-string v1, "Failed to download image in time, showing notification without it"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lc/d/b/u/b0;->close()V

    goto :goto_1b

    :catch_7
    const-string v1, "Interrupted while downloading image, showing notification without it"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lc/d/b/u/b0;->close()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1b

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    const-string v2, "Failed to download image: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    const/4 v1, 0x3

    .line 68
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "Showing notification"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iget-object v1, p0, Lc/d/b/u/c;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v11}, Lb/i/e/k;->a()Landroid/app/Notification;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v0, 0x1

    return v0
.end method
