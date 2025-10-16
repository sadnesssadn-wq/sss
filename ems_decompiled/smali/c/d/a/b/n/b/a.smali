.class public Lc/d/a/b/n/b/a;
.super Lc/d/a/b/e/p/g;
.source ""

# interfaces
.implements Lc/d/a/b/n/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/g<",
        "Lc/d/a/b/n/b/h;",
        ">;",
        "Lc/d/a/b/n/g;"
    }
.end annotation


# instance fields
.field public final F:Z

.field public final G:Lc/d/a/b/e/p/d;

.field public final H:Landroid/os/Bundle;

.field public final I:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLc/d/a/b/e/p/d;Landroid/os/Bundle;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lc/d/a/b/e/p/d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lc/d/a/b/e/m/e$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p7    # Lc/d/a/b/e/m/e$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/d/a/b/e/p/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V

    .line 2
    iput-boolean p3, p0, Lc/d/a/b/n/b/a;->F:Z

    iput-object p4, p0, Lc/d/a/b/n/b/a;->G:Lc/d/a/b/e/p/d;

    iput-object p5, p0, Lc/d/a/b/n/b/a;->H:Landroid/os/Bundle;

    .line 3
    iget-object p1, p4, Lc/d/a/b/e/p/d;->h:Ljava/lang/Integer;

    .line 4
    iput-object p1, p0, Lc/d/a/b/n/b/a;->I:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/n/b/h;

    iget-object v1, p0, Lc/d/a/b/n/b/a;->I:Ljava/lang/Integer;

    const-string v2, "null reference"

    .line 1
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lc/d/a/b/n/b/h;->j(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "SignInClientImpl"

    const-string v1, "Remote service probably died when clearAccountFromSessionStore is called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d(Lc/d/a/b/e/p/j;Z)V
    .locals 3
    .param p1    # Lc/d/a/b/e/p/j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-virtual {p0}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/n/b/h;

    iget-object v1, p0, Lc/d/a/b/n/b/a;->I:Ljava/lang/Integer;

    const-string v2, "null reference"

    .line 1
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lc/d/a/b/n/b/h;->b0(Lc/d/a/b/e/p/j;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "SignInClientImpl"

    const-string p2, "Remote service probably died when saveDefaultAccount is called"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k()V
    .locals 1

    new-instance v0, Lc/d/a/b/e/p/b$d;

    invoke-direct {v0, p0}, Lc/d/a/b/e/p/b$d;-><init>(Lc/d/a/b/e/p/b;)V

    invoke-virtual {p0, v0}, Lc/d/a/b/e/p/b;->r(Lc/d/a/b/e/p/b$c;)V

    return-void
.end method

.method public l()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final q(Lc/d/a/b/n/b/f;)V
    .locals 5

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/n/b/a;->G:Lc/d/a/b/e/p/d;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/p/d;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "<<default account>>"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .line 2
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/d/a/b/e/p/b;->h:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lc/d/a/b/a/a/e/b/b;->a(Landroid/content/Context;)Lc/d/a/b/a/a/e/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/b/a/a/e/b/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    :cond_1
    new-instance v1, Lc/d/a/b/e/p/n0;

    iget-object v3, p0, Lc/d/a/b/n/b/a;->I:Ljava/lang/Integer;

    const-string v4, "null reference"

    .line 5
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lc/d/a/b/e/p/n0;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/n/b/h;

    new-instance v2, Lc/d/a/b/n/b/k;

    invoke-direct {v2, v1}, Lc/d/a/b/n/b/k;-><init>(Lc/d/a/b/e/p/n0;)V

    invoke-interface {v0, v2, p1}, Lc/d/a/b/n/b/h;->U(Lc/d/a/b/n/b/k;Lc/d/a/b/n/b/f;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v2, Lc/d/a/b/n/b/l;

    invoke-direct {v2}, Lc/d/a/b/n/b/l;-><init>()V

    invoke-interface {p1, v2}, Lc/d/a/b/n/b/f;->w(Lc/d/a/b/n/b/l;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lc/d/a/b/n/b/a;->F:Z

    return v0
.end method

.method public synthetic w(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/n/b/h;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/b/n/b/h;

    return-object v0

    :cond_1
    new-instance v0, Lc/d/a/b/n/b/g;

    invoke-direct {v0, p1}, Lc/d/a/b/n/b/g;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public z()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lc/d/a/b/n/b/a;->G:Lc/d/a/b/e/p/d;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/p/d;->e:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/p/b;->h:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/n/b/a;->H:Landroid/os/Bundle;

    iget-object v1, p0, Lc/d/a/b/n/b/a;->G:Lc/d/a/b/e/p/d;

    .line 4
    iget-object v1, v1, Lc/d/a/b/e/p/d;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc/d/a/b/n/b/a;->H:Landroid/os/Bundle;

    return-object v0
.end method
