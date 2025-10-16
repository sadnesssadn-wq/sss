.class public Lc/e/a/b/n/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lc/e/a/b/m/e;

.field public final d:Lc/e/a/b/m/d;

.field public final e:Lc/e/a/b/m/h;

.field public final f:Lc/e/a/b/p/b;

.field public final g:Ljava/lang/Object;

.field public final h:Z

.field public final i:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/m/e;Lc/e/a/b/m/h;Lc/e/a/b/p/b;Lc/e/a/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/n/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/e/a/b/n/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/n/c;->c:Lc/e/a/b/m/e;

    .line 1
    iget-object p1, p7, Lc/e/a/b/c;->j:Lc/e/a/b/m/d;

    .line 2
    iput-object p1, p0, Lc/e/a/b/n/c;->d:Lc/e/a/b/m/d;

    iput-object p5, p0, Lc/e/a/b/n/c;->e:Lc/e/a/b/m/h;

    iput-object p6, p0, Lc/e/a/b/n/c;->f:Lc/e/a/b/p/b;

    .line 3
    iget-object p1, p7, Lc/e/a/b/c;->n:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lc/e/a/b/n/c;->g:Ljava/lang/Object;

    .line 5
    iget-boolean p1, p7, Lc/e/a/b/c;->m:Z

    .line 6
    iput-boolean p1, p0, Lc/e/a/b/n/c;->h:Z

    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lc/e/a/b/n/c;->i:Landroid/graphics/BitmapFactory$Options;

    .line 7
    iget-object p2, p7, Lc/e/a/b/c;->k:Landroid/graphics/BitmapFactory$Options;

    .line 8
    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    iget p3, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iput p3, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 9
    iget-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iput-boolean p3, p1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 10
    iget-object p3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    iget-boolean p2, p2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method
