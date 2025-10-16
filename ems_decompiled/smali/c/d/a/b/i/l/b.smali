.class public final Lc/d/a/b/i/l/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/l/a;
.implements Landroid/os/IInterface;


# instance fields
.field public final c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/l/b;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/l/b;->c:Landroid/os/IBinder;

    return-object v0
.end method
