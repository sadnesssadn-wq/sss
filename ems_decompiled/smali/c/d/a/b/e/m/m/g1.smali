.class public final Lc/d/a/b/e/m/m/g1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/p/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/e/m/m/g;

.field public final b:I

.field public final c:Lc/d/a/b/e/m/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/g;ILc/d/a/b/e/m/m/b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g;",
            "I",
            "Lc/d/a/b/e/m/m/b<",
            "*>;J)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/g1;->a:Lc/d/a/b/e/m/m/g;

    iput p2, p0, Lc/d/a/b/e/m/m/g1;->b:I

    iput-object p3, p0, Lc/d/a/b/e/m/m/g1;->c:Lc/d/a/b/e/m/m/b;

    iput-wide p4, p0, Lc/d/a/b/e/m/m/g1;->d:J

    return-void
.end method

.method public static a(Lc/d/a/b/e/m/m/g$a;I)Lc/d/a/b/e/p/e;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/g$a<",
            "*>;I)",
            "Lc/d/a/b/e/p/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 2
    check-cast v0, Lc/d/a/b/e/p/b;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/p/b;->z:Lc/d/a/b/e/p/v0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lc/d/a/b/e/p/v0;->f:Lc/d/a/b/e/p/e;

    :goto_0
    if-eqz v0, :cond_6

    .line 4
    iget-boolean v2, v0, Lc/d/a/b/e/p/e;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 5
    iget-object v2, v0, Lc/d/a/b/e/p/e;->f:[I

    if-eqz v2, :cond_3

    .line 6
    array-length v5, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, v2, v6

    if-ne v7, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_5

    goto :goto_3

    .line 7
    :cond_5
    iget p0, p0, Lc/d/a/b/e/m/m/g$a;->n:I

    .line 8
    iget p1, v0, Lc/d/a/b/e/p/e;->g:I

    if-ge p0, p1, :cond_6

    return-object v0

    :cond_6
    :goto_3
    return-object v1
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lc/d/a/b/e/m/m/g1;->a:Lc/d/a/b/e/m/m/g;

    invoke-virtual {v1}, Lc/d/a/b/e/m/m/g;->f()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lc/d/a/b/e/m/m/g1;->d:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lc/d/a/b/e/p/p;->a()Lc/d/a/b/e/p/p;

    move-result-object v2

    .line 1
    iget-object v2, v2, Lc/d/a/b/e/p/p;->a:Lc/d/a/b/e/p/q;

    const/16 v7, 0x64

    if-eqz v2, :cond_6

    .line 2
    iget-boolean v8, v2, Lc/d/a/b/e/p/q;->d:Z

    if-nez v8, :cond_2

    return-void

    .line 3
    :cond_2
    iget-boolean v8, v2, Lc/d/a/b/e/p/q;->e:Z

    and-int/2addr v1, v8

    .line 4
    iget v8, v2, Lc/d/a/b/e/p/q;->f:I

    .line 5
    iget v9, v2, Lc/d/a/b/e/p/q;->g:I

    .line 6
    iget v2, v2, Lc/d/a/b/e/p/q;->c:I

    .line 7
    iget-object v10, v0, Lc/d/a/b/e/m/m/g1;->a:Lc/d/a/b/e/m/m/g;

    iget-object v11, v0, Lc/d/a/b/e/m/m/g1;->c:Lc/d/a/b/e/m/m/b;

    .line 8
    iget-object v10, v10, Lc/d/a/b/e/m/m/g;->j:Ljava/util/Map;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/d/a/b/e/m/m/g$a;

    if-eqz v10, :cond_5

    .line 9
    iget-object v11, v10, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 10
    invoke-interface {v11}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 11
    iget-object v11, v10, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 12
    instance-of v11, v11, Lc/d/a/b/e/p/b;

    if-eqz v11, :cond_5

    iget v1, v0, Lc/d/a/b/e/m/m/g1;->b:I

    invoke-static {v10, v1}, Lc/d/a/b/e/m/m/g1;->a(Lc/d/a/b/e/m/m/g$a;I)Lc/d/a/b/e/p/e;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 13
    :cond_3
    iget-boolean v9, v1, Lc/d/a/b/e/p/e;->e:Z

    if-eqz v9, :cond_4

    .line 14
    iget-wide v9, v0, Lc/d/a/b/e/m/m/g1;->d:J

    cmp-long v11, v9, v3

    if-lez v11, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    .line 15
    :goto_1
    iget v9, v1, Lc/d/a/b/e/p/e;->g:I

    move v1, v5

    :cond_5
    move v10, v2

    move v13, v9

    goto :goto_2

    :cond_6
    const/16 v8, 0x1388

    const/4 v10, 0x0

    const/16 v13, 0x64

    .line 16
    :goto_2
    iget-object v2, v0, Lc/d/a/b/e/m/m/g1;->a:Lc/d/a/b/e/m/m/g;

    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/p/l;->o()Z

    move-result v5

    const/4 v9, -0x1

    if-eqz v5, :cond_7

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/p/l;->m()Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v6, 0x64

    goto :goto_4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object v5

    instance-of v6, v5, Lc/d/a/b/e/m/b;

    if-eqz v6, :cond_a

    check-cast v5, Lc/d/a/b/e/m/b;

    .line 17
    iget-object v5, v5, Lc/d/a/b/e/m/b;->c:Lcom/google/android/gms/common/api/Status;

    .line 18
    iget v6, v5, Lcom/google/android/gms/common/api/Status;->d:I

    .line 19
    iget-object v5, v5, Lcom/google/android/gms/common/api/Status;->g:Lc/d/a/b/e/a;

    if-nez v5, :cond_9

    const/4 v5, -0x1

    goto :goto_3

    .line 20
    :cond_9
    iget v5, v5, Lc/d/a/b/e/a;->d:I

    :goto_3
    move/from16 v17, v5

    move/from16 v16, v6

    goto :goto_5

    :cond_a
    const/16 v5, 0x65

    const/16 v6, 0x65

    :goto_4
    move/from16 v16, v6

    const/16 v17, -0x1

    :goto_5
    if-eqz v1, :cond_b

    .line 21
    iget-wide v3, v0, Lc/d/a/b/e/m/m/g1;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    goto :goto_6

    :cond_b
    move-wide/from16 v18, v3

    move-wide/from16 v20, v18

    :goto_6
    new-instance v9, Lc/d/a/b/e/p/j0;

    iget v15, v0, Lc/d/a/b/e/m/m/g1;->b:I

    move-object v14, v9

    invoke-direct/range {v14 .. v21}, Lc/d/a/b/e/p/j0;-><init>(IIIJJ)V

    int-to-long v11, v8

    .line 22
    iget-object v1, v2, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    new-instance v2, Lc/d/a/b/e/m/m/f1;

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lc/d/a/b/e/m/m/f1;-><init>(Lc/d/a/b/e/p/j0;IJI)V

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
