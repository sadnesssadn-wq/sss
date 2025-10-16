.class public final synthetic Lc/d/b/u/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/k;


# instance fields
.field public synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public synthetic b:Ljava/lang/String;

.field public synthetic c:Lc/d/b/u/p0$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lc/d/b/u/p0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/r;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lc/d/b/u/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/d/b/u/r;->c:Lc/d/b/u/p0$a;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lc/d/a/b/p/l;
    .locals 8

    iget-object v0, p0, Lc/d/b/u/r;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lc/d/b/u/r;->b:Ljava/lang/String;

    iget-object v2, p0, Lc/d/b/u/r;->c:Lc/d/b/u/p0$a;

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v3, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->c(Landroid/content/Context;)Lc/d/b/u/p0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->i:Lc/d/b/u/d0;

    invoke-virtual {v5}, Lc/d/b/u/d0;->a()Ljava/lang/String;

    move-result-object v5

    .line 2
    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p1, v5, v6, v7}, Lc/d/b/u/p0$a;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v6, v3, Lc/d/b/u/p0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v3, v4, v1}, Lc/d/b/u/p0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    if-eqz v2, :cond_1

    .line 3
    iget-object v1, v2, Lc/d/b/u/p0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    :cond_1
    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    .line 5
    invoke-virtual {v1}, Lc/d/b/g;->a()V

    iget-object v1, v1, Lc/d/b/g;->b:Ljava/lang/String;

    const-string v2, "[DEFAULT]"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    const-string v2, "FirebaseMessaging"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->a:Lc/d/b/g;

    .line 7
    invoke-virtual {v1}, Lc/d/b/g;->a()V

    iget-object v1, v1, Lc/d/b/g;->b:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Invoking onNewToken for app: "

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lc/d/b/u/m;

    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    invoke-direct {v2, v0}, Lc/d/b/u/m;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lc/d/b/u/m;->b(Landroid/content/Intent;)Lc/d/a/b/p/l;

    .line 9
    :cond_4
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q(Ljava/lang/Object;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v3

    throw p1
.end method
