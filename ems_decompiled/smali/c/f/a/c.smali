.class public Lc/f/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final v:Ljava/lang/Object;

.field public static final w:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static final x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final y:Lc/f/a/y;


# instance fields
.field public final c:I

.field public final d:Lc/f/a/t;

.field public final e:Lc/f/a/i;

.field public final f:Lc/f/a/d;

.field public final g:Lc/f/a/a0;

.field public final h:Ljava/lang/String;

.field public final i:Lc/f/a/w;

.field public final j:I

.field public k:I

.field public final l:Lc/f/a/y;

.field public m:Lc/f/a/a;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public o:Landroid/graphics/Bitmap;

.field public p:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field public q:Lc/f/a/t$d;

.field public r:Ljava/lang/Exception;

.field public s:I

.field public t:I

.field public u:Lc/f/a/t$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/f/a/c;->v:Ljava/lang/Object;

    new-instance v0, Lc/f/a/c$a;

    invoke-direct {v0}, Lc/f/a/c$a;-><init>()V

    sput-object v0, Lc/f/a/c;->w:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lc/f/a/c;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lc/f/a/c$b;

    invoke-direct {v0}, Lc/f/a/c$b;-><init>()V

    sput-object v0, Lc/f/a/c;->y:Lc/f/a/y;

    return-void
.end method

