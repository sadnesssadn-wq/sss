.class public Lc/d/b/u/z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/b/g;

.field public final b:Lc/d/b/u/d0;

.field public final c:Lc/d/a/b/d/c;

.field public final d:Lc/d/b/r/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/r/b<",
            "Lc/d/b/v/h;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lc/d/b/r/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/b/r/b<",
            "Lc/d/b/p/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lc/d/b/s/h;


# direct methods
.method public constructor <init>(Lc/d/b/g;Lc/d/b/u/d0;Lc/d/b/r/b;Lc/d/b/r/b;Lc/d/b/s/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/b/g;",
            "Lc/d/b/u/d0;",
            "Lc/d/b/r/b<",
            "Lc/d/b/v/h;",
            ">;",
            "Lc/d/b/r/b<",
            "Lc/d/b/p/f;",
            ">;",
            "Lc/d/b/s/h;",
            ")V"
        }
    .end annotation

    new-instance v0, Lc/d/a/b/d/c;

    .line 1
    invoke-virtual {p1}, Lc/d/b/g;->a()V

    iget-object v1, p1, Lc/d/b/g;->a:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v1}, Lc/d/a/b/d/c;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/z;->a:Lc/d/b/g;

    iput-object p2, p0, Lc/d/b/u/z;->b:Lc/d/b/u/d0;

    iput-object v0, p0, Lc/d/b/u/z;->c:Lc/d/a/b/d/c;

    iput-object p3, p0, Lc/d/b/u/z;->d:Lc/d/b/r/b;

    iput-object p4, p0, Lc/d/b/u/z;->e:Lc/d/b/r/b;

    iput-object p5, p0, Lc/d/b/u/z;->f:Lc/d/b/s/h;

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/p/l;)Lc/d/a/b/p/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lc/d/a/b/p/l<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lc/d/b/u/y;->a:Lc/d/b/u/y;

    new-instance v1, Lc/d/b/u/x;

    invoke-direct {v1, p0}, Lc/d/b/u/x;-><init>(Lc/d/b/u/z;)V

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/p/l;->g(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "scope"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "subtype"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmp_app_id"

    iget-object p2, p0, Lc/d/b/u/z;->a:Lc/d/b/g;

    .line 1
    invoke-virtual {p2}, Lc/d/b/g;->a()V

    iget-object p2, p2, Lc/d/b/g;->c:Lc/d/b/i;

    .line 2
    iget-object p2, p2, Lc/d/b/i;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gmsv"

    iget-object p2, p0, Lc/d/b/u/z;->b:Lc/d/b/u/d0;

    .line 4
    monitor-enter p2

    :try_start_0
    iget v0, p2, Lc/d/b/u/d0;->d:I

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p2, v0}, Lc/d/b/u/d0;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p2, Lc/d/b/u/d0;->d:I

    :cond_0
    iget v0, p2, Lc/d/b/u/d0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p2

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osv"

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver"

    iget-object p2, p0, Lc/d/b/u/z;->b:Lc/d/b/u/d0;

    invoke-virtual {p2}, Lc/d/b/u/d0;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_ver_name"

    iget-object p2, p0, Lc/d/b/u/z;->b:Lc/d/b/u/d0;

    .line 6
    monitor-enter p2

    :try_start_1
    iget-object v0, p2, Lc/d/b/u/d0;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lc/d/b/u/d0;->e()V

    :cond_1
    iget-object v0, p2, Lc/d/b/u/d0;->c:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    .line 7
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firebase-app-name-hash"

    .line 8
    iget-object p2, p0, Lc/d/b/u/z;->a:Lc/d/b/g;

    .line 9
    invoke-virtual {p2}, Lc/d/b/g;->a()V

    iget-object p2, p2, Lc/d/b/g;->b:Ljava/lang/String;

    const-string v0, "SHA-1"

    .line 10
    :try_start_2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    const/16 v0, 0xb

    .line 11
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "[HASH-ERROR]"

    .line 12
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    iget-object p1, p0, Lc/d/b/u/z;->f:Lc/d/b/s/h;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lc/d/b/s/h;->a(Z)Lc/d/a/b/p/l;

    move-result-object p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/b/s/l;

    invoke-virtual {p1}, Lc/d/b/s/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "Goog-Firebase-Installations-Auth"

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "FirebaseMessaging"

    const-string p2, "FIS auth token is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    const-string p2, "FirebaseMessaging"

    const-string v0, "Failed to get FIS auth token"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string p1, "appid"

    iget-object p2, p0, Lc/d/b/u/z;->f:Lc/d/b/s/h;

    invoke-interface {p2}, Lc/d/b/s/h;->getId()Lc/d/a/b/p/l;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->a(Lc/d/a/b/p/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cliv"

    const-string p2, "fcm-23.0.0"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/d/b/u/z;->e:Lc/d/b/r/b;

    invoke-interface {p1}, Lc/d/b/r/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/b/p/f;

    iget-object p2, p0, Lc/d/b/u/z;->d:Lc/d/b/r/b;

    invoke-interface {p2}, Lc/d/b/r/b;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/b/v/h;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, "fire-iid"

    invoke-interface {p1, v0}, Lc/d/b/p/f;->a(Ljava/lang/String;)Lc/d/b/p/f$a;

    move-result-object p1

    sget-object v0, Lc/d/b/p/f$a;->d:Lc/d/b/p/f$a;

    if-eq p1, v0, :cond_3

    const-string v0, "Firebase-Client-Log-Type"

    .line 13
    iget p1, p1, Lc/d/b/p/f$a;->c:I

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Firebase-Client"

    invoke-interface {p2}, Lc/d/b/v/h;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    monitor-exit p2

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lc/d/a/b/p/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Lc/d/a/b/p/l<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lc/d/b/u/z;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p1, p0, Lc/d/b/u/z;->c:Lc/d/a/b/d/c;

    .line 1
    sget-object p2, Lc/d/a/b/d/b0;->a:Lc/d/a/b/d/b0;

    iget-object v0, p1, Lc/d/a/b/d/c;->c:Lc/d/a/b/d/v;

    .line 2
    monitor-enter v0

    :try_start_1
    iget v1, v0, Lc/d/a/b/d/v;->b:I

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, v0, Lc/d/a/b/d/v;->a:Landroid/content/Context;

    invoke-static {v2}, Lc/d/a/b/e/u/b;->a(Landroid/content/Context;)Lc/d/a/b/e/u/a;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    iget-object v2, v2, Lc/d/a/b/e/u/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to find package "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Metadata"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Lc/d/a/b/d/v;->b:I

    :cond_0
    iget v1, v0, Lc/d/a/b/d/v;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    const v0, 0xb71b00

    if-ge v1, v0, :cond_2

    .line 5
    iget-object v0, p1, Lc/d/a/b/d/c;->c:Lc/d/a/b/d/v;

    invoke-virtual {v0}, Lc/d/a/b/d/v;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Lc/d/a/b/d/c;->a(Landroid/os/Bundle;)Lc/d/a/b/p/l;

    move-result-object v0

    new-instance v1, Lc/d/a/b/d/w;

    invoke-direct {v1, p1, p3}, Lc/d/a/b/d/w;-><init>(Lc/d/a/b/d/c;Landroid/os/Bundle;)V

    invoke-virtual {v0, p2, v1}, Lc/d/a/b/p/l;->i(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "MISSING_INSTANCEID_SERVICE"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P(Ljava/lang/Exception;)Lc/d/a/b/p/l;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lc/d/a/b/d/c;->b:Landroid/content/Context;

    invoke-static {p1}, Lc/d/a/b/d/u;->a(Landroid/content/Context;)Lc/d/a/b/d/u;

    move-result-object p1

    .line 6
    new-instance v0, Lc/d/a/b/d/t;

    .line 7
    monitor-enter p1

    :try_start_4
    iget v1, p1, Lc/d/a/b/d/u;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lc/d/a/b/d/u;->d:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p1

    .line 8
    invoke-direct {v0, v1, p3}, Lc/d/a/b/d/t;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Lc/d/a/b/d/u;->b(Lc/d/a/b/d/r;)Lc/d/a/b/p/l;

    move-result-object p1

    .line 9
    sget-object p3, Lc/d/a/b/d/x;->a:Lc/d/a/b/d/x;

    invoke-virtual {p1, p2, p3}, Lc/d/a/b/p/l;->g(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    :goto_1
    return-object p1

    :catchall_0
    move-exception p2

    .line 10
    monitor-exit p1

    throw p2

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 12
    :goto_2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P(Ljava/lang/Exception;)Lc/d/a/b/p/l;

    move-result-object p1

    return-object p1
.end method
