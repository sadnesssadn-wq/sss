.class public final Lc/f/a/y$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/f/a/t$d;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Ljava/io/InputStream;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lc/f/a/t$d;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    iput-object p1, p0, Lc/f/a/y$a;->b:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lc/f/a/y$a;->c:Ljava/io/InputStream;

    .line 1
    sget-object p1, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    const-string p1, "loadedFrom == null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p3, p0, Lc/f/a/y$a;->a:Lc/f/a/t$d;

    iput p4, p0, Lc/f/a/y$a;->d:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Lc/f/a/t$d;)V
    .locals 2

    .line 3
    sget-object v0, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    const-string v0, "stream == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2, v1}, Lc/f/a/y$a;-><init>(Landroid/graphics/Bitmap;Ljava/io/InputStream;Lc/f/a/t$d;I)V

    return-void
.end method
