.class public Lc/b/w/o;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/app/Activity;Landroid/view/View;III)V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr p0, p4

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iput p0, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    mul-int p0, p0, p3

    div-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public static b(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0x7f0d0000

    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1
    sget-object v4, Lc/f/a/t;->p:Lc/f/a/t;

    if-nez v4, :cond_2

    const-class v4, Lc/f/a/t;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lc/f/a/t;->p:Lc/f/a/t;

    if-nez v5, :cond_1

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 3
    sget-object v5, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    new-instance v5, Lc/f/a/s;

    .line 5
    invoke-static {v3}, Lc/f/a/f0;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 6
    invoke-static {v6}, Lc/f/a/f0;->a(Ljava/io/File;)J

    move-result-wide v7

    invoke-direct {v5, v6, v7, v8}, Lc/f/a/s;-><init>(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    new-instance v5, Lc/f/a/d0;

    invoke-direct {v5, v3}, Lc/f/a/d0;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v10, v5

    .line 8
    new-instance v5, Lc/f/a/m;

    invoke-direct {v5, v3}, Lc/f/a/m;-><init>(Landroid/content/Context;)V

    new-instance v8, Lc/f/a/v;

    invoke-direct {v8}, Lc/f/a/v;-><init>()V

    sget-object v13, Lc/f/a/t$f;->a:Lc/f/a/t$f;

    new-instance v14, Lc/f/a/a0;

    invoke-direct {v14, v5}, Lc/f/a/a0;-><init>(Lc/f/a/d;)V

    new-instance v15, Lc/f/a/i;

    sget-object v9, Lc/f/a/t;->o:Landroid/os/Handler;

    move-object v6, v15

    move-object v7, v3

    move-object v11, v5

    move-object v12, v14

    invoke-direct/range {v6 .. v12}, Lc/f/a/i;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Lc/f/a/j;Lc/f/a/d;Lc/f/a/a0;)V

    new-instance v17, Lc/f/a/t;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v6, v17

    move-object v7, v3

    move-object v8, v15

    move-object v9, v5

    move-object v11, v13

    move-object v13, v14

    move-object/from16 v14, v16

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v6 .. v16}, Lc/f/a/t;-><init>(Landroid/content/Context;Lc/f/a/i;Lc/f/a/d;Lc/f/a/t$c;Lc/f/a/t$f;Ljava/util/List;Lc/f/a/a0;Landroid/graphics/Bitmap$Config;ZZ)V

    .line 9
    sput-object v17, Lc/f/a/t;->p:Lc/f/a/t;

    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_2
    sget-object v3, Lc/f/a/t;->p:Lc/f/a/t;

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 13
    new-instance v5, Lc/f/a/x;

    invoke-direct {v5, v3, v1, v4}, Lc/f/a/x;-><init>(Lc/f/a/t;Landroid/net/Uri;I)V

    .line 14
    iput v2, v5, Lc/f/a/x;->c:I

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v5, v0, v1}, Lc/f/a/x;->a(Landroid/widget/ImageView;Lc/f/a/e;)V

    goto :goto_3

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path must not be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method
