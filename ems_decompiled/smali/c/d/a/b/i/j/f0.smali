.class public final Lc/d/a/b/i/j/f0;
.super Lc/d/a/b/i/j/b;
.source ""


# instance fields
.field public final synthetic p:Lcom/google/android/gms/location/LocationRequest;

.field public final synthetic q:Lc/d/a/b/j/c;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/e;Lcom/google/android/gms/location/LocationRequest;Lc/d/a/b/j/c;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/b/i/j/f0;->p:Lcom/google/android/gms/location/LocationRequest;

    iput-object p3, p0, Lc/d/a/b/i/j/f0;->q:Lc/d/a/b/j/c;

    invoke-direct {p0, p1}, Lc/d/a/b/i/j/b;-><init>(Lc/d/a/b/e/m/e;)V

    return-void
.end method


# virtual methods
.method public final l(Lc/d/a/b/e/m/a$b;)V
    .locals 6

    check-cast p1, Lc/d/a/b/i/j/r;

    new-instance v0, Lc/d/a/b/i/j/c;

    invoke-direct {v0, p0}, Lc/d/a/b/i/j/c;-><init>(Lc/d/a/b/e/m/m/e;)V

    iget-object v1, p0, Lc/d/a/b/i/j/f0;->p:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p0, Lc/d/a/b/i/j/f0;->q:Lc/d/a/b/j/c;

    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V1()Landroid/os/Looper;

    move-result-object v3

    const-class v4, Lc/d/a/b/j/c;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Listener must not be null"

    .line 1
    invoke-static {v2, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Looper must not be null"

    invoke-static {v3, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Listener type must not be null"

    invoke-static {v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lc/d/a/b/e/m/m/j;

    invoke-direct {v5, v3, v2, v4}, Lc/d/a/b/e/m/m/j;-><init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p1, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    monitor-enter v2

    :try_start_0
    iget-object p1, p1, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    invoke-virtual {p1, v1, v5, v0}, Lc/d/a/b/i/j/k;->c(Lcom/google/android/gms/location/LocationRequest;Lc/d/a/b/e/m/m/j;Lc/d/a/b/i/j/f;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
