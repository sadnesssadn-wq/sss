.class public final Lc/d/a/b/e/p/s0;
.super Lc/d/a/b/f/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/f/f<",
        "Lc/d/a/b/e/p/h0;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lc/d/a/b/e/p/s0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/e/p/s0;

    invoke-direct {v0}, Lc/d/a/b/e/p/s0;-><init>()V

    sput-object v0, Lc/d/a/b/e/p/s0;->c:Lc/d/a/b/e/p/s0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lc/d/a/b/f/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;II)Landroid/view/View;
    .locals 4

    sget-object v0, Lc/d/a/b/e/p/s0;->c:Lc/d/a/b/e/p/s0;

    .line 1
    :try_start_0
    new-instance v1, Lc/d/a/b/e/p/q0;

    invoke-direct {v1, p1, p2}, Lc/d/a/b/e/p/q0;-><init>(II)V

    .line 2
    new-instance v2, Lc/d/a/b/f/d;

    invoke-direct {v2, p0}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, p0}, Lc/d/a/b/f/f;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/d/a/b/e/p/h0;

    invoke-interface {p0, v2, v1}, Lc/d/a/b/e/p/h0;->R(Lc/d/a/b/f/b;Lc/d/a/b/e/p/q0;)Lc/d/a/b/f/b;

    move-result-object p0

    invoke-static {p0}, Lc/d/a/b/f/d;->j0(Lc/d/a/b/f/b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lc/d/a/b/f/f$a;

    const/16 v1, 0x40

    const-string v2, "Could not get button with size "

    const-string v3, " and color "

    invoke-static {v1, v2, p1, v3, p2}, Lc/a/a/a/a;->J(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lc/d/a/b/f/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ISignInButtonCreator"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/d/a/b/e/p/h0;

    if-eqz v1, :cond_1

    check-cast v0, Lc/d/a/b/e/p/h0;

    return-object v0

    :cond_1
    new-instance v0, Lc/d/a/b/e/p/g0;

    invoke-direct {v0, p1}, Lc/d/a/b/e/p/g0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
