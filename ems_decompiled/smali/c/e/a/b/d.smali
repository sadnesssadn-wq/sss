.class public Lc/e/a/b/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Ljava/lang/String; = "d"

.field public static volatile e:Lc/e/a/b/d;


# instance fields
.field public a:Lc/e/a/b/e;

.field public b:Lc/e/a/b/g;

.field public c:Lc/e/a/b/r/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/e/a/b/r/c;

    invoke-direct {v0}, Lc/e/a/b/r/c;-><init>()V

    iput-object v0, p0, Lc/e/a/b/d;->c:Lc/e/a/b/r/a;

    return-void
.end method

.method public static a(Lc/e/a/b/c;)Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/c;->r:Landroid/os/Handler;

    .line 2
    iget-boolean p0, p0, Lc/e/a/b/c;->s:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static f()Lc/e/a/b/d;
    .locals 2

    sget-object v0, Lc/e/a/b/d;->e:Lc/e/a/b/d;

    if-nez v0, :cond_1

    const-class v0, Lc/e/a/b/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/b/d;->e:Lc/e/a/b/d;

    if-nez v1, :cond_0

    new-instance v1, Lc/e/a/b/d;

    invoke-direct {v1}, Lc/e/a/b/d;-><init>()V

    sput-object v1, Lc/e/a/b/d;->e:Lc/e/a/b/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lc/e/a/b/d;->e:Lc/e/a/b/d;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    new-instance v2, Lc/e/a/b/q/b;

    invoke-direct {v2, p2}, Lc/e/a/b/q/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/d;->e(Ljava/lang/String;Lc/e/a/b/q/a;Lc/e/a/b/c;Lc/e/a/b/r/a;Lc/e/a/b/r/b;)V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;)V
    .locals 6

    new-instance v2, Lc/e/a/b/q/b;

    invoke-direct {v2, p2}, Lc/e/a/b/q/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/d;->e(Ljava/lang/String;Lc/e/a/b/q/a;Lc/e/a/b/c;Lc/e/a/b/r/a;Lc/e/a/b/r/b;)V

    return-void
.end method

