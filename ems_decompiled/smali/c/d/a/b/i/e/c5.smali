.class public final Lc/d/a/b/i/e/c5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/c/a$b;


# static fields
.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Lc/d/a/b/i/e/o;

.field public static final d:Lc/d/a/b/i/e/o;

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lc/d/a/b/i/e/e<",
            "Lc/d/a/b/i/e/p4;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/d/a/b/i/e/e<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static g:Ljava/lang/Boolean;

.field public static h:Ljava/lang/Long;

.field public static final i:Lc/d/a/b/i/e/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/e/c5;->b:Ljava/nio/charset/Charset;

    const-string v0, "com.google.android.gms.clearcut.public"

    invoke-static {v0}, Lc/d/a/b/l/b;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1
    new-instance v8, Lc/d/a/b/i/e/o;

    const/4 v2, 0x0

    const-string v4, "gms:playlog:service:samplingrules_"

    const-string v5, "LogSamplingRules__"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lc/d/a/b/i/e/o;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 2
    sput-object v8, Lc/d/a/b/i/e/c5;->c:Lc/d/a/b/i/e/o;

    invoke-static {v0}, Lc/d/a/b/l/b;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 3
    new-instance v0, Lc/d/a/b/i/e/o;

    const/4 v10, 0x0

    const-string v12, "gms:playlog:service:sampling_"

    const-string v13, "LogSampling__"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lc/d/a/b/i/e/o;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 4
    sput-object v0, Lc/d/a/b/i/e/c5;->d:Lc/d/a/b/i/e/o;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/c5;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/c5;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lc/d/a/b/i/e/c5;->g:Ljava/lang/Boolean;

    sput-object v0, Lc/d/a/b/i/e/c5;->h:Ljava/lang/Long;

    .line 5
    sget-object v0, Lc/d/a/b/i/e/e;->g:Ljava/lang/Object;

    .line 6
    new-instance v0, Lc/d/a/b/i/e/j;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "enable_log_sampling_rules"

    invoke-direct {v0, v8, v2, v1}, Lc/d/a/b/i/e/j;-><init>(Lc/d/a/b/i/e/o;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7
    sput-object v0, Lc/d/a/b/i/e/c5;->i:Lc/d/a/b/i/e/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/c5;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    .line 1
    sget-object v0, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    if-nez v0, :cond_3

    sget-object v0, Lc/d/a/b/i/e/e;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    sget-object v1, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    if-eq v1, p1, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lc/d/a/b/i/e/e;->i:Ljava/lang/Boolean;

    :cond_2
    sput-object p1, Lc/d/a/b/i/e/e;->h:Landroid/content/Context;

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 2

    const/16 v0, 0x8

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/d/a/b/i/e/c5;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->s1([B)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->s1([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(JJJ)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    cmp-long v2, p4, v0

    if-lez v2, :cond_2

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    rem-long v2, v0, p4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    and-long/2addr p0, v0

    rem-long/2addr p0, p4

    add-long/2addr p0, v2

    :goto_0
    rem-long/2addr p0, p4

    cmp-long p4, p0, p2

    if-gez p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lc/d/a/b/i/e/c5;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Lc/d/a/b/e/u/b;->a(Landroid/content/Context;)Lc/d/a/b/e/u/a;

    move-result-object p0

    .line 1
    iget-object p0, p0, Lc/d/a/b/e/u/a;->a:Landroid/content/Context;

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lc/d/a/b/i/e/c5;->g:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lc/d/a/b/i/e/c5;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 7

    sget-object v0, Lc/d/a/b/i/e/c5;->h:Ljava/lang/Long;

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lc/d/a/b/i/e/c5;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "android_id"

    .line 1
    sget-object v3, Lc/d/a/b/i/e/g5;->a:Landroid/net/Uri;

    .line 2
    const-class v3, Lc/d/a/b/i/e/g5;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lc/d/a/b/i/e/g5;->c(Landroid/content/ContentResolver;)V

    sget-object v4, Lc/d/a/b/i/e/g5;->k:Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    sget-object v3, Lc/d/a/b/i/e/g5;->i:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lc/d/a/b/i/e/g5;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-static {p0, v2}, Lc/d/a/b/i/e/g5;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v5

    :catch_0
    :goto_0
    sget-object p0, Lc/d/a/b/i/e/g5;->i:Ljava/util/HashMap;

    invoke-static {v4, p0, v2, v3}, Lc/d/a/b/i/e/g5;->e(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 5
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lc/d/a/b/i/e/c5;->h:Ljava/lang/Long;

    goto :goto_2

    :cond_3
    return-wide v0

    :cond_4
    :goto_2
    sget-object p0, Lc/d/a/b/i/e/c5;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
