.class public Lc/a/b/q/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/g;


# instance fields
.field public final a:Lc/a/b/q/a;

.field public final b:Lc/a/b/q/c;


# direct methods
.method public constructor <init>(Lc/a/b/q/a;)V
    .locals 2

    new-instance v0, Lc/a/b/q/c;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lc/a/b/q/c;-><init>(I)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/b/q/b;->a:Lc/a/b/q/a;

    iput-object v0, p0, Lc/a/b/q/b;->b:Lc/a/b/q/c;

    return-void
.end method


# virtual methods
.method public a(Lc/a/b/j;)Lc/a/b/i;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/j<",
            "*>;)",
            "Lc/a/b/i;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->getCacheEntry()Lc/a/b/a$a;

    move-result-object v0

    invoke-static {v0}, Lb/u/a;->w(Lc/a/b/a$a;)Ljava/util/Map;

    move-result-object v0

    iget-object v7, v1, Lc/a/b/q/b;->a:Lc/a/b/q/a;

    invoke-virtual {v7, v2, v0}, Lc/a/b/q/a;->a(Lc/a/b/j;Ljava/util/Map;)Lc/a/b/q/e;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1
    :try_start_1
    iget v9, v7, Lc/a/b/q/e;->a:I

    .line 2
    invoke-virtual {v7}, Lc/a/b/q/e;->a()Ljava/util/List;

    move-result-object v14

    const/16 v0, 0x130

    if-ne v9, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v2, v8, v9, v14}, Lc/a/b/q/j;->a(Lc/a/b/j;JLjava/util/List;)Lc/a/b/i;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, v7, Lc/a/b/q/e;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    iget v8, v7, Lc/a/b/q/e;->c:I

    .line 5
    iget-object v10, v1, Lc/a/b/q/b;->b:Lc/a/b/q/c;

    invoke-static {v0, v8, v10}, Lc/a/b/q/j;->b(Ljava/io/InputStream;ILc/a/b/q/c;)[B

    move-result-object v0

    goto :goto_2

    :cond_2
    new-array v0, v6, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v15, v0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-static {v10, v11, v2, v15, v9}, Lc/a/b/q/j;->c(JLc/a/b/j;[BI)V

    const/16 v0, 0xc8

    if-lt v9, v0, :cond_3

    const/16 v0, 0x12b

    if-gt v9, v0, :cond_3

    new-instance v0, Lc/a/b/i;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v3

    move-object v8, v0

    move-object v10, v15

    invoke-direct/range {v8 .. v14}, Lc/a/b/i;-><init>(I[BZJLjava/util/List;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object v10, v15

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v5

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v7, v5

    move-object v10, v7

    .line 6
    :goto_3
    instance-of v8, v0, Ljava/net/SocketTimeoutException;

    const/4 v15, 0x2

    const/16 v16, 0x1

    if-eqz v8, :cond_4

    new-instance v0, Lc/a/b/q/j$b;

    new-instance v7, Lcom/android/volley/TimeoutError;

    invoke-direct {v7}, Lcom/android/volley/TimeoutError;-><init>()V

    const-string v8, "socket"

    invoke-direct {v0, v8, v7, v5}, Lc/a/b/q/j$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lc/a/b/q/j$a;)V

    :goto_4
    move-object v5, v0

    goto/16 :goto_7

    :cond_4
    instance-of v8, v0, Ljava/net/MalformedURLException;

    if-nez v8, :cond_f

    if-eqz v7, :cond_b

    .line 7
    iget v0, v7, Lc/a/b/q/e;->a:I

    new-array v8, v15, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->getUrl()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v16

    const-string v9, "Unexpected response code %d for %s"

    invoke-static {v9, v8}, Lc/a/b/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_a

    invoke-virtual {v7}, Lc/a/b/q/e;->a()Ljava/util/List;

    move-result-object v14

    new-instance v7, Lc/a/b/i;

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v8, v3

    move-object v8, v7

    move v9, v0

    invoke-direct/range {v8 .. v14}, Lc/a/b/i;-><init>(I[BZJLjava/util/List;)V

    const/16 v8, 0x191

    if-eq v0, v8, :cond_9

    const/16 v8, 0x193

    if-ne v0, v8, :cond_5

    goto :goto_6

    :cond_5
    const/16 v8, 0x190

    if-lt v0, v8, :cond_7

    const/16 v8, 0x1f3

    if-le v0, v8, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/android/volley/ClientError;

    invoke-direct {v0, v7}, Lcom/android/volley/ClientError;-><init>(Lc/a/b/i;)V

    throw v0

    :cond_7
    :goto_5
    const/16 v8, 0x1f4

    if-lt v0, v8, :cond_8

    const/16 v8, 0x257

    if-gt v0, v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->shouldRetryServerErrors()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lc/a/b/q/j$b;

    new-instance v8, Lcom/android/volley/ServerError;

    invoke-direct {v8, v7}, Lcom/android/volley/ServerError;-><init>(Lc/a/b/i;)V

    const-string v7, "server"

    invoke-direct {v0, v7, v8, v5}, Lc/a/b/q/j$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lc/a/b/q/j$a;)V

    goto :goto_4

    :cond_8
    new-instance v0, Lcom/android/volley/ServerError;

    invoke-direct {v0, v7}, Lcom/android/volley/ServerError;-><init>(Lc/a/b/i;)V

    throw v0

    :cond_9
    :goto_6
    new-instance v0, Lc/a/b/q/j$b;

    new-instance v8, Lcom/android/volley/AuthFailureError;

    invoke-direct {v8, v7}, Lcom/android/volley/AuthFailureError;-><init>(Lc/a/b/i;)V

    const-string v7, "auth"

    invoke-direct {v0, v7, v8, v5}, Lc/a/b/q/j$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lc/a/b/q/j$a;)V

    goto :goto_4

    :cond_a
    new-instance v0, Lc/a/b/q/j$b;

    new-instance v7, Lcom/android/volley/NetworkError;

    invoke-direct {v7}, Lcom/android/volley/NetworkError;-><init>()V

    const-string v8, "network"

    invoke-direct {v0, v8, v7, v5}, Lc/a/b/q/j$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lc/a/b/q/j$a;)V

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->shouldRetryConnectionErrors()Z

    move-result v7

    if-eqz v7, :cond_e

    new-instance v0, Lc/a/b/q/j$b;

    new-instance v7, Lcom/android/volley/NoConnectionError;

    invoke-direct {v7}, Lcom/android/volley/NoConnectionError;-><init>()V

    const-string v8, "connection"

    invoke-direct {v0, v8, v7, v5}, Lc/a/b/q/j$b;-><init>(Ljava/lang/String;Lcom/android/volley/VolleyError;Lc/a/b/q/j$a;)V

    goto/16 :goto_4

    .line 9
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->getRetryPolicy()Lc/a/b/n;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->getTimeoutMs()I

    move-result v7

    .line 10
    :try_start_3
    iget-object v8, v5, Lc/a/b/q/j$b;->b:Lcom/android/volley/VolleyError;

    .line 11
    check-cast v0, Lc/a/b/d;

    .line 12
    iget v9, v0, Lc/a/b/d;->b:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lc/a/b/d;->b:I

    iget v10, v0, Lc/a/b/d;->a:I

    int-to-float v11, v10

    iget v12, v0, Lc/a/b/d;->d:F

    mul-float v11, v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    iput v10, v0, Lc/a/b/d;->a:I

    .line 13
    iget v0, v0, Lc/a/b/d;->c:I
    :try_end_3
    .catch Lcom/android/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_3

    if-gt v9, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_d

    new-array v0, v15, [Ljava/lang/Object;

    .line 14
    iget-object v5, v5, Lc/a/b/q/j$b;->a:Ljava/lang/String;

    aput-object v5, v0, v6

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v16

    const-string v5, "%s-retry [timeout=%s]"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :cond_d
    :try_start_4
    throw v8
    :try_end_4
    .catch Lcom/android/volley/VolleyError; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    new-array v3, v15, [Ljava/lang/Object;

    .line 17
    iget-object v4, v5, Lc/a/b/q/j$b;->a:Ljava/lang/String;

    aput-object v4, v3, v6

    .line 18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    const-string v4, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_e
    new-instance v2, Lcom/android/volley/NoConnectionError;

    invoke-direct {v2, v0}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Bad URL "

    invoke-static {v4}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lc/a/b/j;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_9
    throw v3

    :goto_a
    goto :goto_9
.end method
