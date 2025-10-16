.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lc/d/b/u/g;
.source ""


# static fields
.field public static final h:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->h:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/b/u/g;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/content/Intent;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    const-string v5, "FirebaseMessaging"

    if-nez v3, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->h(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown intent action: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    const-string v0, "google.message_id"

    .line 1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/google/firebase/messaging/FirebaseMessagingService;->h:Ljava/util/Queue;

    invoke-interface {v6, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Received duplicate message: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v10

    const/16 v11, 0xa

    if-lt v10, v11, :cond_8

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_8
    invoke-interface {v6, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_3
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_2a

    const-string v3, "message_type"

    .line 3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "gcm"

    if-nez v3, :cond_9

    move-object v3, v6

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x2

    sparse-switch v10, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string v6, "send_event"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x2

    goto :goto_6

    :sswitch_1
    const-string v6, "send_error"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x3

    goto :goto_6

    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_6

    :sswitch_3
    const-string v6, "deleted_messages"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v6, -0x1

    :goto_6
    const-string v10, "message_id"

    if-eqz v6, :cond_f

    if-eq v6, v8, :cond_2a

    if-eq v6, v11, :cond_e

    if-eq v6, v7, :cond_c

    const-string v0, "Received message with unknown type: "

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_7
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 4
    :cond_c
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_d
    new-instance v0, Lc/d/b/u/l0;

    const-string v3, "error"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lc/d/b/u/l0;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->i()V

    goto/16 :goto_1c

    :cond_e
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->g()V

    goto/16 :goto_1c

    .line 6
    :cond_f
    invoke-static/range {p1 .. p1}, Lc/d/b/u/n;->s(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v6, "_nr"

    invoke-static {v6, v3}, Lc/d/b/u/n;->p(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_8

    :cond_11
    const-string v3, "delivery_metrics_exported_to_big_query_enabled"

    .line 8
    :try_start_0
    invoke-static {}, Lc/d/b/g;->b()Lc/d/b/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lc/d/b/g;->b()Lc/d/b/g;

    move-result-object v4

    .line 9
    invoke-virtual {v4}, Lc/d/b/g;->a()V

    iget-object v4, v4, Lc/d/b/g;->a:Landroid/content/Context;

    const-string v6, "com.google.firebase.messaging"

    .line 10
    invoke-virtual {v4, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "export_to_big_query"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_9

    :cond_12
    :try_start_1
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_13

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_13

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_0
    const-string v3, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_13
    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_26

    .line 11
    sget-object v26, Lc/d/b/u/d1/a$b;->e:Lc/d/b/u/d1/a$b;

    .line 12
    sget-object v3, Lcom/google/firebase/messaging/FirebaseMessaging;->n:Lc/d/a/a/g;

    if-nez v3, :cond_14

    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    .line 13
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 14
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_15

    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 15
    :cond_15
    sget v6, Lc/d/b/u/d1/a;->p:I

    const-string v6, ""

    const-string v7, "google.ttl"

    .line 16
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v12, v7, Ljava/lang/Integer;

    if-eqz v12, :cond_16

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_a
    move v9, v7

    goto :goto_b

    :cond_16
    instance-of v12, v7, Ljava/lang/String;

    if-eqz v12, :cond_17

    :try_start_2
    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :goto_b
    move/from16 v22, v9

    goto :goto_c

    :catch_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    const-string v12, "Invalid TTL: "

    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const/16 v22, 0x0

    :goto_c
    const-string v7, "google.to"

    .line 17
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    :goto_d
    move-object/from16 v16, v7

    goto :goto_e

    :cond_18
    :try_start_3
    invoke-static {}, Lc/d/b/g;->b()Lc/d/b/g;

    move-result-object v7

    invoke-static {v7}, Lc/d/b/s/g;->f(Lc/d/b/g;)Lc/d/b/s/g;

    move-result-object v7

    invoke-virtual {v7}, Lc/d/b/s/g;->getId()Lc/d/a/b/p/l;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_d

    .line 18
    :goto_e
    invoke-static {}, Lc/d/b/g;->b()Lc/d/b/g;

    move-result-object v7

    .line 19
    invoke-virtual {v7}, Lc/d/b/g;->a()V

    iget-object v7, v7, Lc/d/b/g;->a:Landroid/content/Context;

    .line 20
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    .line 21
    sget-object v18, Lc/d/b/u/d1/a$d;->e:Lc/d/b/u/d1/a$d;

    .line 22
    invoke-static {v4}, Lc/d/b/u/e0;->l(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_19

    sget-object v7, Lc/d/b/u/d1/a$c;->g:Lc/d/b/u/d1/a$c;

    goto :goto_f

    :cond_19
    sget-object v7, Lc/d/b/u/d1/a$c;->e:Lc/d/b/u/d1/a$c;

    :goto_f
    move-object/from16 v17, v7

    .line 23
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {v4, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1a
    if-eqz v0, :cond_1b

    move-object v15, v0

    goto :goto_10

    :cond_1b
    move-object v15, v6

    .line 24
    :goto_10
    invoke-static {v4}, Lc/d/b/u/n;->m(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    move-object/from16 v23, v0

    goto :goto_11

    :cond_1c
    move-object/from16 v23, v6

    :goto_11
    const-string v0, "collapse_key"

    .line 25
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    move-object/from16 v20, v0

    goto :goto_12

    :cond_1d
    move-object/from16 v20, v6

    :goto_12
    const-string v0, "google.c.a.m_l"

    .line 26
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    move-object/from16 v27, v0

    goto :goto_13

    :cond_1e
    move-object/from16 v27, v6

    :goto_13
    const-string v0, "google.c.a.c_l"

    .line 27
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    move-object/from16 v30, v0

    goto :goto_14

    :cond_1f
    move-object/from16 v30, v6

    :goto_14
    const-string v0, "google.c.sender.id"

    .line 28
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_20

    :try_start_4
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_17

    :catch_3
    move-exception v0

    const-string v4, "error parsing project number"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    invoke-static {}, Lc/d/b/g;->b()Lc/d/b/g;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lc/d/b/g;->a()V

    iget-object v0, v4, Lc/d/b/g;->c:Lc/d/b/i;

    .line 30
    iget-object v0, v0, Lc/d/b/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 31
    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_17

    :catch_4
    move-exception v0

    move-object v6, v0

    const-string v0, "error parsing sender ID"

    invoke-static {v5, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :cond_21
    invoke-virtual {v4}, Lc/d/b/g;->a()V

    iget-object v0, v4, Lc/d/b/g;->c:Lc/d/b/i;

    .line 33
    iget-object v0, v0, Lc/d/b/i;->b:Ljava/lang/String;

    const-string v4, "1:"

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_15

    :cond_22
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-ge v4, v11, :cond_23

    goto :goto_16

    :cond_23
    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_16

    :cond_24
    :goto_15
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_17

    :catch_5
    move-exception v0

    move-object v4, v0

    const-string v0, "error parsing app ID"

    invoke-static {v5, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    move-wide v6, v9

    :goto_17
    cmp-long v0, v6, v9

    if-lez v0, :cond_25

    move-wide v13, v6

    goto :goto_18

    :cond_25
    move-wide v13, v9

    .line 35
    :goto_18
    new-instance v0, Lc/d/b/u/d1/a;

    move-object v12, v0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v28, 0x0

    invoke-direct/range {v12 .. v30}, Lc/d/b/u/d1/a;-><init>(JLjava/lang/String;Ljava/lang/String;Lc/d/b/u/d1/a$c;Lc/d/b/u/d1/a$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLc/d/b/u/d1/a$b;Ljava/lang/String;JLjava/lang/String;)V

    :try_start_7
    const-string v4, "FCM_CLIENT_EVENT_LOGGING"

    .line 36
    const-class v6, Lc/d/b/u/d1/b;

    const-string v7, "proto"

    .line 37
    new-instance v8, Lc/d/a/a/b;

    invoke-direct {v8, v7}, Lc/d/a/a/b;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v7, Lc/d/b/u/c0;->a:Lc/d/b/u/c0;

    invoke-interface {v3, v4, v6, v8, v7}, Lc/d/a/a/g;->a(Ljava/lang/String;Ljava/lang/Class;Lc/d/a/a/b;Lc/d/a/a/e;)Lc/d/a/a/f;

    move-result-object v3

    .line 39
    sget v4, Lc/d/b/u/d1/b;->b:I

    .line 40
    new-instance v4, Lc/d/b/u/d1/b;

    invoke-direct {v4, v0}, Lc/d/b/u/d1/b;-><init>(Lc/d/b/u/d1/a;)V

    .line 41
    new-instance v0, Lc/d/a/a/a;

    sget-object v6, Lc/d/a/a/d;->d:Lc/d/a/a/d;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v4, v6}, Lc/d/a/a/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lc/d/a/a/d;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 42
    check-cast v3, Lc/d/a/a/j/l;

    :try_start_8
    invoke-virtual {v3, v0}, Lc/d/a/a/j/l;->a(Lc/d/a/a/c;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1a

    :catch_6
    move-exception v0

    const-string v3, "Failed to send big query analytics payload."

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_7
    move-exception v0

    goto :goto_19

    :catch_8
    move-exception v0

    .line 43
    :goto_19
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 44
    :cond_26
    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_27
    const-string v3, "androidx.content.wakelockid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Lc/d/b/u/e0;->l(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v3, Lc/d/b/u/e0;

    invoke-direct {v3, v0}, Lc/d/b/u/e0;-><init>(Landroid/os/Bundle;)V

    .line 45
    new-instance v4, Lc/d/a/b/e/t/g/a;

    const-string v5, "Firebase-Messaging-Network-Io"

    invoke-direct {v4, v5}, Lc/d/a/b/e/t/g/a;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 46
    new-instance v5, Lc/d/b/u/c;

    invoke-direct {v5, v1, v3, v4}, Lc/d/b/u/c;-><init>(Landroid/content/Context;Lc/d/b/u/e0;Ljava/util/concurrent/Executor;)V

    :try_start_9
    invoke-virtual {v5}, Lc/d/b/u/c;->a()Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-eqz v3, :cond_28

    goto :goto_1c

    :cond_28
    invoke-static/range {p1 .. p1}, Lc/d/b/u/n;->s(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_nf"

    invoke-static {v3, v2}, Lc/d/b/u/n;->p(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1b

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 48
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v2

    :cond_29
    :goto_1b
    new-instance v2, Lc/d/b/u/h0;

    invoke-direct {v2, v0}, Lc/d/b/u/h0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/FirebaseMessagingService;->f(Lc/d/b/u/h0;)V

    :cond_2a
    :goto_1c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch
.end method

.method public f(Lc/d/b/u/h0;)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method
