.class public Lc/d/a/b/i/j/y;
.super Lc/d/a/b/e/p/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/p/g<",
        "Lc/d/a/b/i/j/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final F:Ljava/lang/String;

.field public final G:Lc/d/a/b/i/j/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/j/z<",
            "Lc/d/a/b/i/j/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;Ljava/lang/String;Lc/d/a/b/e/p/d;)V
    .locals 7

    const/16 v3, 0x17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p6

    move-object v5, p3

    move-object v6, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lc/d/a/b/e/p/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/d/a/b/e/p/d;Lc/d/a/b/e/m/m/f;Lc/d/a/b/e/m/m/m;)V

    .line 2
    new-instance p1, Lc/d/a/b/i/j/z;

    invoke-direct {p1, p0}, Lc/d/a/b/i/j/z;-><init>(Lc/d/a/b/i/j/y;)V

    iput-object p1, p0, Lc/d/a/b/i/j/y;->G:Lc/d/a/b/i/j/z;

    iput-object p5, p0, Lc/d/a/b/i/j/y;->F:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method public l()I
    .locals 1

    const v0, 0xb5f608

    return v0
.end method

.method public synthetic w(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/i/j/i;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/b/i/j/i;

    return-object v0

    :cond_1
    new-instance v0, Lc/d/a/b/i/j/j;

    invoke-direct {v0, p1}, Lc/d/a/b/i/j/j;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public z()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lc/d/a/b/i/j/y;->F:Ljava/lang/String;

    const-string v2, "client_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
