.class public final Lc/d/a/b/a/a/e/b/r;
.super Lc/d/a/b/i/b/b;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    .line 1
    invoke-direct {p0, v0}, Lc/d/a/b/i/b/b;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lc/d/a/b/a/a/e/b/r;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final i0()V
    .locals 7

    iget-object v0, p0, Lc/d/a/b/a/a/e/b/r;->c:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "com.google.android.gms"

    .line 1
    invoke-static {v0}, Lc/d/a/b/e/u/b;->a(Landroid/content/Context;)Lc/d/a/b/e/u/a;

    move-result-object v3

    .line 2
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v3, v3, Lc/d/a/b/e/u/a;->a:Landroid/content/Context;

    const-string v6, "appops"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "context.getSystemService(Context.APP_OPS_SERVICE) is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    goto/16 :goto_8

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v3, 0x40

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {v0}, Lc/d/a/b/e/j;->a(Landroid/content/Context;)Lc/d/a/b/e/j;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-static {v1, v5}, Lc/d/a/b/e/j;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_7

    :cond_3
    invoke-static {v1, v4}, Lc/d/a/b/e/j;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lc/d/a/b/e/j;->a:Landroid/content/Context;

    .line 5
    sget-boolean v1, Lc/d/a/b/e/i;->b:Z

    if-nez v1, :cond_5

    :try_start_2
    invoke-static {v0}, Lc/d/a/b/e/u/b;->a(Landroid/content/Context;)Lc/d/a/b/e/u/a;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lc/d/a/b/e/u/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 7
    invoke-static {v0}, Lc/d/a/b/e/j;->a(Landroid/content/Context;)Lc/d/a/b/e/j;

    if-eqz v1, :cond_4

    invoke-static {v1, v5}, Lc/d/a/b/e/j;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1, v4}, Lc/d/a/b/e/j;->c(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v4, Lc/d/a/b/e/i;->a:Z

    goto :goto_1

    :cond_4
    sput-boolean v5, Lc/d/a/b/e/i;->a:Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "GooglePlayServicesUtil"

    const-string v2, "Cannot find Google Play services package name."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    sput-boolean v4, Lc/d/a/b/e/i;->b:Z

    goto :goto_3

    :goto_2
    sput-boolean v4, Lc/d/a/b/e/i;->b:Z

    throw v0

    :cond_5
    :goto_3
    sget-boolean v0, Lc/d/a/b/e/i;->a:Z

    if-nez v0, :cond_7

    .line 8
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    const-string v0, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    const/4 v4, 0x0

    :goto_7
    move v5, v4

    goto :goto_8

    :catch_2
    const/4 v0, 0x3

    const-string v1, "UidVerifier"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_8
    if-eqz v5, :cond_b

    return-void

    .line 11
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p2, 0x0

    goto/16 :goto_4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/a/a/e/b/r;->i0()V

    iget-object p1, p0, Lc/d/a/b/a/a/e/b/r;->c:Landroid/content/Context;

    invoke-static {p1}, Lc/d/a/b/a/a/e/b/n;->b(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/b/a/a/e/b/n;->a()V

    goto/16 :goto_4

    .line 2
    :cond_1
    sget-object p1, Lc/d/a/b/e/p/o;->a:Lc/d/a/b/e/p/o$b;

    invoke-virtual {p0}, Lc/d/a/b/a/a/e/b/r;->i0()V

    iget-object p4, p0, Lc/d/a/b/a/a/e/b/r;->c:Landroid/content/Context;

    invoke-static {p4}, Lc/d/a/b/a/a/e/b/b;->a(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/b;

    move-result-object p4

    invoke-virtual {p4}, Lc/d/a/b/a/a/e/b/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->r:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Lc/d/a/b/a/a/e/b/b;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    :cond_2
    iget-object p4, p0, Lc/d/a/b/a/a/e/b/r;->c:Landroid/content/Context;

    .line 3
    new-instance v2, Lc/d/a/b/a/a/e/a;

    const-string v3, "null reference"

    .line 4
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-direct {v2, p4, v1}, Lc/d/a/b/a/a/e/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string p4, "Result must not be null"

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, v2, Lc/d/a/b/e/m/d;->h:Lc/d/a/b/e/m/e;

    .line 7
    iget-object v3, v2, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Lc/d/a/b/a/a/e/a;->d()I

    move-result v2

    if-ne v2, v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_0
    sget-object v2, Lc/d/a/b/a/a/e/b/h;->a:Lc/d/a/b/e/q/a;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v4, "Revoking access"

    invoke-virtual {v2, v4, p3}, Lc/d/a/b/e/q/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lc/d/a/b/a/a/e/b/b;->a(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/b;

    move-result-object p3

    const-string v2, "refreshToken"

    .line 10
    invoke-virtual {p3, v2}, Lc/d/a/b/a/a/e/b/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-static {v3}, Lc/d/a/b/a/a/e/b/h;->a(Landroid/content/Context;)V

    if-eqz v1, :cond_5

    .line 12
    sget-object v0, Lc/d/a/b/a/a/e/b/f;->e:Lc/d/a/b/e/q/a;

    if-nez p3, :cond_4

    new-instance p3, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 13
    invoke-direct {p3, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 14
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/Status;->v()Z

    move-result p4

    xor-int/2addr p4, p2

    const-string v0, "Status code must not be SUCCESS"

    invoke-static {p4, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->f(ZLjava/lang/Object;)V

    new-instance p4, Lc/d/a/b/e/m/g;

    invoke-direct {p4, v1, p3}, Lc/d/a/b/e/m/g;-><init>(Lc/d/a/b/e/m/e;Lc/d/a/b/e/m/j;)V

    invoke-virtual {p4, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lc/d/a/b/e/m/j;)V

    goto :goto_1

    .line 15
    :cond_4
    new-instance p4, Lc/d/a/b/a/a/e/b/f;

    invoke-direct {p4, p3}, Lc/d/a/b/a/a/e/b/f;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    iget-object p4, p4, Lc/d/a/b/a/a/e/b/f;->d:Lc/d/a/b/e/m/m/q;

    goto :goto_1

    .line 16
    :cond_5
    new-instance p3, Lc/d/a/b/a/a/e/b/j;

    invoke-direct {p3, v0}, Lc/d/a/b/a/a/e/b/j;-><init>(Lc/d/a/b/e/m/e;)V

    invoke-virtual {v0, p3}, Lc/d/a/b/e/m/e;->f(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    move-result-object p4

    .line 17
    :goto_1
    new-instance p3, Lc/d/a/b/e/p/m0;

    invoke-direct {p3}, Lc/d/a/b/e/p/m0;-><init>()V

    .line 18
    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    new-instance v1, Lc/d/a/b/e/p/l0;

    invoke-direct {v1, p4, v0, p3, p1}, Lc/d/a/b/e/p/l0;-><init>(Lc/d/a/b/e/m/f;Lc/d/a/b/p/m;Lc/d/a/b/e/p/o$a;Lc/d/a/b/e/p/o$b;)V

    invoke-virtual {p4, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b(Lc/d/a/b/e/m/f$a;)V

    goto :goto_4

    .line 19
    :cond_6
    iget-object v0, v2, Lc/d/a/b/e/m/d;->h:Lc/d/a/b/e/m/e;

    .line 20
    iget-object v3, v2, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    .line 21
    invoke-virtual {v2}, Lc/d/a/b/a/a/e/a;->d()I

    move-result v2

    if-ne v2, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    .line 22
    :goto_2
    sget-object v2, Lc/d/a/b/a/a/e/b/h;->a:Lc/d/a/b/e/q/a;

    new-array p3, p3, [Ljava/lang/Object;

    const-string v4, "Signing out"

    invoke-virtual {v2, v4, p3}, Lc/d/a/b/e/q/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lc/d/a/b/a/a/e/b/h;->a(Landroid/content/Context;)V

    if-eqz v1, :cond_8

    sget-object p3, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    .line 23
    invoke-static {p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lc/d/a/b/e/m/m/q;

    invoke-direct {p4, v0}, Lc/d/a/b/e/m/m/q;-><init>(Lc/d/a/b/e/m/e;)V

    invoke-virtual {p4, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lc/d/a/b/e/m/j;)V

    goto :goto_3

    .line 24
    :cond_8
    new-instance p3, Lc/d/a/b/a/a/e/b/i;

    invoke-direct {p3, v0}, Lc/d/a/b/a/a/e/b/i;-><init>(Lc/d/a/b/e/m/e;)V

    invoke-virtual {v0, p3}, Lc/d/a/b/e/m/e;->f(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    move-result-object p4

    .line 25
    :goto_3
    new-instance p3, Lc/d/a/b/e/p/m0;

    invoke-direct {p3}, Lc/d/a/b/e/p/m0;-><init>()V

    .line 26
    new-instance v0, Lc/d/a/b/p/m;

    invoke-direct {v0}, Lc/d/a/b/p/m;-><init>()V

    new-instance v1, Lc/d/a/b/e/p/l0;

    invoke-direct {v1, p4, v0, p3, p1}, Lc/d/a/b/e/p/l0;-><init>(Lc/d/a/b/e/m/f;Lc/d/a/b/p/m;Lc/d/a/b/e/p/o$a;Lc/d/a/b/e/p/o$b;)V

    invoke-virtual {p4, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b(Lc/d/a/b/e/m/f$a;)V

    :goto_4
    return p2
.end method