.method public d(Ljava/lang/String;Landroid/widget/ImageView;Lc/e/a/b/c;Lc/e/a/b/r/a;)V
    .locals 6

    .line 1
    new-instance v2, Lc/e/a/b/q/b;

    invoke-direct {v2, p2}, Lc/e/a/b/q/b;-><init>(Landroid/widget/ImageView;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/d;->e(Ljava/lang/String;Lc/e/a/b/q/a;Lc/e/a/b/c;Lc/e/a/b/r/a;Lc/e/a/b/r/b;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lc/e/a/b/q/a;Lc/e/a/b/c;Lc/e/a/b/r/a;Lc/e/a/b/r/b;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v1, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    if-eqz v1, :cond_1d

    if-nez p4, :cond_0

    .line 2
    iget-object v4, v0, Lc/e/a/b/d;->c:Lc/e/a/b/r/a;

    move-object v7, v4

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    if-nez p3, :cond_1

    iget-object v1, v1, Lc/e/a/b/e;->m:Lc/e/a/b/c;

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p3

    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    .line 3
    iget-object v1, v1, Lc/e/a/b/g;->e:Ljava/util/Map;

    move-object v8, v3

    check-cast v8, Lc/e/a/b/q/c;

    invoke-virtual {v8}, Lc/e/a/b/q/c;->a()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-object v1, v3

    check-cast v1, Lc/e/a/b/q/b;

    invoke-virtual {v1}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Lc/e/a/b/r/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 5
    iget-object v3, v10, Lc/e/a/b/c;->e:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    iget v9, v10, Lc/e/a/b/c;->b:I

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    .line 6
    iget-object v5, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    iget-object v5, v5, Lc/e/a/b/e;->a:Landroid/content/res/Resources;

    .line 7
    iget v6, v10, Lc/e/a/b/c;->b:I

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 8
    :cond_4
    invoke-virtual {v8, v3}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v4}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    :goto_3
    invoke-virtual {v1}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, v2, v1, v4}, Lc/e/a/b/r/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_d

    :cond_6
    iget-object v1, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    .line 9
    iget-object v1, v1, Lc/e/a/b/e;->a:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 10
    sget-object v9, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    move-object v9, v3

    check-cast v9, Lc/e/a/b/q/b;

    .line 11
    iget-object v11, v9, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    const/4 v12, -0x2

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget-boolean v14, v9, Lc/e/a/b/q/c;->b:Z

    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v14, v12, :cond_7

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    if-gtz v11, :cond_9

    if-eqz v13, :cond_9

    iget v11, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :cond_9
    :goto_5
    if-gtz v11, :cond_a

    .line 12
    iget-object v13, v9, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_a

    const-string v11, "mMaxWidth"

    invoke-static {v13, v11}, Lc/e/a/b/q/b;->c(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v11

    :cond_a
    if-gtz v11, :cond_b

    goto :goto_6

    :cond_b
    move v8, v11

    .line 13
    :goto_6
    iget-object v11, v9, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v11}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget-boolean v14, v9, Lc/e/a/b/q/c;->b:Z

    if-eqz v14, :cond_c

    if-eqz v13, :cond_c

    iget v14, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v14, v12, :cond_c

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    goto :goto_7

    :cond_c
    const/4 v11, 0x0

    :goto_7
    if-gtz v11, :cond_e

    if-eqz v13, :cond_e

    iget v11, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :cond_e
    :goto_8
    if-gtz v11, :cond_f

    .line 14
    iget-object v12, v9, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_f

    const-string v11, "mMaxHeight"

    invoke-static {v12, v11}, Lc/e/a/b/q/b;->c(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v11

    :cond_f
    if-gtz v11, :cond_10

    goto :goto_9

    :cond_10
    move v1, v11

    .line 15
    :goto_9
    new-instance v11, Lc/e/a/b/m/e;

    invoke-direct {v11, v8, v1}, Lc/e/a/b/m/e;-><init>(II)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v8, v11, Lc/e/a/b/m/e;->a:I

    .line 18
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v8, v11, Lc/e/a/b/m/e;->b:I

    .line 20
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 21
    iget-object v1, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    .line 22
    iget-object v1, v1, Lc/e/a/b/g;->e:Ljava/util/Map;

    move-object v12, v3

    check-cast v12, Lc/e/a/b/q/c;

    invoke-virtual {v12}, Lc/e/a/b/q/c;->a()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v9}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Lc/e/a/b/r/a;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    iget-object v1, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    iget-object v1, v1, Lc/e/a/b/e;->i:Lc/e/a/a/b/a;

    check-cast v1, Lc/e/a/a/b/b/a;

    invoke-virtual {v1, v8}, Lc/e/a/a/b/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_15

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_15

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v8, v1, v6

    const-string v4, "Load image from memory cache [%s]"

    invoke-static {v4, v1}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, v10, Lc/e/a/b/c;->p:Lc/e/a/b/s/a;

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_14

    .line 25
    new-instance v12, Lc/e/a/b/h;

    iget-object v1, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    .line 26
    iget-object v4, v1, Lc/e/a/b/g;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v4, :cond_12

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v1, v1, Lc/e/a/b/g;->f:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    move-object v9, v4

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v11

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v8, p5

    .line 27
    invoke-direct/range {v1 .. v9}, Lc/e/a/b/h;-><init>(Ljava/lang/String;Lc/e/a/b/q/a;Lc/e/a/b/m/e;Ljava/lang/String;Lc/e/a/b/c;Lc/e/a/b/r/a;Lc/e/a/b/r/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lc/e/a/b/l;

    iget-object v2, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    invoke-static {v10}, Lc/e/a/b/d;->a(Lc/e/a/b/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v13, v12, v3}, Lc/e/a/b/l;-><init>(Lc/e/a/b/g;Landroid/graphics/Bitmap;Lc/e/a/b/h;Landroid/os/Handler;)V

    .line 28
    iget-boolean v2, v10, Lc/e/a/b/c;->s:Z

    if-eqz v2, :cond_13

    .line 29
    invoke-virtual {v1}, Lc/e/a/b/l;->run()V

    goto/16 :goto_d

    :cond_13
    iget-object v2, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    .line 30
    invoke-virtual {v2}, Lc/e/a/b/g;->a()V

    iget-object v2, v2, Lc/e/a/b/g;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_d

    .line 31
    :cond_14
    iget-object v1, v10, Lc/e/a/b/c;->q:Lc/e/a/b/o/a;

    .line 32
    sget-object v4, Lc/e/a/b/m/f;->e:Lc/e/a/b/m/f;

    invoke-interface {v1, v13, v3, v4}, Lc/e/a/b/o/a;->display(Landroid/graphics/Bitmap;Lc/e/a/b/q/a;Lc/e/a/b/m/f;)V

    invoke-virtual {v9}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v1

    invoke-interface {v7, v2, v1, v13}, Lc/e/a/b/r/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto/16 :goto_d

    .line 33
    :cond_15
    iget-object v1, v10, Lc/e/a/b/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_17

    iget v9, v10, Lc/e/a/b/c;->a:I

    if-eqz v9, :cond_16

    goto :goto_b

    :cond_16
    const/4 v5, 0x0

    :cond_17
    :goto_b
    if-eqz v5, :cond_19

    .line 34
    iget-object v4, v0, Lc/e/a/b/d;->a:Lc/e/a/b/e;

    iget-object v4, v4, Lc/e/a/b/e;->a:Landroid/content/res/Resources;

    .line 35
    iget v5, v10, Lc/e/a/b/c;->a:I

    if-eqz v5, :cond_18

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 36
    :cond_18
    invoke-virtual {v12, v1}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_c

    .line 37
    :cond_19
    iget-boolean v1, v10, Lc/e/a/b/c;->g:Z

    if-eqz v1, :cond_1a

    .line 38
    invoke-virtual {v12, v4}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_1a
    :goto_c
    new-instance v12, Lc/e/a/b/h;

    iget-object v1, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    .line 39
    iget-object v4, v1, Lc/e/a/b/g;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/locks/ReentrantLock;

    if-nez v4, :cond_1b

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v1, v1, Lc/e/a/b/g;->f:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    move-object v9, v4

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v11

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v8, p5

    .line 40
    invoke-direct/range {v1 .. v9}, Lc/e/a/b/h;-><init>(Ljava/lang/String;Lc/e/a/b/q/a;Lc/e/a/b/m/e;Ljava/lang/String;Lc/e/a/b/c;Lc/e/a/b/r/a;Lc/e/a/b/r/b;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance v1, Lc/e/a/b/j;

    iget-object v2, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    invoke-static {v10}, Lc/e/a/b/d;->a(Lc/e/a/b/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v12, v3}, Lc/e/a/b/j;-><init>(Lc/e/a/b/g;Lc/e/a/b/h;Landroid/os/Handler;)V

    .line 41
    iget-boolean v2, v10, Lc/e/a/b/c;->s:Z

    if-eqz v2, :cond_1c

    .line 42
    invoke-virtual {v1}, Lc/e/a/b/j;->run()V

    goto :goto_d

    :cond_1c
    iget-object v2, v0, Lc/e/a/b/d;->b:Lc/e/a/b/g;

    .line 43
    iget-object v3, v2, Lc/e/a/b/g;->d:Ljava/util/concurrent/Executor;

    new-instance v4, Lc/e/a/b/f;

    invoke-direct {v4, v2, v1}, Lc/e/a/b/f;-><init>(Lc/e/a/b/g;Lc/e/a/b/j;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_d
    return-void

    .line 44
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ImageLoader must be init with configuration before using"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
