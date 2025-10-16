.class public final Lc/d/a/b/i/a/h;
.super Lc/d/a/b/e/p/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/g<",
        "Lc/d/a/b/i/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V
    .locals 7

    const/16 v3, 0x7e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc/d/a/b/e/p/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START"

    return-object v0
.end method

.method public final G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final bridge synthetic w(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/i/a/f;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lc/d/a/b/i/a/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/d/a/b/i/a/f;

    invoke-direct {v0, p1}, Lc/d/a/b/i/a/f;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public final y()[Lc/d/a/b/e/c;
    .locals 1

    sget-object v0, Lc/d/a/b/i/a/c;->e:[Lc/d/a/b/e/c;

    return-object v0
.end method
