.class public final Lc/d/a/b/i/c/a;
.super Lc/d/a/b/e/p/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/g<",
        "Lc/d/a/b/i/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final F:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Lc/d/a/b/a/a/c;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)V
    .locals 7

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/d/a/b/e/p/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V

    if-nez p4, :cond_0

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/c/a;->F:Landroid/os/Bundle;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.service.START"

    return-object v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final u()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/p/g;->C:Lc/d/a/b/e/p/d;

    .line 2
    iget-object v1, v0, Lc/d/a/b/e/p/d;->a:Landroid/accounts/Account;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lc/d/a/b/a/a/b;->c:Lc/d/a/b/e/m/a;

    .line 4
    iget-object v3, v0, Lc/d/a/b/e/p/d;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/p/d$b;

    if-nez v1, :cond_1

    iget-object v0, v0, Lc/d/a/b/e/p/d;->b:Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_1
    throw v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic w(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.internal.IAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/i/c/b;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/b/i/c/b;

    return-object v0

    :cond_1
    new-instance v0, Lc/d/a/b/i/c/c;

    invoke-direct {v0, p1}, Lc/d/a/b/i/c/c;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final z()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/c/a;->F:Landroid/os/Bundle;

    return-object v0
.end method
