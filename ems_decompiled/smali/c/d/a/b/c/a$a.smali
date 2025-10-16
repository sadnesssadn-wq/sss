.class public Lc/d/a/b/c/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lc/d/a/b/i/e/l4;

.field public final e:Lc/d/a/b/i/e/u4;

.field public f:Z

.field public final synthetic g:Lc/d/a/b/c/a;


# direct methods
.method public constructor <init>(Lc/d/a/b/c/a;[BLc/d/a/b/c/b;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lc/d/a/b/c/a$a;->g:Lc/d/a/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p3, p1, Lc/d/a/b/c/a;->e:I

    .line 3
    iput p3, p0, Lc/d/a/b/c/a$a;->a:I

    .line 4
    iget-object p3, p1, Lc/d/a/b/c/a;->d:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lc/d/a/b/c/a$a;->b:Ljava/lang/String;

    .line 6
    iget-object p3, p1, Lc/d/a/b/c/a;->f:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lc/d/a/b/c/a$a;->c:Ljava/lang/String;

    .line 8
    iget-object p3, p1, Lc/d/a/b/c/a;->g:Lc/d/a/b/i/e/l4;

    .line 9
    iput-object p3, p0, Lc/d/a/b/c/a$a;->d:Lc/d/a/b/i/e/l4;

    new-instance p3, Lc/d/a/b/i/e/u4;

    invoke-direct {p3}, Lc/d/a/b/i/e/u4;-><init>()V

    iput-object p3, p0, Lc/d/a/b/c/a$a;->e:Lc/d/a/b/i/e/u4;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/c/a$a;->f:Z

    .line 10
    iget-object v1, p1, Lc/d/a/b/c/a;->f:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lc/d/a/b/c/a$a;->c:Ljava/lang/String;

    .line 12
    iget-object v1, p1, Lc/d/a/b/c/a;->a:Landroid/content/Context;

    .line 13
    sget-object v2, Lc/d/a/b/i/e/a;->a:Landroid/os/UserManager;

    .line 14
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 15
    sget-boolean v2, Lc/d/a/b/i/e/a;->b:Z

    if-nez v2, :cond_4

    sget-object v2, Lc/d/a/b/i/e/a;->a:Landroid/os/UserManager;

    if-nez v2, :cond_3

    const-class v4, Lc/d/a/b/i/e/a;

    monitor-enter v4

    :try_start_0
    sget-object v2, Lc/d/a/b/i/e/a;->a:Landroid/os/UserManager;

    if-nez v2, :cond_2

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    sput-object v1, Lc/d/a/b/i/e/a;->a:Landroid/os/UserManager;

    if-nez v1, :cond_1

    sput-boolean v3, Lc/d/a/b/i/e/a;->b:Z

    monitor-exit v4

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move-object v2, v1

    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    sput-boolean v2, Lc/d/a/b/i/e/a;->b:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    sput-object v1, Lc/d/a/b/i/e/a;->a:Landroid/os/UserManager;

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 16
    :cond_5
    iput-boolean v0, p3, Lc/d/a/b/i/e/u4;->v:Z

    .line 17
    iget-object v0, p1, Lc/d/a/b/c/a;->i:Lc/d/a/b/e/t/a;

    .line 18
    check-cast v0, Lc/d/a/b/e/t/b;

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    iput-wide v0, p3, Lc/d/a/b/i/e/u4;->e:J

    .line 21
    iget-object p1, p1, Lc/d/a/b/c/a;->i:Lc/d/a/b/e/t/a;

    .line 22
    check-cast p1, Lc/d/a/b/e/t/b;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 24
    iput-wide v0, p3, Lc/d/a/b/i/e/u4;->f:J

    iget-wide v0, p3, Lc/d/a/b/i/e/u4;->e:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    iput-wide v0, p3, Lc/d/a/b/i/e/u4;->p:J

    if-eqz p2, :cond_6

    iput-object p2, p3, Lc/d/a/b/i/e/u4;->k:[B

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 20

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lc/d/a/b/c/a$a;->f:Z

    if-nez v0, :cond_1b

    const/4 v2, 0x1

    iput-boolean v2, v1, Lc/d/a/b/c/a$a;->f:Z

    new-instance v10, Lc/d/a/b/c/f;

    new-instance v4, Lc/d/a/b/i/e/e5;

    iget-object v0, v1, Lc/d/a/b/c/a$a;->g:Lc/d/a/b/c/a;

    .line 1
    iget-object v12, v0, Lc/d/a/b/c/a;->b:Ljava/lang/String;

    .line 2
    iget v13, v0, Lc/d/a/b/c/a;->c:I

    .line 3
    iget v14, v1, Lc/d/a/b/c/a$a;->a:I

    iget-object v15, v1, Lc/d/a/b/c/a$a;->b:Ljava/lang/String;

    iget-object v0, v1, Lc/d/a/b/c/a$a;->c:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v3, v1, Lc/d/a/b/c/a$a;->d:Lc/d/a/b/i/e/l4;

    move-object v11, v4

    move-object/from16 v16, v0

    move-object/from16 v19, v3

    invoke-direct/range {v11 .. v19}, Lc/d/a/b/i/e/e5;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/d/a/b/i/e/l4;)V

    iget-object v5, v1, Lc/d/a/b/c/a$a;->e:Lc/d/a/b/i/e/u4;

    const/4 v6, 0x0

    sget-object v0, Lc/d/a/b/c/a;->l:Lc/d/a/b/e/m/a$g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lc/d/a/b/c/f;-><init>(Lc/d/a/b/i/e/e5;Lc/d/a/b/i/e/u4;Lc/d/a/b/c/a$c;[I[IZ)V

    iget-object v0, v1, Lc/d/a/b/c/a$a;->g:Lc/d/a/b/c/a;

    .line 4
    iget-object v0, v0, Lc/d/a/b/c/a;->k:Lc/d/a/b/c/a$b;

    .line 5
    move-object v3, v0

    check-cast v3, Lc/d/a/b/i/e/c5;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    iget-object v4, v0, Lc/d/a/b/i/e/e5;->i:Ljava/lang/String;

    iget v0, v0, Lc/d/a/b/i/e/e5;->e:I

    iget-object v5, v10, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget v5, v5, Lc/d/a/b/i/e/u4;->g:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    sget-object v7, Lc/d/a/b/i/e/c5;->i:Lc/d/a/b/i/e/e;

    invoke-virtual {v7}, Lc/d/a/b/i/e/e;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v7, :cond_11

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v9

    :goto_1
    if-eqz v4, :cond_19

    iget-object v0, v3, Lc/d/a/b/i/e/c5;->a:Landroid/content/Context;

    if-eqz v0, :cond_5

    invoke-static {v0}, Lc/d/a/b/i/e/c5;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lc/d/a/b/i/e/c5;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/i/e/e;

    if-nez v5, :cond_4

    sget-object v5, Lc/d/a/b/i/e/c5;->d:Lc/d/a/b/i/e/o;

    .line 7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v7, Lc/d/a/b/i/e/e;->g:Ljava/lang/Object;

    .line 9
    new-instance v7, Lc/d/a/b/i/e/k;

    invoke-direct {v7, v5, v4, v9}, Lc/d/a/b/i/e/k;-><init>(Lc/d/a/b/i/e/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v7

    :cond_4
    invoke-virtual {v5}, Lc/d/a/b/i/e/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v9

    :goto_3
    if-nez v4, :cond_6

    goto/16 :goto_a

    :cond_6
    const/16 v0, 0x2c

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v2

    goto :goto_4

    :cond_7
    const-string v5, ""

    const/4 v0, 0x0

    :goto_4
    const/16 v7, 0x2f

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const-string v11, "LogSamplerImpl"

    if-gtz v7, :cond_9

    const-string v0, "Failed to parse the rule: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_8

    :cond_9
    :try_start_0
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    add-int/2addr v7, v2

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v16, 0x0

    cmp-long v0, v12, v16

    if-ltz v0, :cond_f

    cmp-long v0, v14, v16

    if-gez v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {}, Lc/d/a/b/i/e/p4$b;->w()Lc/d/a/b/i/e/p4$b$a;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lc/d/a/b/i/e/y0$a;->j()V

    iget-object v4, v0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    check-cast v4, Lc/d/a/b/i/e/p4$b;

    invoke-static {v4, v5}, Lc/d/a/b/i/e/p4$b;->q(Lc/d/a/b/i/e/p4$b;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lc/d/a/b/i/e/y0$a;->j()V

    iget-object v4, v0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    check-cast v4, Lc/d/a/b/i/e/p4$b;

    invoke-static {v4, v12, v13}, Lc/d/a/b/i/e/p4$b;->p(Lc/d/a/b/i/e/p4$b;J)V

    .line 14
    invoke-virtual {v0}, Lc/d/a/b/i/e/y0$a;->j()V

    iget-object v4, v0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    check-cast v4, Lc/d/a/b/i/e/p4$b;

    invoke-static {v4, v14, v15}, Lc/d/a/b/i/e/p4$b;->r(Lc/d/a/b/i/e/p4$b;J)V

    .line 15
    invoke-virtual {v0}, Lc/d/a/b/i/e/y0$a;->k()Lc/d/a/b/i/e/d2;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/y0;

    invoke-virtual {v0, v2, v9, v9}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-ne v4, v2, :cond_b

    const/4 v6, 0x1

    goto :goto_6

    :cond_b
    if-nez v4, :cond_c

    goto :goto_6

    .line 16
    :cond_c
    sget-object v4, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    .line 17
    invoke-virtual {v4, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object v4

    invoke-interface {v4, v0}, Lc/d/a/b/i/e/t2;->g(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v4, v0

    goto :goto_5

    :cond_d
    move-object v4, v9

    :goto_5
    invoke-virtual {v0, v8, v4, v9}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    if-eqz v6, :cond_e

    .line 18
    check-cast v0, Lc/d/a/b/i/e/p4$b;

    goto :goto_b

    .line 19
    :cond_e
    new-instance v0, Lc/d/a/b/i/e/f3;

    invoke-direct {v0}, Lc/d/a/b/i/e/f3;-><init>()V

    throw v0

    :cond_f
    :goto_7
    const/16 v0, 0x48

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "negative values not supported: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_0
    move-exception v0

    const-string v5, "parseLong() failed while parsing: "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_10
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-static {v11, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    move-object v0, v9

    :goto_b
    if-eqz v0, :cond_19

    .line 21
    invoke-virtual {v0}, Lc/d/a/b/i/e/p4$b;->t()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lc/d/a/b/i/e/c5;->a:Landroid/content/Context;

    invoke-static {v3}, Lc/d/a/b/i/e/c5;->d(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lc/d/a/b/i/e/c5;->a(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v0}, Lc/d/a/b/i/e/p4$b;->u()J

    move-result-wide v13

    invoke-virtual {v0}, Lc/d/a/b/i/e/p4$b;->v()J

    move-result-wide v15

    invoke-static/range {v11 .. v16}, Lc/d/a/b/i/e/c5;->b(JJJ)Z

    move-result v2

    goto/16 :goto_f

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_c

    :cond_12
    if-ltz v0, :cond_13

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_13
    move-object v4, v9

    :goto_c
    if-eqz v4, :cond_19

    iget-object v0, v3, Lc/d/a/b/i/e/c5;->a:Landroid/content/Context;

    if-nez v0, :cond_14

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_e

    :cond_14
    sget-object v0, Lc/d/a/b/i/e/c5;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/d/a/b/i/e/e;

    if-nez v7, :cond_16

    sget-object v7, Lc/d/a/b/i/e/c5;->c:Lc/d/a/b/i/e/o;

    invoke-static {}, Lc/d/a/b/i/e/p4;->p()Lc/d/a/b/i/e/p4;

    move-result-object v11

    sget-object v12, Lc/d/a/b/i/e/d5;->a:Lc/d/a/b/i/e/n;

    .line 22
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v13, Lc/d/a/b/i/e/e;->g:Ljava/lang/Object;

    .line 24
    new-instance v13, Lc/d/a/b/i/e/l;

    invoke-direct {v13, v7, v4, v11, v12}, Lc/d/a/b/i/e/l;-><init>(Lc/d/a/b/i/e/o;Ljava/lang/String;Ljava/lang/Object;Lc/d/a/b/i/e/n;)V

    .line 25
    invoke-virtual {v0, v4, v13}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lc/d/a/b/i/e/e;

    if-eqz v7, :cond_15

    goto :goto_d

    :cond_15
    move-object v7, v13

    :cond_16
    :goto_d
    invoke-virtual {v7}, Lc/d/a/b/i/e/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/p4;

    invoke-virtual {v0}, Lc/d/a/b/i/e/p4;->o()Ljava/util/List;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/i/e/p4$b;

    invoke-virtual {v4}, Lc/d/a/b/i/e/p4$b;->s()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v4}, Lc/d/a/b/i/e/p4$b;->o()I

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {v4}, Lc/d/a/b/i/e/p4$b;->o()I

    move-result v7

    if-ne v7, v5, :cond_17

    :cond_18
    invoke-virtual {v4}, Lc/d/a/b/i/e/p4$b;->t()Ljava/lang/String;

    move-result-object v7

    iget-object v11, v3, Lc/d/a/b/i/e/c5;->a:Landroid/content/Context;

    invoke-static {v11}, Lc/d/a/b/i/e/c5;->d(Landroid/content/Context;)J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Lc/d/a/b/i/e/c5;->a(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-virtual {v4}, Lc/d/a/b/i/e/p4$b;->u()J

    move-result-wide v15

    invoke-virtual {v4}, Lc/d/a/b/i/e/p4$b;->v()J

    move-result-wide v17

    invoke-static/range {v13 .. v18}, Lc/d/a/b/i/e/c5;->b(JJJ)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v2, 0x0

    :cond_19
    :goto_f
    if-eqz v2, :cond_1a

    .line 26
    iget-object v0, v1, Lc/d/a/b/c/a$a;->g:Lc/d/a/b/c/a;

    .line 27
    iget-object v0, v0, Lc/d/a/b/c/a;->h:Lc/d/a/b/c/c;

    .line 28
    check-cast v0, Lc/d/a/b/i/e/n2;

    .line 29
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/d/a/b/i/e/t4;

    .line 30
    iget-object v3, v0, Lc/d/a/b/e/m/d;->h:Lc/d/a/b/e/m/e;

    .line 31
    invoke-direct {v2, v10, v3}, Lc/d/a/b/i/e/t4;-><init>(Lc/d/a/b/c/f;Lc/d/a/b/e/m/e;)V

    .line 32
    invoke-virtual {v0, v8, v2}, Lc/d/a/b/e/m/d;->b(ILc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    return-void

    .line 33
    :cond_1a
    sget-object v0, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    const-string v2, "Result must not be null"

    .line 34
    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/d/a/b/e/m/m/q;

    invoke-direct {v2, v9}, Lc/d/a/b/e/m/m/q;-><init>(Lc/d/a/b/e/m/e;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g(Lc/d/a/b/e/m/j;)V

    return-void

    .line 35
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "do not reuse LogEventBuilder"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :goto_10
    throw v0

    :goto_11
    goto :goto_10
.end method
