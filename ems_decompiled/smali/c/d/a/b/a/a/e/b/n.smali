.class public final Lc/d/a/b/a/a/e/b/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Lc/d/a/b/a/a/e/b/n;


# instance fields
.field public a:Lc/d/a/b/a/a/e/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lc/d/a/b/a/a/e/b/b;->a(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/b;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/a/e/b/n;->a:Lc/d/a/b/a/a/e/b/b;

    invoke-virtual {p1}, Lc/d/a/b/a/a/e/b/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p0, Lc/d/a/b/a/a/e/b/n;->a:Lc/d/a/b/a/a/e/b/b;

    invoke-virtual {p1}, Lc/d/a/b/a/a/e/b/b;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/n;
    .locals 2

    const-class v0, Lc/d/a/b/a/a/e/b/n;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lc/d/a/b/a/a/e/b/n;->b:Lc/d/a/b/a/a/e/b/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    :try_start_3
    new-instance v1, Lc/d/a/b/a/a/e/b/n;

    invoke-direct {v1, p0}, Lc/d/a/b/a/a/e/b/n;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc/d/a/b/a/a/e/b/n;->b:Lc/d/a/b/a/a/e/b/n;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 3
    :try_start_4
    monitor-exit v0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/a/e/b/n;->a:Lc/d/a/b/a/a/e/b/b;

    .line 1
    iget-object v1, v0, Lc/d/a/b/a/a/e/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Lc/d/a/b/a/a/e/b/b;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v0, Lc/d/a/b/a/a/e/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_3
    iget-object v0, v0, Lc/d/a/b/a/a/e/b/b;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
