.class public final Lc/e/a/b/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final c:Landroid/graphics/Bitmap;

.field public final d:Ljava/lang/String;

.field public final e:Lc/e/a/b/q/a;

.field public final f:Ljava/lang/String;

.field public final g:Lc/e/a/b/o/a;

.field public final h:Lc/e/a/b/r/a;

.field public final i:Lc/e/a/b/g;

.field public final j:Lc/e/a/b/m/f;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lc/e/a/b/h;Lc/e/a/b/g;Lc/e/a/b/m/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/b/b;->c:Landroid/graphics/Bitmap;

    iget-object p1, p2, Lc/e/a/b/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/b/b;->d:Ljava/lang/String;

    iget-object p1, p2, Lc/e/a/b/h;->c:Lc/e/a/b/q/a;

    iput-object p1, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    iget-object p1, p2, Lc/e/a/b/h;->b:Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/b/b;->f:Ljava/lang/String;

    iget-object p1, p2, Lc/e/a/b/h;->e:Lc/e/a/b/c;

    .line 1
    iget-object p1, p1, Lc/e/a/b/c;->q:Lc/e/a/b/o/a;

    .line 2
    iput-object p1, p0, Lc/e/a/b/b;->g:Lc/e/a/b/o/a;

    iget-object p1, p2, Lc/e/a/b/h;->f:Lc/e/a/b/r/a;

    iput-object p1, p0, Lc/e/a/b/b;->h:Lc/e/a/b/r/a;

    iput-object p3, p0, Lc/e/a/b/b;->i:Lc/e/a/b/g;

    iput-object p4, p0, Lc/e/a/b/b;->j:Lc/e/a/b/m/f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    check-cast v0, Lc/e/a/b/q/c;

    .line 1
    iget-object v0, v0, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lc/e/a/b/b;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/e/a/b/b;->i:Lc/e/a/b/g;

    iget-object v3, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    .line 4
    iget-object v0, v0, Lc/e/a/b/g;->e:Ljava/util/Map;

    check-cast v3, Lc/e/a/b/q/c;

    invoke-virtual {v3}, Lc/e/a/b/q/c;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v3, p0, Lc/e/a/b/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lc/e/a/b/b;->f:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lc/e/a/b/b;->h:Lc/e/a/b/r/a;

    iget-object v1, p0, Lc/e/a/b/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    check-cast v2, Lc/e/a/b/q/b;

    invoke-virtual {v2}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/e/a/b/r/a;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lc/e/a/b/b;->j:Lc/e/a/b/m/f;

    aput-object v3, v0, v2

    iget-object v2, p0, Lc/e/a/b/b;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lc/e/a/b/b;->g:Lc/e/a/b/o/a;

    iget-object v1, p0, Lc/e/a/b/b;->c:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    iget-object v3, p0, Lc/e/a/b/b;->j:Lc/e/a/b/m/f;

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/o/a;->display(Landroid/graphics/Bitmap;Lc/e/a/b/q/a;Lc/e/a/b/m/f;)V

    iget-object v0, p0, Lc/e/a/b/b;->i:Lc/e/a/b/g;

    iget-object v1, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    .line 7
    iget-object v0, v0, Lc/e/a/b/g;->e:Ljava/util/Map;

    check-cast v1, Lc/e/a/b/q/c;

    invoke-virtual {v1}, Lc/e/a/b/q/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lc/e/a/b/b;->h:Lc/e/a/b/r/a;

    iget-object v1, p0, Lc/e/a/b/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/b;->e:Lc/e/a/b/q/a;

    check-cast v2, Lc/e/a/b/q/b;

    invoke-virtual {v2}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/b;->c:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, v3}, Lc/e/a/b/r/a;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_2
    return-void
.end method