.method public constructor <init>(Lc/f/a/t;Lc/f/a/i;Lc/f/a/d;Lc/f/a/a0;Lc/f/a/a;Lc/f/a/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/f/a/c;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lc/f/a/c;->c:I

    iput-object p1, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iput-object p2, p0, Lc/f/a/c;->e:Lc/f/a/i;

    iput-object p3, p0, Lc/f/a/c;->f:Lc/f/a/d;

    iput-object p4, p0, Lc/f/a/c;->g:Lc/f/a/a0;

    iput-object p5, p0, Lc/f/a/c;->m:Lc/f/a/a;

    .line 1
    iget-object p1, p5, Lc/f/a/a;->i:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lc/f/a/c;->h:Ljava/lang/String;

    .line 3
    iget-object p1, p5, Lc/f/a/a;->b:Lc/f/a/w;

    .line 4
    iput-object p1, p0, Lc/f/a/c;->i:Lc/f/a/w;

    .line 5
    iget-object p1, p1, Lc/f/a/w;->q:Lc/f/a/t$e;

    .line 6
    iput-object p1, p0, Lc/f/a/c;->u:Lc/f/a/t$e;

    .line 7
    iget p1, p5, Lc/f/a/a;->e:I

    .line 8
    iput p1, p0, Lc/f/a/c;->j:I

    .line 9
    iget p1, p5, Lc/f/a/a;->f:I

    .line 10
    iput p1, p0, Lc/f/a/c;->k:I

    iput-object p6, p0, Lc/f/a/c;->l:Lc/f/a/y;

    invoke-virtual {p6}, Lc/f/a/y;->e()I

    move-result p1

    iput p1, p0, Lc/f/a/c;->t:I

    return-void
.end method

.method public static a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/f/a/c0;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/f/a/c0;

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1}, Lc/f/a/c0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const-string p1, "Transformation "

    invoke-static {p1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v2}, Lc/f/a/c0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f/a/c0;

    invoke-interface {v0}, Lc/f/a/c0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    sget-object p0, Lc/f/a/t;->o:Landroid/os/Handler;

    new-instance v0, Lc/f/a/c$d;

    invoke-direct {v0, p1}, Lc/f/a/c$d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object p0, Lc/f/a/t;->o:Landroid/os/Handler;

    new-instance p1, Lc/f/a/c$e;

    invoke-direct {p1, v2}, Lc/f/a/c$e;-><init>(Lc/f/a/c0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p0, Lc/f/a/t;->o:Landroid/os/Handler;

    new-instance p1, Lc/f/a/c$f;

    invoke-direct {p1, v2}, Lc/f/a/c$f;-><init>(Lc/f/a/c0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lc/f/a/t;->o:Landroid/os/Handler;

    new-instance v0, Lc/f/a/c$c;

    invoke-direct {v0, v2, p0}, Lc/f/a/c$c;-><init>(Lc/f/a/c0;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method public static c(Ljava/io/InputStream;Lc/f/a/w;)Landroid/graphics/Bitmap;
    .locals 11

    new-instance v0, Lc/f/a/n;

    invoke-direct {v0, p0}, Lc/f/a/n;-><init>(Ljava/io/InputStream;)V

    const/high16 p0, 0x10000

    invoke-virtual {v0, p0}, Lc/f/a/n;->d(I)J

    move-result-wide v1

    invoke-static {p1}, Lc/f/a/y;->d(Lc/f/a/w;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    .line 1
    iget-boolean v5, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    sget-object v6, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    const/16 v6, 0xc

    new-array v7, v6, [B

    invoke-virtual {v0, v7, v4, v6}, Lc/f/a/n;->read([BII)I

    move-result v8

    if-ne v8, v6, :cond_1

    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x4

    const-string v9, "US-ASCII"

    invoke-direct {v6, v7, v4, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v10, "RIFF"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/String;

    const/16 v10, 0x8

    invoke-direct {v6, v7, v10, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v7, "WEBP"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-virtual {v0, v1, v2}, Lc/f/a/n;->c(J)V

    if-eqz v3, :cond_4

    .line 4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_2
    const/4 v3, -0x1

    invoke-virtual {v0, v2}, Lc/f/a/n;->read([B)I

    move-result v6

    if-eq v3, v6, :cond_2

    invoke-virtual {v1, v2, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-eqz v5, :cond_3

    .line 5
    array-length v1, v0

    invoke-static {v0, v4, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, p1, Lc/f/a/w;->g:I

    iget v2, p1, Lc/f/a/w;->h:I

    invoke-static {v1, v2, p0, p1}, Lc/f/a/y;->b(IILandroid/graphics/BitmapFactory$Options;Lc/f/a/w;)V

    :cond_3
    array-length p1, v0

    invoke-static {v0, v4, p1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v3, 0x0

    if-eqz v5, :cond_5

    invoke-static {v0, v3, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v4, p1, Lc/f/a/w;->g:I

    iget v5, p1, Lc/f/a/w;->h:I

    invoke-static {v4, v5, p0, p1}, Lc/f/a/y;->b(IILandroid/graphics/BitmapFactory$Options;Lc/f/a/w;)V

    invoke-virtual {v0, v1, v2}, Lc/f/a/n;->c(J)V

    :cond_5
    invoke-static {v0, v3, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_6

    return-object p0

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static f(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_1

    if-gt p1, p3, :cond_1

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static g(Lc/f/a/w;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lc/f/a/w;->k:Z

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lc/f/a/w;->c()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    iget v3, p0, Lc/f/a/w;->g:I

    iget v5, p0, Lc/f/a/w;->h:I

    iget v6, p0, Lc/f/a/w;->l:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lc/f/a/w;->o:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lc/f/a/w;->m:F

    iget v9, p0, Lc/f/a/w;->n:F

    invoke-virtual {v8, v6, v7, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    :cond_1
    :goto_0
    iget-boolean v6, p0, Lc/f/a/w;->i:Z

    if-eqz v6, :cond_4

    int-to-float p0, v3

    int-to-float v6, v0

    div-float v7, p0, v6

    int-to-float v9, v5

    int-to-float v10, v1

    div-float v11, v9, v10

    cmpl-float v12, v7, v11

    if-lez v12, :cond_2

    div-float/2addr v11, v7

    mul-float v11, v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int p0, v10

    sub-int v6, v1, p0

    div-int/lit8 v6, v6, 0x2

    int-to-float v10, p0

    div-float v11, v9, v10

    move v9, v7

    move v7, v0

    goto :goto_1

    :cond_2
    div-float/2addr v7, v11

    mul-float v7, v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v7, v0, v6

    div-int/lit8 v7, v7, 0x2

    int-to-float v9, v6

    div-float/2addr p0, v9

    move v9, p0

    move p0, v1

    move v4, v7

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    invoke-static {v2, v0, v1, v3, v5}, Lc/f/a/c;->f(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    move v5, v6

    move v6, v7

    move v7, p0

    goto :goto_6

    :cond_4
    iget-boolean p0, p0, Lc/f/a/w;->j:Z

    if-eqz p0, :cond_6

    int-to-float p0, v3

    int-to-float v6, v0

    div-float/2addr p0, v6

    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    cmpg-float v7, p0, v6

    if-gez v7, :cond_5

    goto :goto_2

    :cond_5
    move p0, v6

    :goto_2
    invoke-static {v2, v0, v1, v3, v5}, Lc/f/a/c;->f(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_6
    if-nez v3, :cond_7

    if-eqz v5, :cond_b

    :cond_7
    if-ne v3, v0, :cond_8

    if-eq v5, v1, :cond_b

    :cond_8
    if-eqz v3, :cond_9

    int-to-float p0, v3

    int-to-float v6, v0

    goto :goto_3

    :cond_9
    int-to-float p0, v5

    int-to-float v6, v1

    :goto_3
    div-float/2addr p0, v6

    if-eqz v5, :cond_a

    int-to-float v6, v5

    int-to-float v7, v1

    goto :goto_4

    :cond_a
    int-to-float v6, v3

    int-to-float v7, v0

    :goto_4
    div-float/2addr v6, v7

    invoke-static {v2, v0, v1, v3, v5}, Lc/f/a/c;->f(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v8, p0, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    :goto_5
    move v6, v0

    move v7, v1

    const/4 v5, 0x0

    :goto_6
    if-eqz p2, :cond_c

    int-to-float p0, p2

    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_c
    const/4 v9, 0x1

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_d

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p0

    :cond_d
    return-object p1
.end method

.method public static h(Lc/f/a/w;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/f/a/w;->d:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lc/f/a/w;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_0
    sget-object v0, Lc/f/a/c;->w:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 2

    iget-object v0, p0, Lc/f/a/c;->m:Lc/f/a/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/f/a/c;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc/f/a/c;->p:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public d(Lc/f/a/a;)V
    .locals 6

    iget-object v0, p0, Lc/f/a/c;->m:Lc/f/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lc/f/a/c;->m:Lc/f/a/a;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/f/a/c;->n:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 1
    iget-object v0, p1, Lc/f/a/a;->b:Lc/f/a/w;

    iget-object v0, v0, Lc/f/a/w;->q:Lc/f/a/t$e;

    .line 2
    iget-object v3, p0, Lc/f/a/c;->u:Lc/f/a/t$e;

    if-ne v0, v3, :cond_9

    .line 3
    sget-object v0, Lc/f/a/t$e;->c:Lc/f/a/t$e;

    iget-object v3, p0, Lc/f/a/c;->n:Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lc/f/a/c;->m:Lc/f/a/a;

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 4
    iget-object v0, v4, Lc/f/a/a;->b:Lc/f/a/w;

    iget-object v0, v0, Lc/f/a/w;->q:Lc/f/a/t$e;

    :cond_6
    if-eqz v3, :cond_8

    .line 5
    iget-object v2, p0, Lc/f/a/c;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_8

    iget-object v3, p0, Lc/f/a/c;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/f/a/a;

    .line 6
    iget-object v3, v3, Lc/f/a/a;->b:Lc/f/a/w;

    iget-object v3, v3, Lc/f/a/w;->q:Lc/f/a/t$e;

    .line 7
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_7

    move-object v0, v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8
    :cond_8
    :goto_4
    iput-object v0, p0, Lc/f/a/c;->u:Lc/f/a/t$e;

    :cond_9
    iget-object v0, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean v0, v0, Lc/f/a/t;->n:Z

    if-eqz v0, :cond_a

    iget-object p1, p1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {p1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lc/f/a/f0;->g(Lc/f/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 8

    iget v0, p0, Lc/f/a/c;->j:I

    invoke-static {v0}, Lc/f/a/p;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/f/a/c;->f:Lc/f/a/d;

    iget-object v2, p0, Lc/f/a/c;->h:Ljava/lang/String;

    invoke-interface {v0, v2}, Lc/f/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lc/f/a/c;->g:Lc/f/a/a0;

    .line 1
    iget-object v2, v2, Lc/f/a/a0;->c:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2
    sget-object v1, Lc/f/a/t$d;->d:Lc/f/a/t$d;

    iput-object v1, p0, Lc/f/a/c;->q:Lc/f/a/t$d;

    iget-object v1, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean v1, v1, Lc/f/a/t;->n:Z

    if-eqz v1, :cond_0

    const-string v1, "Hunter"

    const-string v2, "decoded"

    iget-object v3, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-virtual {v3}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lc/f/a/c;->i:Lc/f/a/w;

    iget v3, p0, Lc/f/a/c;->t:I

    if-nez v3, :cond_3

    const/4 v3, 0x4

    goto :goto_0

    :cond_3
    iget v3, p0, Lc/f/a/c;->k:I

    :goto_0
    iput v3, v2, Lc/f/a/w;->c:I

    iget-object v3, p0, Lc/f/a/c;->l:Lc/f/a/y;

    iget v4, p0, Lc/f/a/c;->k:I

    invoke-virtual {v3, v2, v4}, Lc/f/a/y;->f(Lc/f/a/w;I)Lc/f/a/y$a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    iget-object v0, v2, Lc/f/a/y$a;->a:Lc/f/a/t$d;

    .line 4
    iput-object v0, p0, Lc/f/a/c;->q:Lc/f/a/t$d;

    .line 5
    iget v0, v2, Lc/f/a/y$a;->d:I

    .line 6
    iput v0, p0, Lc/f/a/c;->s:I

    .line 7
    iget-object v0, v2, Lc/f/a/y$a;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 8
    iget-object v0, v2, Lc/f/a/y$a;->c:Ljava/io/InputStream;

    .line 9
    :try_start_0
    iget-object v2, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-static {v0, v2}, Lc/f/a/c;->c(Ljava/io/InputStream;Lc/f/a/w;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lc/f/a/f0;->c(Ljava/io/InputStream;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lc/f/a/f0;->c(Ljava/io/InputStream;)V

    throw v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_e

    iget-object v2, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean v2, v2, Lc/f/a/t;->n:Z

    if-eqz v2, :cond_5

    const-string v2, "Hunter"

    const-string v3, "decoded"

    iget-object v4, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-virtual {v4}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    .line 10
    invoke-static {v2, v3, v4, v5}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_5
    iget-object v2, p0, Lc/f/a/c;->g:Lc/f/a/a0;

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Lc/f/a/f0;->e(Landroid/graphics/Bitmap;)I

    move-result v3

    iget-object v2, v2, Lc/f/a/a0;->c:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 14
    iget-object v2, p0, Lc/f/a/c;->i:Lc/f/a/w;

    .line 15
    invoke-virtual {v2}, Lc/f/a/w;->c()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8

    .line 16
    iget-object v2, v2, Lc/f/a/w;->f:Ljava/util/List;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_9

    .line 17
    iget v2, p0, Lc/f/a/c;->s:I

    if-eqz v2, :cond_e

    :cond_9
    sget-object v2, Lc/f/a/c;->v:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-virtual {v3}, Lc/f/a/w;->c()Z

    move-result v3

    if-nez v3, :cond_a

    iget v3, p0, Lc/f/a/c;->s:I

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lc/f/a/c;->i:Lc/f/a/w;

    iget v5, p0, Lc/f/a/c;->s:I

    invoke-static {v3, v0, v5}, Lc/f/a/c;->g(Lc/f/a/w;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean v3, v3, Lc/f/a/t;->n:Z

    if-eqz v3, :cond_b

    const-string v3, "Hunter"

    const-string v5, "transformed"

    iget-object v6, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-virtual {v6}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 18
    invoke-static {v3, v5, v6, v7}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_b
    iget-object v3, p0, Lc/f/a/c;->i:Lc/f/a/w;

    .line 20
    iget-object v3, v3, Lc/f/a/w;->f:Ljava/util/List;

    if-eqz v3, :cond_c

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_d

    .line 21
    invoke-static {v3, v0}, Lc/f/a/c;->a(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean v3, v3, Lc/f/a/t;->n:Z

    if-eqz v3, :cond_d

    const-string v3, "Hunter"

    const-string v4, "transformed"

    iget-object v5, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-virtual {v5}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "from custom transformations"

    invoke-static {v3, v4, v5, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_e

    iget-object v2, p0, Lc/f/a/c;->g:Lc/f/a/a0;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Lc/f/a/f0;->e(Landroid/graphics/Bitmap;)I

    move-result v3

    iget-object v2, v2, Lc/f/a/a0;->c:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 24
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_e
    :goto_6
    return-object v0
.end method

.method public run()V
    .locals 7

    const-string v0, "Picasso-Idle"

    const/4 v1, 0x5

    const/4 v2, 0x6

    :try_start_0
    iget-object v3, p0, Lc/f/a/c;->i:Lc/f/a/w;

    invoke-static {v3}, Lc/f/a/c;->h(Lc/f/a/w;)V

    iget-object v3, p0, Lc/f/a/c;->d:Lc/f/a/t;

    iget-boolean v3, v3, Lc/f/a/t;->n:Z

    if-eqz v3, :cond_0

    const-string v3, "Hunter"

    const-string v4, "executing"

    invoke-static {p0}, Lc/f/a/f0;->f(Lc/f/a/c;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 1
    invoke-static {v3, v4, v5, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/f/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lc/f/a/c;->o:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget-object v3, p0, Lc/f/a/c;->e:Lc/f/a/i;

    invoke-virtual {v3, p0}, Lc/f/a/i;->c(Lc/f/a/c;)V

    goto :goto_4

    :cond_1
    iget-object v3, p0, Lc/f/a/c;->e:Lc/f/a/i;

    invoke-virtual {v3, p0}, Lc/f/a/i;->b(Lc/f/a/c;)V
    :try_end_0
    .catch Lc/f/a/j$b; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lc/f/a/r$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    iput-object v1, p0, Lc/f/a/c;->r:Ljava/lang/Exception;

    iget-object v1, p0, Lc/f/a/c;->e:Lc/f/a/i;

    .line 3
    iget-object v1, v1, Lc/f/a/i;->i:Landroid/os/Handler;

    :goto_0
    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_3

    :catch_1
    move-exception v1

    .line 4
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    iget-object v4, p0, Lc/f/a/c;->g:Lc/f/a/a0;

    invoke-virtual {v4}, Lc/f/a/a0;->a()Lc/f/a/b0;

    move-result-object v4

    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v5}, Lc/f/a/b0;->a(Ljava/io/PrintWriter;)V

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lc/f/a/c;->r:Ljava/lang/Exception;

    iget-object v1, p0, Lc/f/a/c;->e:Lc/f/a/i;

    .line 5
    iget-object v1, v1, Lc/f/a/i;->i:Landroid/os/Handler;

    goto :goto_0

    :catch_2
    move-exception v2

    .line 6
    iput-object v2, p0, Lc/f/a/c;->r:Ljava/lang/Exception;

    iget-object v2, p0, Lc/f/a/c;->e:Lc/f/a/i;

    .line 7
    iget-object v2, v2, Lc/f/a/i;->i:Landroid/os/Handler;

    :goto_1
    invoke-virtual {v2, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_2

    :catch_3
    move-exception v2

    .line 8
    iput-object v2, p0, Lc/f/a/c;->r:Ljava/lang/Exception;

    iget-object v2, p0, Lc/f/a/c;->e:Lc/f/a/i;

    .line 9
    iget-object v2, v2, Lc/f/a/i;->i:Landroid/os/Handler;

    goto :goto_1

    :goto_2
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :catch_4
    move-exception v1

    .line 10
    iget-boolean v3, v1, Lc/f/a/j$b;->c:Z

    if-eqz v3, :cond_2

    iget v3, v1, Lc/f/a/j$b;->d:I

    const/16 v4, 0x1f8

    if-eq v3, v4, :cond_3

    :cond_2
    iput-object v1, p0, Lc/f/a/c;->r:Ljava/lang/Exception;

    :cond_3
    iget-object v1, p0, Lc/f/a/c;->e:Lc/f/a/i;

    .line 11
    iget-object v1, v1, Lc/f/a/i;->i:Landroid/os/Handler;

    goto :goto_0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method
