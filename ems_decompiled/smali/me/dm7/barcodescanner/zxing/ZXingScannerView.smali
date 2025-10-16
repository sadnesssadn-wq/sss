.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.super Lme/dm7/barcodescanner/core/BarcodeScannerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;
    }
.end annotation


# static fields
.field public static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/d/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public w:Lc/d/d/i;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->z:Ljava/util/List;

    sget-object v1, Lc/d/d/a;->c:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->d:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->e:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->f:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->g:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->h:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->i:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->j:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->k:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->l:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->m:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->n:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->o:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->p:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->q:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->r:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lc/d/d/a;->s:Lc/d/d/a;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b()V

    return-void
.end method


# virtual methods
.method public a([BII)Lc/d/d/k;
    .locals 12

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->f:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v0}, Lg/a/a/a/e;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v2}, Lg/a/a/a/e;->getWidth()I

    move-result v2

    iget-object v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->e:Lg/a/a/a/e;

    invoke-interface {v3}, Lg/a/a/a/e;->getHeight()I

    move-result v3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-ge p2, v2, :cond_1

    iget v0, v4, Landroid/graphics/Rect;->left:I

    mul-int v0, v0, p2

    div-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget v0, v4, Landroid/graphics/Rect;->right:I

    mul-int v0, v0, p2

    div-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    :cond_1
    if-ge p3, v3, :cond_2

    iget v0, v4, Landroid/graphics/Rect;->top:I

    mul-int v0, v0, p3

    div-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    mul-int v0, v0, p3

    div-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iput-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->f:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    move-object v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->f:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_2
    if-nez v0, :cond_5

    return-object v1

    .line 2
    :cond_5
    :try_start_2
    new-instance v11, Lc/d/d/k;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    move-object v2, v11

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v10}, Lc/d/d/k;-><init>([BIIIIIIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v11

    :catch_0
    return-object v1

    :catchall_0
    move-exception p1

    .line 3
    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lc/d/d/e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lc/d/d/e;->e:Lc/d/d/e;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc/d/d/i;

    invoke-direct {v1}, Lc/d/d/i;-><init>()V

    iput-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v1, v0}, Lc/d/d/i;->d(Ljava/util/Map;)V

    return-void
.end method

.method public getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lc/d/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->x:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->z:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc/d/b/u/n;->l(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getRotationCount()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    move v15, v2

    move v2, v0

    move v0, v15

    .line 1
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getRotationCount()I

    move-result v7

    if-eq v7, v4, :cond_4

    if-ne v7, v5, :cond_3

    goto :goto_1

    :cond_3
    move v15, v2

    move v2, v0

    move v0, v15

    goto :goto_5

    :cond_4
    :goto_1
    const/4 v5, 0x0

    move v8, v3

    const/4 v9, 0x0

    move-object/from16 v3, p1

    :goto_2
    if-ge v9, v7, :cond_8

    array-length v10, v3

    new-array v10, v10, [B

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_6

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v6, :cond_5

    mul-int v13, v12, v8

    add-int/2addr v13, v8

    sub-int/2addr v13, v11

    sub-int/2addr v13, v4

    mul-int v14, v11, v6

    add-int/2addr v14, v12

    aget-byte v14, v3, v14

    aput-byte v14, v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    move-object v3, v10

    move v15, v8

    move v8, v6

    move v6, v15

    goto :goto_2

    :cond_7
    :goto_5
    move-object/from16 v3, p1

    move v15, v2

    move v2, v0

    move v0, v15

    .line 2
    :cond_8
    invoke-virtual {v1, v3, v0, v2}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->a([BII)Lc/d/d/k;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    new-instance v3, Lc/d/d/c;

    new-instance v4, Lc/d/d/s/h;

    invoke-direct {v4, v0}, Lc/d/d/s/h;-><init>(Lc/d/d/h;)V

    invoke-direct {v3, v4}, Lc/d/d/c;-><init>(Lc/d/d/b;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v4, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    .line 3
    iget-object v5, v4, Lc/d/d/i;->b:[Lc/d/d/l;

    if-nez v5, :cond_9

    invoke-virtual {v4, v2}, Lc/d/d/i;->d(Ljava/util/Map;)V

    :cond_9
    invoke-virtual {v4, v3}, Lc/d/d/i;->c(Lc/d/d/c;)Lc/d/d/n;

    move-result-object v3
    :try_end_1
    .catch Lc/d/d/m; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    iget-object v4, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v4}, Lc/d/d/i;->b()V

    goto :goto_6

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v2}, Lc/d/d/i;->b()V

    throw v0

    :catch_0
    iget-object v3, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v3}, Lc/d/d/i;->b()V

    move-object v3, v2

    :goto_6
    if-nez v3, :cond_b

    .line 5
    new-instance v4, Lc/d/d/g;

    invoke-direct {v4, v0}, Lc/d/d/g;-><init>(Lc/d/d/h;)V

    .line 6
    new-instance v0, Lc/d/d/c;

    new-instance v5, Lc/d/d/s/h;

    invoke-direct {v5, v4}, Lc/d/d/s/h;-><init>(Lc/d/d/h;)V

    invoke-direct {v0, v5}, Lc/d/d/c;-><init>(Lc/d/d/b;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v4, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    .line 7
    iget-object v5, v4, Lc/d/d/i;->b:[Lc/d/d/l;

    if-nez v5, :cond_a

    invoke-virtual {v4, v2}, Lc/d/d/i;->d(Ljava/util/Map;)V

    :cond_a
    invoke-virtual {v4, v0}, Lc/d/d/i;->c(Lc/d/d/c;)Lc/d/d/n;

    move-result-object v2
    :try_end_3
    .catch Lc/d/d/j; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 8
    :try_start_4
    iget-object v0, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v0}, Lc/d/d/i;->b()V

    goto :goto_7

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v2}, Lc/d/d/i;->b()V

    throw v0

    :catch_1
    iget-object v0, v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->w:Lc/d/d/i;

    invoke-virtual {v0}, Lc/d/d/i;->b()V

    :cond_b
    move-object v2, v3

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;

    invoke-direct {v3, v1, v2}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;-><init>(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lc/d/d/n;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZXingScannerView"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/d/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->x:Ljava/util/List;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b()V

    return-void
.end method

.method public setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;)V
    .locals 0

    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->y:Lme/dm7/barcodescanner/zxing/ZXingScannerView$b;

    return-void
.end method
