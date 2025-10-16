.class public final Lc/d/a/b/i/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final c:Landroid/os/IBinder;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/a/f;->c:Landroid/os/IBinder;

    const-string p1, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    iput-object p1, p0, Lc/d/a/b/i/a/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/a/f;->c:Landroid/os/IBinder;

    return-object v0
.end method
