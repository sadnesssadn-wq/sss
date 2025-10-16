.class public final Lc/d/a/b/i/b/e;
.super Lc/d/a/b/e/p/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/g<",
        "Lc/d/a/b/i/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final F:Lc/d/a/b/a/a/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Lc/d/a/b/a/a/a$a;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)V
    .locals 7

    const/16 v3, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/d/a/b/e/p/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V

    .line 2
    new-instance p1, Lc/d/a/b/a/a/a$a$a;

    if-nez p4, :cond_0

    sget-object p4, Lc/d/a/b/a/a/a$a;->f:Lc/d/a/b/a/a/a$a;

    :cond_0
    invoke-direct {p1, p4}, Lc/d/a/b/a/a/a$a$a;-><init>(Lc/d/a/b/a/a/a$a;)V

    const/16 p2, 0x10

    new-array p2, p2, [B

    .line 3
    sget-object p3, Lc/d/a/b/i/b/a;->a:Ljava/util/Random;

    invoke-virtual {p3, p2}, Ljava/util/Random;->nextBytes([B)V

    const/16 p3, 0xb

    invoke-static {p2, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 4
    iput-object p2, p1, Lc/d/a/b/a/a/a$a$a;->c:Ljava/lang/String;

    .line 5
    new-instance p2, Lc/d/a/b/a/a/a$a;

    invoke-direct {p2, p1}, Lc/d/a/b/a/a/a$a;-><init>(Lc/d/a/b/a/a/a$a$a;)V

    .line 6
    iput-object p2, p0, Lc/d/a/b/i/b/e;->F:Lc/d/a/b/a/a/a$a;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.credentials.service.START"

    return-object v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xc35000

    return v0
.end method

.method public final synthetic w(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.credentials.internal.ICredentialsService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/i/b/g;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/b/i/b/g;

    return-object v0

    :cond_1
    new-instance v0, Lc/d/a/b/i/b/f;

    invoke-direct {v0, p1}, Lc/d/a/b/i/b/f;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final z()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lc/d/a/b/i/b/e;->F:Lc/d/a/b/a/a/a$a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lc/d/a/b/a/a/a$a;->c:Ljava/lang/String;

    const-string v3, "consumer_package"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lc/d/a/b/a/a/a$a;->d:Z

    const-string v3, "force_save_dialog"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v0, Lc/d/a/b/a/a/a$a;->e:Ljava/lang/String;

    const-string v2, "log_session_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
