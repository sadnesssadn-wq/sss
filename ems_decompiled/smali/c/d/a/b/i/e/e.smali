.class public abstract Lc/d/a/b/i/e/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Object;

.field public static h:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static volatile i:Ljava/lang/Boolean;

.field public static volatile j:Ljava/lang/Boolean;


# instance fields
.field public final a:Lc/d/a/b/i/e/o;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile e:Lc/d/a/b/i/e/b;

.field public volatile f:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/e;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/e/o;Ljava/lang/String;Ljava/lang/Object;Lc/d/a/b/i/e/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-object p4, p0, Lc/d/a/b/i/e/e;->e:Lc/d/a/b/i/e/b;

    iput-object p4, p0, Lc/d/a/b/i/e/e;->f:Landroid/content/SharedPreferences;

    .line 2
    iget-object p4, p1, Lc/d/a/b/i/e/o;->a:Ljava/lang/String;

    if-nez p4, :cond_1

    .line 3
    iget-object v0, p1, Lc/d/a/b/i/e/o;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 5
    iget-object p4, p1, Lc/d/a/b/i/e/o;->b:Landroid/net/Uri;

    if-nez p4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass one of SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput-object p1, p0, Lc/d/a/b/i/e/e;->a:Lc/d/a/b/i/e/o;

    .line 7
    iget-object p4, p1, Lc/d/a/b/i/e/o;->c:Ljava/lang/String;

    .line 8
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p4, v0

    :goto_2
    iput-object p4, p0, Lc/d/a/b/i/e/e;->c:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lc/d/a/b/i/e/o;->d:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_3
    iput-object p1, p0, Lc/d/a/b/i/e/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/d/a/b/i/e/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lc/d/a/b/i/e/m;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/d/a/b/i/e/m<",
            "TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lc/d/a/b/i/e/m;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-interface {p0}, Lc/d/a/b/i/e/m;->a()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lc/d/a/b/i/e/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/b/i/e/h;

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/h;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/d/a/b/i/e/e;->c(Lc/d/a/b/i/e/m;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h()Z
    .locals 6

    sget-object v0, Lc/d/a/b/i/e/e;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {v0, v5, v3, v4, v2}, La/a/a/a/a;->j(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 2
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/e/e;->i:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    sget-object v0, Lc/d/a/b/i/e/e;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/d/a/b/i/e/e;->a:Lc/d/a/b/i/e/o;

    .line 1
    iget-boolean v0, v0, Lc/d/a/b/i/e/o;->f:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/i/e/e;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/i/e/e;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/i/e/e;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lc/d/a/b/i/e/e;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lc/d/a/b/i/e/e;->d:Ljava/lang/Object;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call PhenotypeFlag.init() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract b(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final f()Ljava/lang/Object;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    invoke-static {v0}, Lc/d/a/b/i/e/e;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget-object v0, p0, Lc/d/a/b/i/e/e;->a:Lc/d/a/b/i/e/o;

    .line 1
    iget-object v2, v0, Lc/d/a/b/i/e/o;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 2
    iget-object v0, p0, Lc/d/a/b/i/e/e;->e:Lc/d/a/b/i/e/b;

    if-nez v0, :cond_2

    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lc/d/a/b/i/e/e;->a:Lc/d/a/b/i/e/o;

    .line 3
    iget-object v2, v2, Lc/d/a/b/i/e/o;->b:Landroid/net/Uri;

    .line 4
    sget-object v4, Lc/d/a/b/i/e/b;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/i/e/b;

    if-nez v5, :cond_1

    new-instance v5, Lc/d/a/b/i/e/b;

    invoke-direct {v5, v0, v2}, Lc/d/a/b/i/e/b;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v4, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/b;

    if-nez v0, :cond_0

    iget-object v0, v5, Lc/d/a/b/i/e/b;->a:Landroid/content/ContentResolver;

    iget-object v2, v5, Lc/d/a/b/i/e/b;->b:Landroid/net/Uri;

    iget-object v4, v5, Lc/d/a/b/i/e/b;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 5
    :cond_1
    :goto_0
    iput-object v5, p0, Lc/d/a/b/i/e/e;->e:Lc/d/a/b/i/e/b;

    :cond_2
    iget-object v0, p0, Lc/d/a/b/i/e/e;->e:Lc/d/a/b/i/e/b;

    new-instance v2, Lc/d/a/b/i/e/f;

    invoke-direct {v2, p0, v0}, Lc/d/a/b/i/e/f;-><init>(Lc/d/a/b/i/e/e;Lc/d/a/b/i/e/b;)V

    invoke-static {v2}, Lc/d/a/b/i/e/e;->c(Lc/d/a/b/i/e/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lc/d/a/b/i/e/e;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    iget-object v0, v0, Lc/d/a/b/i/e/o;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_6

    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lc/d/a/b/i/e/e;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    sget-object v0, Lc/d/a/b/i/e/e;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/e/e;->j:Ljava/lang/Boolean;

    :cond_5
    sget-object v0, Lc/d/a/b/i/e/e;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_7

    return-object v1

    :cond_7
    iget-object v0, p0, Lc/d/a/b/i/e/e;->f:Landroid/content/SharedPreferences;

    if-nez v0, :cond_8

    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    iget-object v2, p0, Lc/d/a/b/i/e/e;->a:Lc/d/a/b/i/e/o;

    .line 8
    iget-object v2, v2, Lc/d/a/b/i/e/o;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/i/e/e;->f:Landroid/content/SharedPreferences;

    :cond_8
    iget-object v0, p0, Lc/d/a/b/i/e/e;->f:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lc/d/a/b/i/e/e;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0, v0}, Lc/d/a/b/i/e/e;->b(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, "Bypass reading Phenotype values for flag: "

    iget-object v2, p0, Lc/d/a/b/i/e/e;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    const-string v2, "PhenotypeFlag"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v1
.end method

.method public final g()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/e;->a:Lc/d/a/b/i/e/o;

    .line 1
    iget-boolean v0, v0, Lc/d/a/b/i/e/o;->e:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/i/e/e;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/b/i/e/g;

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/g;-><init>(Lc/d/a/b/i/e/e;)V

    invoke-static {v0}, Lc/d/a/b/i/e/e;->c(Lc/d/a/b/i/e/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lc/d/a/b/i/e/e;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
