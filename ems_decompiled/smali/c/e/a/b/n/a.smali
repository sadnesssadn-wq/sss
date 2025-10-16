.class public Lc/e/a/b/n/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/e/a/b/n/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/n/a$b;,
        Lc/e/a/b/n/a$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lc/e/a/b/n/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/b/n/c;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Lc/e/a/b/n/c;->f:Lc/e/a/b/p/b;

    .line 2
    iget-object v3, v0, Lc/e/a/b/n/c;->b:Ljava/lang/String;

    .line 3
    iget-object v4, v0, Lc/e/a/b/n/c;->g:Ljava/lang/Object;

    .line 4
    invoke-interface {v2, v3, v4}, Lc/e/a/b/p/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "No stream for image [%s]"

    .line 6
    invoke-static {v5, v6, v0, v2}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v1, v2, v0}, Lc/e/a/b/n/a;->b(Ljava/io/InputStream;Lc/e/a/b/n/c;)Lc/e/a/b/n/a$b;

    move-result-object v7

    .line 8
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :catch_0
    :cond_1
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :catch_1
    :try_start_3
    iget-object v8, v0, Lc/e/a/b/n/c;->f:Lc/e/a/b/p/b;

    .line 11
    iget-object v9, v0, Lc/e/a/b/n/c;->b:Ljava/lang/String;

    .line 12
    iget-object v10, v0, Lc/e/a/b/n/c;->g:Ljava/lang/Object;

    .line 13
    invoke-interface {v8, v9, v10}, Lc/e/a/b/p/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v2

    .line 14
    :goto_0
    iget-object v8, v7, Lc/e/a/b/n/a$b;->a:Lc/e/a/b/m/e;

    invoke-virtual {v1, v8, v0}, Lc/e/a/b/n/a;->c(Lc/e/a/b/m/e;Lc/e/a/b/n/c;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    invoke-static {v2, v6, v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 15
    :try_start_4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    nop

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    new-array v2, v3, [Ljava/lang/Object;

    .line 16
    iget-object v0, v0, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    aput-object v0, v2, v4

    const-string v0, "Image can\'t be decoded [%s]"

    .line 17
    invoke-static {v5, v6, v0, v2}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 18
    :cond_3
    iget-object v2, v7, Lc/e/a/b/n/a$b;->b:Lc/e/a/b/n/a$a;

    iget v5, v2, Lc/e/a/b/n/a$a;->a:I

    iget-boolean v2, v2, Lc/e/a/b/n/a$a;->b:Z

    .line 19
    sget-object v6, Lc/e/a/b/m/d;->h:Lc/e/a/b/m/d;

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 20
    iget-object v7, v0, Lc/e/a/b/n/c;->d:Lc/e/a/b/m/d;

    .line 21
    sget-object v9, Lc/e/a/b/m/d;->g:Lc/e/a/b/m/d;

    if-eq v7, v9, :cond_4

    if-ne v7, v6, :cond_c

    :cond_4
    new-instance v9, Lc/e/a/b/m/e;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v9, v12, v13, v5}, Lc/e/a/b/m/e;-><init>(III)V

    .line 22
    iget-object v12, v0, Lc/e/a/b/n/c;->c:Lc/e/a/b/m/e;

    .line 23
    iget-object v13, v0, Lc/e/a/b/n/c;->e:Lc/e/a/b/m/h;

    if-ne v7, v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    .line 24
    :goto_2
    sget-object v7, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    .line 25
    iget v7, v9, Lc/e/a/b/m/e;->a:I

    .line 26
    iget v15, v9, Lc/e/a/b/m/e;->b:I

    .line 27
    iget v10, v12, Lc/e/a/b/m/e;->a:I

    .line 28
    iget v12, v12, Lc/e/a/b/m/e;->b:I

    int-to-float v3, v7

    int-to-float v4, v10

    div-float v4, v3, v4

    int-to-float v11, v15

    move/from16 v16, v10

    int-to-float v10, v12

    div-float v10, v11, v10

    move/from16 v17, v12

    .line 29
    sget-object v12, Lc/e/a/b/m/h;->c:Lc/e/a/b/m/h;

    if-ne v13, v12, :cond_6

    cmpl-float v12, v4, v10

    if-gez v12, :cond_7

    :cond_6
    sget-object v12, Lc/e/a/b/m/h;->d:Lc/e/a/b/m/h;

    if-ne v13, v12, :cond_8

    cmpg-float v12, v4, v10

    if-gez v12, :cond_8

    :cond_7
    div-float/2addr v11, v4

    float-to-int v12, v11

    move/from16 v10, v16

    goto :goto_3

    :cond_8
    div-float v4, v3, v10

    float-to-int v10, v4

    move/from16 v12, v17

    :goto_3
    if-nez v6, :cond_9

    if-ge v10, v7, :cond_9

    if-lt v12, v15, :cond_a

    :cond_9
    if-eqz v6, :cond_b

    if-eq v10, v7, :cond_b

    if-eq v12, v15, :cond_b

    :cond_a
    int-to-float v4, v10

    div-float v3, v4, v3

    goto :goto_4

    :cond_b
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v14, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-boolean v4, v1, Lc/e/a/b/n/a;->a:Z

    if-eqz v4, :cond_c

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v4, v6

    .line 31
    new-instance v6, Lc/e/a/b/m/e;

    iget v7, v9, Lc/e/a/b/m/e;->a:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    float-to-int v7, v7

    iget v9, v9, Lc/e/a/b/m/e;->b:I

    int-to-float v9, v9

    mul-float v9, v9, v3

    float-to-int v9, v9

    invoke-direct {v6, v7, v9}, Lc/e/a/b/m/e;-><init>(II)V

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 32
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v4, v6

    const/4 v3, 0x3

    .line 33
    iget-object v6, v0, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    aput-object v6, v4, v3

    const-string v3, "Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]"

    .line 34
    invoke-static {v3, v4}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-eqz v2, :cond_d

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-boolean v2, v1, Lc/e/a/b/n/a;->a:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    iget-object v2, v0, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Flip image horizontally [%s]"

    .line 36
    invoke-static {v2, v3}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    if-eqz v5, :cond_e

    int-to-float v2, v5

    invoke-virtual {v14, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-boolean v2, v1, Lc/e/a/b/n/a;->a:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 37
    iget-object v0, v0, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Rotate image on %1$d\u00b0 [%2$s]"

    .line 38
    invoke-static {v0, v2}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v15, 0x1

    move-object v9, v8

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v8, :cond_f

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    move-object v8, v0

    :goto_5
    return-object v8

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_10

    .line 39
    :try_start_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 40
    :catch_3
    :cond_10
    throw v0
.end method

.method public b(Ljava/io/InputStream;Lc/e/a/b/n/c;)Lc/e/a/b/n/a$b;
    .locals 5

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1
    iget-object p1, p2, Lc/e/a/b/n/c;->b:Ljava/lang/String;

    .line 2
    iget-boolean p2, p2, Lc/e/a/b/n/c;->h:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v3, "image/jpeg"

    .line 4
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lc/e/a/b/p/b$a;->d(Ljava/lang/String;)Lc/e/a/b/p/b$a;

    move-result-object p2

    sget-object v4, Lc/e/a/b/p/b$a;->g:Lc/e/a/b/p/b$a;

    if-ne p2, v4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    :try_start_0
    new-instance p2, Landroid/media/ExifInterface;

    sget-object v4, Lc/e/a/b/p/b$a;->g:Lc/e/a/b/p/b$a;

    invoke-virtual {v4, p1}, Lc/e/a/b/p/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string v4, "Orientation"

    invoke-virtual {p2, v4, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    :pswitch_2
    const/16 v3, 0x5a

    goto :goto_3

    :goto_1
    :pswitch_3
    const/16 v3, 0x10e

    goto :goto_3

    :pswitch_4
    const/4 v1, 0x0

    :pswitch_5
    const/16 v3, 0xb4

    goto :goto_3

    :catch_0
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v3

    const/4 p1, 0x5

    const-string v1, "Can\'t read EXIF tags from file [%s]"

    .line 6
    invoke-static {p1, v2, v1, p2}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v1, 0x0

    .line 7
    :goto_3
    :pswitch_6
    new-instance p1, Lc/e/a/b/n/a$a;

    invoke-direct {p1, v3, v1}, Lc/e/a/b/n/a$a;-><init>(IZ)V

    goto :goto_4

    .line 8
    :cond_1
    new-instance p1, Lc/e/a/b/n/a$a;

    invoke-direct {p1}, Lc/e/a/b/n/a$a;-><init>()V

    :goto_4
    new-instance p2, Lc/e/a/b/n/a$b;

    new-instance v1, Lc/e/a/b/m/e;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, p1, Lc/e/a/b/n/a$a;->a:I

    invoke-direct {v1, v2, v0, v3}, Lc/e/a/b/m/e;-><init>(III)V

    invoke-direct {p2, v1, p1}, Lc/e/a/b/n/a$b;-><init>(Lc/e/a/b/m/e;Lc/e/a/b/n/a$a;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lc/e/a/b/m/e;Lc/e/a/b/n/c;)Landroid/graphics/BitmapFactory$Options;
    .locals 11

    .line 1
    iget-object v0, p2, Lc/e/a/b/n/c;->d:Lc/e/a/b/m/d;

    .line 2
    sget-object v1, Lc/e/a/b/m/d;->c:Lc/e/a/b/m/d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lc/e/a/b/m/d;->d:Lc/e/a/b/m/d;

    if-ne v0, v1, :cond_1

    .line 3
    sget-object v0, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    .line 4
    iget v0, p1, Lc/e/a/b/m/e;->a:I

    .line 5
    iget v1, p1, Lc/e/a/b/m/e;->b:I

    .line 6
    sget-object v4, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    .line 7
    iget v5, v4, Lc/e/a/b/m/e;->a:I

    .line 8
    iget v4, v4, Lc/e/a/b/m/e;->b:I

    int-to-float v0, v0

    int-to-float v5, v5

    div-float/2addr v0, v5

    float-to-double v5, v0

    .line 9
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v0, v5

    int-to-float v1, v1

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_5

    .line 10
    :cond_1
    iget-object v1, p2, Lc/e/a/b/n/c;->c:Lc/e/a/b/m/e;

    .line 11
    sget-object v4, Lc/e/a/b/m/d;->e:Lc/e/a/b/m/d;

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v4, p2, Lc/e/a/b/n/c;->e:Lc/e/a/b/m/h;

    .line 13
    sget-object v5, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    .line 14
    iget v5, p1, Lc/e/a/b/m/e;->a:I

    .line 15
    iget v6, p1, Lc/e/a/b/m/e;->b:I

    .line 16
    iget v7, v1, Lc/e/a/b/m/e;->a:I

    .line 17
    iget v1, v1, Lc/e/a/b/m/e;->b:I

    .line 18
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_5

    if-eq v4, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    div-int/lit8 v4, v5, 0x2

    div-int/lit8 v8, v6, 0x2

    const/4 v9, 0x1

    :goto_1
    div-int v10, v4, v9

    if-le v10, v7, :cond_8

    div-int v10, v8, v9

    if-le v10, v1, :cond_8

    mul-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_4
    div-int v4, v5, v7

    div-int v1, v6, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_7

    div-int/lit8 v4, v5, 0x2

    div-int/lit8 v8, v6, 0x2

    const/4 v9, 0x1

    :goto_2
    div-int v10, v4, v9

    if-gt v10, v7, :cond_6

    div-int v10, v8, v9

    if-le v10, v1, :cond_8

    :cond_6
    mul-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_7
    div-int v4, v5, v7

    div-int v1, v6, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    :cond_8
    :goto_3
    if-ge v9, v3, :cond_9

    const/4 v9, 0x1

    .line 19
    :cond_9
    sget-object v1, Lc/e/a/c/a;->a:Lc/e/a/b/m/e;

    .line 20
    iget v4, v1, Lc/e/a/b/m/e;->a:I

    .line 21
    iget v1, v1, Lc/e/a/b/m/e;->b:I

    .line 22
    :goto_4
    div-int v7, v5, v9

    if-gt v7, v4, :cond_c

    div-int v7, v6, v9

    if-le v7, v1, :cond_a

    goto :goto_6

    :cond_a
    move v0, v9

    :goto_5
    if-le v0, v3, :cond_b

    .line 23
    iget-boolean v1, p0, Lc/e/a/b/n/a;->a:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 24
    new-instance v2, Lc/e/a/b/m/e;

    iget v4, p1, Lc/e/a/b/m/e;->a:I

    div-int/2addr v4, v0

    iget p1, p1, Lc/e/a/b/m/e;->b:I

    div-int/2addr p1, v0

    invoke-direct {v2, v4, p1}, Lc/e/a/b/m/e;-><init>(II)V

    aput-object v2, v1, v3

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 p1, 0x3

    .line 26
    iget-object v2, p2, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    aput-object v2, v1, p1

    const-string p1, "Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]"

    .line 27
    invoke-static {p1, v1}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    :cond_b
    iget-object p1, p2, Lc/e/a/b/n/c;->i:Landroid/graphics/BitmapFactory$Options;

    .line 29
    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object p1

    :cond_c
    :goto_6
    if-eqz v0, :cond_d

    mul-int/lit8 v9, v9, 0x2

    goto :goto_4

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_4
.end method
