.class public Lc/f/a/x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lc/f/a/t;

.field public final b:Lc/f/a/w$b;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/f/a/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lc/f/a/t;Landroid/net/Uri;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/f/a/x;->a:Lc/f/a/t;

    new-instance v0, Lc/f/a/w$b;

    iget-object p1, p1, Lc/f/a/t;->l:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lc/f/a/w$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lc/f/a/x;->b:Lc/f/a/w$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;Lc/f/a/e;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {}, Lc/f/a/f0;->b()V

    if-eqz v3, :cond_10

    iget-object v4, v0, Lc/f/a/x;->b:Lc/f/a/w$b;

    .line 1
    iget-object v5, v4, Lc/f/a/w$b;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget v4, v4, Lc/f/a/w$b;->b:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 2
    iget-object v1, v0, Lc/f/a/x;->a:Lc/f/a/t;

    .line 3
    invoke-virtual {v1, v3}, Lc/f/a/t;->a(Ljava/lang/Object;)V

    .line 4
    invoke-static {v3, v5}, Lc/f/a/u;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 5
    :cond_2
    sget-object v4, Lc/f/a/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v4

    iget-object v7, v0, Lc/f/a/x;->b:Lc/f/a/w$b;

    .line 6
    iget-object v8, v7, Lc/f/a/w$b;->f:Lc/f/a/t$e;

    if-nez v8, :cond_3

    sget-object v8, Lc/f/a/t$e;->d:Lc/f/a/t$e;

    iput-object v8, v7, Lc/f/a/w$b;->f:Lc/f/a/t$e;

    :cond_3
    new-instance v8, Lc/f/a/w;

    move-object v9, v8

    iget-object v10, v7, Lc/f/a/w$b;->a:Landroid/net/Uri;

    iget v11, v7, Lc/f/a/w$b;->b:I

    const/4 v13, 0x0

    iget v14, v7, Lc/f/a/w$b;->c:I

    iget v15, v7, Lc/f/a/w$b;->d:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget-object v12, v7, Lc/f/a/w$b;->e:Landroid/graphics/Bitmap$Config;

    move-object/from16 v23, v12

    iget-object v7, v7, Lc/f/a/w$b;->f:Lc/f/a/t$e;

    move-object/from16 v24, v7

    const/16 v25, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v25}, Lc/f/a/w;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lc/f/a/t$e;Lc/f/a/w$a;)V

    .line 7
    iput v4, v8, Lc/f/a/w;->a:I

    iput-wide v1, v8, Lc/f/a/w;->b:J

    iget-object v7, v0, Lc/f/a/x;->a:Lc/f/a/t;

    iget-boolean v7, v7, Lc/f/a/t;->n:Z

    const-string v9, "Main"

    if-eqz v7, :cond_4

    invoke-virtual {v8}, Lc/f/a/w;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lc/f/a/w;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "created"

    invoke-static {v9, v12, v10, v11}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v10, v0, Lc/f/a/x;->a:Lc/f/a/t;

    .line 8
    iget-object v10, v10, Lc/f/a/t;->b:Lc/f/a/t$f;

    check-cast v10, Lc/f/a/t$f$a;

    .line 9
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v8, v8, :cond_5

    .line 10
    iput v4, v8, Lc/f/a/w;->a:I

    iput-wide v1, v8, Lc/f/a/w;->b:J

    if-eqz v7, :cond_5

    invoke-virtual {v8}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "into "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "changed"

    invoke-static {v9, v4, v1, v2}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_5
    sget-object v1, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    .line 12
    iget-object v4, v8, Lc/f/a/w;->d:Landroid/net/Uri;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    iget v2, v8, Lc/f/a/w;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v8, Lc/f/a/w;->l:F

    const/4 v7, 0x0

    const/16 v10, 0x78

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    const-string v4, "rotation:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lc/f/a/w;->l:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-boolean v4, v8, Lc/f/a/w;->o:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v8, Lc/f/a/w;->m:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v8, Lc/f/a/w;->n:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v8}, Lc/f/a/w;->a()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "resize:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lc/f/a/w;->g:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, v8, Lc/f/a/w;->h:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    iget-boolean v4, v8, Lc/f/a/w;->i:Z

    if-eqz v4, :cond_a

    const-string v4, "centerCrop"

    goto :goto_3

    :cond_a
    iget-boolean v4, v8, Lc/f/a/w;->j:Z

    if-eqz v4, :cond_b

    const-string v4, "centerInside"

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v4, v8, Lc/f/a/w;->f:Ljava/util/List;

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_c

    iget-object v10, v8, Lc/f/a/w;->f:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/f/a/c0;

    invoke-interface {v10}, Lc/f/a/c0;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 14
    invoke-static {v6}, Lc/f/a/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lc/f/a/x;->a:Lc/f/a/t;

    invoke-virtual {v1, v10}, Lc/f/a/t;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v1, v0, Lc/f/a/x;->a:Lc/f/a/t;

    .line 15
    invoke-virtual {v1, v3}, Lc/f/a/t;->a(Ljava/lang/Object;)V

    .line 16
    iget-object v1, v0, Lc/f/a/x;->a:Lc/f/a/t;

    iget-object v2, v1, Lc/f/a/t;->e:Landroid/content/Context;

    sget-object v7, Lc/f/a/t$d;->d:Lc/f/a/t$d;

    const/4 v5, 0x0

    iget-boolean v6, v1, Lc/f/a/t;->m:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Lc/f/a/u;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lc/f/a/t$d;ZZ)V

    iget-object v1, v0, Lc/f/a/x;->a:Lc/f/a/t;

    iget-boolean v1, v1, Lc/f/a/t;->n:Z

    if-eqz v1, :cond_d

    invoke-virtual {v8}, Lc/f/a/w;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "completed"

    invoke-static {v9, v3, v1, v2}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    if-eqz p2, :cond_e

    invoke-interface/range {p2 .. p2}, Lc/f/a/e;->b()V

    :cond_e
    return-void

    :cond_f
    invoke-static {v3, v5}, Lc/f/a/u;->c(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    new-instance v13, Lc/f/a/l;

    iget-object v2, v0, Lc/f/a/x;->a:Lc/f/a/t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lc/f/a/x;->c:I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v12}, Lc/f/a/l;-><init>(Lc/f/a/t;Landroid/widget/ImageView;Lc/f/a/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lc/f/a/e;Z)V

    iget-object v1, v0, Lc/f/a/x;->a:Lc/f/a/t;

    invoke-virtual {v1, v13}, Lc/f/a/t;->c(Lc/f/a/a;)V

    return-void

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method
