.class public final Lc/d/a/b/i/n/k4;
.super Lc/d/a/b/i/n/f5;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/n/f5<",
        "Lc/d/a/b/i/n/p3;",
        ">;"
    }
.end annotation


# instance fields
.field public final i:Lc/d/a/b/i/n/r2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/b/i/n/r2;)V
    .locals 2

    const-string v0, "BarcodeNativeHandle"

    const-string v1, "barcode"

    invoke-direct {p0, p1, v0, v1}, Lc/d/a/b/i/n/f5;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lc/d/a/b/i/n/k4;->i:Lc/d/a/b/i/n/r2;

    invoke-virtual {p0}, Lc/d/a/b/i/n/f5;->c()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    const-string v0, "com.google.android.gms.vision.barcode.ChimeraNativeBarcodeDetectorCreator"

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator"

    .line 2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v2, v0, Lc/d/a/b/i/n/b5;

    if-eqz v2, :cond_1

    check-cast v0, Lc/d/a/b/i/n/b5;

    goto :goto_0

    :cond_1
    new-instance v0, Lc/d/a/b/i/n/d5;

    invoke-direct {v0, p1}, Lc/d/a/b/i/n/d5;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 3
    :cond_2
    new-instance p1, Lc/d/a/b/f/d;

    invoke-direct {p1, p2}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lc/d/a/b/i/n/k4;->i:Lc/d/a/b/i/n/r2;

    const-string v1, "null reference"

    .line 5
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0, p1, p2}, Lc/d/a/b/i/n/b5;->X(Lc/d/a/b/f/b;Lc/d/a/b/i/n/r2;)Lc/d/a/b/i/n/p3;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 7
    :goto_1
    new-instance p2, Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string v2, "Failed to instantiate module class: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p2, v0, p1, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lc/d/a/b/g/a;)V

    throw p2
.end method

.method public final d(Ljava/nio/ByteBuffer;Lc/d/a/b/i/n/e5;)[Lc/d/a/b/q/e/a;
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/i/n/f5;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lc/d/a/b/q/e/a;

    return-object p1

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lc/d/a/b/f/d;

    invoke-direct {v0, p1}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/i/n/f5;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/n/p3;

    const-string v2, "null reference"

    .line 3
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, v0, p2}, Lc/d/a/b/i/n/p3;->x(Lc/d/a/b/f/b;Lc/d/a/b/i/n/e5;)[Lc/d/a/b/q/e/a;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "BarcodeNativeHandle"

    const-string v0, "Error calling native barcode detector"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p1, v1, [Lc/d/a/b/q/e/a;

    return-object p1
.end method
