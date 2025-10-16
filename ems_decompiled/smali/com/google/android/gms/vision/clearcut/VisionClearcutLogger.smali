.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final zza:Lc/d/a/b/c/a;

.field private zzb:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    new-instance v0, Lc/d/a/b/c/a;

    const-string v1, "VISION"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lc/d/a/b/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lc/d/a/b/c/a;

    return-void
.end method


# virtual methods
.method public final zza(ILc/d/a/b/i/n/v;)V
    .locals 5

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p2}, Lc/d/a/b/i/n/t1;->g()I

    move-result v0

    new-array v1, v0, [B

    .line 2
    sget-object v2, Lc/d/a/b/i/n/a1;->b:Ljava/util/logging/Logger;

    new-instance v2, Lc/d/a/b/i/n/a1$a;

    invoke-direct {v2, v1, v0}, Lc/d/a/b/i/n/a1$a;-><init>([BI)V

    .line 3
    invoke-virtual {p2, v2}, Lc/d/a/b/i/n/t1;->d(Lc/d/a/b/i/n/a1;)V

    .line 4
    invoke-virtual {v2}, Lc/d/a/b/i/n/a1$a;->a()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_5

    const/4 v3, 0x3

    if-le p1, v3, :cond_0

    goto :goto_4

    .line 5
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzb:Z

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zza:Lc/d/a/b/c/a;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/d/a/b/c/a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v3}, Lc/d/a/b/c/a$a;-><init>(Lc/d/a/b/c/a;[BLc/d/a/b/c/b;)V

    .line 7
    iget-object p2, v0, Lc/d/a/b/c/a$a;->e:Lc/d/a/b/i/e/u4;

    iput p1, p2, Lc/d/a/b/i/e/u4;->g:I

    .line 8
    invoke-virtual {v0}, Lc/d/a/b/c/a$a;->a()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-static {}, Lc/d/a/b/i/n/v;->p()Lc/d/a/b/i/n/v$a;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :try_start_2
    const-class v3, Lc/d/a/b/i/n/f1;

    sget-object v4, Lc/d/a/b/i/n/f1;->c:Lc/d/a/b/i/n/f1;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v4, Lc/d/a/b/i/n/f1;->c:Lc/d/a/b/i/n/f1;

    if-eqz v4, :cond_3

    :goto_0
    monitor-exit v3

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lc/d/a/b/i/n/q1;->b(Ljava/lang/Class;)Lc/d/a/b/i/n/f1;

    move-result-object v4

    sput-object v4, Lc/d/a/b/i/n/f1;->c:Lc/d/a/b/i/n/f1;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 10
    :goto_1
    :try_start_4
    invoke-virtual {p1, v1, v2, v0, v4}, Lc/d/a/b/i/n/t1$b;->i([BIILc/d/a/b/i/n/f1;)Lc/d/a/b/i/n/j0;

    const-string v0, "Would have logged:\n%s"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Vision"

    const/4 v1, 0x6

    .line 11
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    return-void

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 12
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :goto_2
    :try_start_7
    const-string p2, "Parsing error"

    new-array v0, v2, [Ljava/lang/Object;

    .line 13
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->J(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    .line 14
    :goto_3
    sget-object p2, Lc/d/a/b/i/n/d;->a:Lc/d/a/b/i/n/c;

    invoke-virtual {p2, p1}, Lc/d/a/b/i/n/c;->a(Ljava/lang/Throwable;)V

    const-string p2, "Failed to log"

    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->J(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_5
    :goto_4
    const-string v0, "Illegal event code: %d"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const-string p1, "Vision"

    const/4 v1, 0x4

    .line 16
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 17
    :cond_7
    :try_start_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Did not write as much data as expected."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception p1

    .line 18
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "byte array"

    const-class v1, Lc/d/a/b/i/n/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    add-int/lit8 v2, v2, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serializing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " threw an IOException (should never happen)."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method
