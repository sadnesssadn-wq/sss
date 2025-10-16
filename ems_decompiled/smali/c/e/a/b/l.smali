.class public final Lc/e/a/b/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final c:Lc/e/a/b/g;

.field public final d:Landroid/graphics/Bitmap;

.field public final e:Lc/e/a/b/h;

.field public final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lc/e/a/b/g;Landroid/graphics/Bitmap;Lc/e/a/b/h;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/l;->c:Lc/e/a/b/g;

    iput-object p2, p0, Lc/e/a/b/l;->d:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lc/e/a/b/l;->e:Lc/e/a/b/h;

    iput-object p4, p0, Lc/e/a/b/l;->f:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/b/l;->e:Lc/e/a/b/h;

    iget-object v1, v1, Lc/e/a/b/h;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PostProcess image before displaying [%s]"

    invoke-static {v1, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc/e/a/b/l;->e:Lc/e/a/b/h;

    iget-object v0, v0, Lc/e/a/b/h;->e:Lc/e/a/b/c;

    .line 1
    iget-object v0, v0, Lc/e/a/b/c;->p:Lc/e/a/b/s/a;

    .line 2
    iget-object v1, p0, Lc/e/a/b/l;->d:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lc/e/a/b/s/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lc/e/a/b/b;

    iget-object v2, p0, Lc/e/a/b/l;->e:Lc/e/a/b/h;

    iget-object v3, p0, Lc/e/a/b/l;->c:Lc/e/a/b/g;

    sget-object v4, Lc/e/a/b/m/f;->e:Lc/e/a/b/m/f;

    invoke-direct {v1, v0, v2, v3, v4}, Lc/e/a/b/b;-><init>(Landroid/graphics/Bitmap;Lc/e/a/b/h;Lc/e/a/b/g;Lc/e/a/b/m/f;)V

    iget-object v0, p0, Lc/e/a/b/l;->e:Lc/e/a/b/h;

    iget-object v0, v0, Lc/e/a/b/h;->e:Lc/e/a/b/c;

    .line 3
    iget-boolean v0, v0, Lc/e/a/b/c;->s:Z

    .line 4
    iget-object v2, p0, Lc/e/a/b/l;->f:Landroid/os/Handler;

    iget-object v3, p0, Lc/e/a/b/l;->c:Lc/e/a/b/g;

    invoke-static {v1, v0, v2, v3}, Lc/e/a/b/j;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/e/a/b/g;)V

    return-void
.end method
