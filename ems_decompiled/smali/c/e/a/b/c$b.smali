.class public Lc/e/a/b/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lc/e/a/b/m/d;

.field public k:Landroid/graphics/BitmapFactory$Options;

.field public l:I

.field public m:Z

.field public n:Ljava/lang/Object;

.field public o:Lc/e/a/b/s/a;

.field public p:Lc/e/a/b/s/a;

.field public q:Lc/e/a/b/o/a;

.field public r:Landroid/os/Handler;

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/e/a/b/c$b;->a:I

    iput v0, p0, Lc/e/a/b/c$b;->b:I

    iput v0, p0, Lc/e/a/b/c$b;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lc/e/a/b/c$b;->d:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc/e/a/b/c$b;->e:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lc/e/a/b/c$b;->f:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lc/e/a/b/c$b;->g:Z

    iput-boolean v0, p0, Lc/e/a/b/c$b;->h:Z

    iput-boolean v0, p0, Lc/e/a/b/c$b;->i:Z

    sget-object v2, Lc/e/a/b/m/d;->e:Lc/e/a/b/m/d;

    iput-object v2, p0, Lc/e/a/b/c$b;->j:Lc/e/a/b/m/d;

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lc/e/a/b/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput v0, p0, Lc/e/a/b/c$b;->l:I

    iput-boolean v0, p0, Lc/e/a/b/c$b;->m:Z

    iput-object v1, p0, Lc/e/a/b/c$b;->n:Ljava/lang/Object;

    iput-object v1, p0, Lc/e/a/b/c$b;->o:Lc/e/a/b/s/a;

    iput-object v1, p0, Lc/e/a/b/c$b;->p:Lc/e/a/b/s/a;

    .line 1
    new-instance v2, Lc/e/a/b/o/c;

    invoke-direct {v2}, Lc/e/a/b/o/c;-><init>()V

    .line 2
    iput-object v2, p0, Lc/e/a/b/c$b;->q:Lc/e/a/b/o/a;

    iput-object v1, p0, Lc/e/a/b/c$b;->r:Landroid/os/Handler;

    iput-boolean v0, p0, Lc/e/a/b/c$b;->s:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/e/a/b/c$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmapConfig can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lc/e/a/b/c;
    .locals 2

    new-instance v0, Lc/e/a/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/e/a/b/c;-><init>(Lc/e/a/b/c$b;Lc/e/a/b/c$a;)V

    return-object v0
.end method

.method public c(Lc/e/a/b/o/a;)Lc/e/a/b/c$b;
    .locals 0

    iput-object p1, p0, Lc/e/a/b/c$b;->q:Lc/e/a/b/o/a;

    return-object p0
.end method
