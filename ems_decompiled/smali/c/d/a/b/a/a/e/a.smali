.class public Lc/d/a/b/a/a/e/a;
.super Lc/d/a/b/e/m/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/d<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static k:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    sget-object v0, Lc/d/a/b/a/a/a;->e:Lc/d/a/b/e/m/a;

    new-instance v1, Lc/d/a/b/e/m/m/a;

    invoke-direct {v1}, Lc/d/a/b/e/m/m/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lc/d/a/b/e/m/d;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Lc/d/a/b/e/m/m/a;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized d()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v0, Lc/d/a/b/a/a/e/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    .line 2
    sget-object v1, Lc/d/a/b/e/d;->c:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lc/d/a/b/e/d;->d:Lc/d/a/b/e/d;

    const v2, 0xbdfcb8

    :try_start_1
    invoke-virtual {v1, v0, v2}, Lc/d/a/b/e/d;->b(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lc/d/a/b/a/a/e/a;->k:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lc/d/a/b/e/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    sget v0, Lc/d/a/b/a/a/e/a;->k:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
