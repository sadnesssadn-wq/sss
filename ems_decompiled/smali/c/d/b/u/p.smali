.class public final synthetic Lc/d/b/u/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/h;


# instance fields
.field public synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/p;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lc/d/b/u/p;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    check-cast p1, Lc/d/b/u/u0;

    .line 1
    iget-object v0, v0, Lcom/google/firebase/messaging/FirebaseMessaging;->g:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Lc/d/b/u/u0;->h:Lc/d/b/u/s0;

    invoke-virtual {v0}, Lc/d/b/u/s0;->a()Lc/d/b/u/r0;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lc/d/b/u/u0;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lc/d/b/u/u0;->g(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p1

    throw v0

    :cond_1
    :goto_1
    return-void
.end method
