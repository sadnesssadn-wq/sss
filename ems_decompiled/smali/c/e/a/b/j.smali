.class public final Lc/e/a/b/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lc/e/a/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/j$b;
    }
.end annotation


# instance fields
.field public final c:Lc/e/a/b/g;

.field public final d:Lc/e/a/b/h;

.field public final e:Landroid/os/Handler;

.field public final f:Lc/e/a/b/e;

.field public final g:Lc/e/a/b/p/b;

.field public final h:Lc/e/a/b/p/b;

.field public final i:Lc/e/a/b/p/b;

.field public final j:Lc/e/a/b/n/b;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lc/e/a/b/q/a;

.field public final n:Lc/e/a/b/m/e;

.field public final o:Lc/e/a/b/c;

.field public final p:Lc/e/a/b/r/a;

.field public final q:Lc/e/a/b/r/b;

.field public final r:Z

.field public s:Lc/e/a/b/m/f;


# direct methods
.method public constructor <init>(Lc/e/a/b/g;Lc/e/a/b/h;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/e/a/b/m/f;->c:Lc/e/a/b/m/f;

    iput-object v0, p0, Lc/e/a/b/j;->s:Lc/e/a/b/m/f;

    iput-object p1, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    iput-object p2, p0, Lc/e/a/b/j;->d:Lc/e/a/b/h;

    iput-object p3, p0, Lc/e/a/b/j;->e:Landroid/os/Handler;

    iget-object p1, p1, Lc/e/a/b/g;->a:Lc/e/a/b/e;

    iput-object p1, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    iget-object p3, p1, Lc/e/a/b/e;->k:Lc/e/a/b/p/b;

    iput-object p3, p0, Lc/e/a/b/j;->g:Lc/e/a/b/p/b;

    iget-object p3, p1, Lc/e/a/b/e;->n:Lc/e/a/b/p/b;

    iput-object p3, p0, Lc/e/a/b/j;->h:Lc/e/a/b/p/b;

    iget-object p3, p1, Lc/e/a/b/e;->o:Lc/e/a/b/p/b;

    iput-object p3, p0, Lc/e/a/b/j;->i:Lc/e/a/b/p/b;

    iget-object p1, p1, Lc/e/a/b/e;->l:Lc/e/a/b/n/b;

    iput-object p1, p0, Lc/e/a/b/j;->j:Lc/e/a/b/n/b;

    iget-object p1, p2, Lc/e/a/b/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object p1, p2, Lc/e/a/b/h;->b:Ljava/lang/String;

    iput-object p1, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    iget-object p1, p2, Lc/e/a/b/h;->c:Lc/e/a/b/q/a;

    iput-object p1, p0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    iget-object p1, p2, Lc/e/a/b/h;->d:Lc/e/a/b/m/e;

    iput-object p1, p0, Lc/e/a/b/j;->n:Lc/e/a/b/m/e;

    iget-object p1, p2, Lc/e/a/b/h;->e:Lc/e/a/b/c;

    iput-object p1, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    iget-object p3, p2, Lc/e/a/b/h;->f:Lc/e/a/b/r/a;

    iput-object p3, p0, Lc/e/a/b/j;->p:Lc/e/a/b/r/a;

    iget-object p2, p2, Lc/e/a/b/h;->g:Lc/e/a/b/r/b;

    iput-object p2, p0, Lc/e/a/b/j;->q:Lc/e/a/b/r/b;

    .line 1
    iget-boolean p1, p1, Lc/e/a/b/c;->s:Z

    .line 2
    iput-boolean p1, p0, Lc/e/a/b/j;->r:Z

    return-void
.end method

.method public static j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/e/a/b/g;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 1
    iget-object p1, p3, Lc/e/a/b/g;->d:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/j;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lc/e/a/b/j$b;

    invoke-direct {v0, p0}, Lc/e/a/b/j$b;-><init>(Lc/e/a/b/j;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, Lc/e/a/b/j$b;

    invoke-direct {v0, p0}, Lc/e/a/b/j$b;-><init>(Lc/e/a/b/j;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v0, p0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    check-cast v0, Lc/e/a/b/q/b;

    .line 1
    sget-object v1, Lc/e/a/b/m/h;->d:Lc/e/a/b/m/h;

    iget-object v0, v0, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 2
    sget-object v2, Lc/e/a/b/m/h$a;->a:[I

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/e/a/b/m/h;->c:Lc/e/a/b/m/h;

    :cond_1
    :goto_0
    move-object v7, v1

    .line 3
    new-instance v0, Lc/e/a/b/n/c;

    iget-object v3, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    iget-object v5, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object v6, p0, Lc/e/a/b/j;->n:Lc/e/a/b/m/e;

    invoke-virtual {p0}, Lc/e/a/b/j;->e()Lc/e/a/b/p/b;

    move-result-object v8

    iget-object v9, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lc/e/a/b/n/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/e/a/b/m/e;Lc/e/a/b/m/h;Lc/e/a/b/p/b;Lc/e/a/b/c;)V

    iget-object p1, p0, Lc/e/a/b/j;->j:Lc/e/a/b/n/b;

    check-cast p1, Lc/e/a/b/n/a;

    invoke-virtual {p1, v0}, Lc/e/a/b/n/a;->a(Lc/e/a/b/n/c;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final c()Z
    .locals 5

    invoke-virtual {p0}, Lc/e/a/b/j;->e()Lc/e/a/b/p/b;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 1
    iget-object v2, v2, Lc/e/a/b/c;->n:Ljava/lang/Object;

    .line 2
    invoke-interface {v0, v1, v2}, Lc/e/a/b/p/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const/4 v3, 0x0

    const-string v4, "No stream for image [%s]"

    .line 3
    invoke-static {v1, v3, v4, v0}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    iget-object v1, v1, Lc/e/a/b/e;->j:Lc/e/a/a/a/a;

    iget-object v2, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lc/e/a/a/a/a;->b(Ljava/lang/String;Ljava/io/InputStream;Lc/e/a/c/b;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6
    :catch_1
    throw v1
.end method

.method public final d(Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V
    .locals 2

    iget-boolean v0, p0, Lc/e/a/b/j;->r:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/b/j;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/b/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/e/a/b/j$a;

    invoke-direct {v0, p0, p1, p2}, Lc/e/a/b/j$a;-><init>(Lc/e/a/b/j;Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lc/e/a/b/j;->e:Landroid/os/Handler;

    iget-object v1, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    invoke-static {v0, p1, p2, v1}, Lc/e/a/b/j;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/e/a/b/g;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()Lc/e/a/b/p/b;
    .locals 1

    iget-object v0, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    .line 1
    iget-object v0, v0, Lc/e/a/b/g;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/j;->h:Lc/e/a/b/p/b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    .line 3
    iget-object v0, v0, Lc/e/a/b/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/e/a/b/j;->i:Lc/e/a/b/p/b;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/e/a/b/j;->g:Lc/e/a/b/p/b;

    :goto_0
    return-object v0
.end method

.method public final f()Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "Task was interrupted [%s]"

    invoke-static {v1, v2}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Lc/e/a/b/j;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/e/a/b/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final h()Z
    .locals 4

    iget-object v0, p0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    check-cast v0, Lc/e/a/b/q/c;

    .line 1
    iget-object v0, v0, Lc/e/a/b/q/c;->a:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    return v1
.end method

.method public final i()Z
    .locals 4

    iget-object v0, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    iget-object v1, p0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    .line 1
    iget-object v0, v0, Lc/e/a/b/g;->e:Ljava/util/Map;

    check-cast v1, Lc/e/a/b/q/c;

    invoke-virtual {v1}, Lc/e/a/b/q/c;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v2, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method public final k()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Cache image on disk [%s]"

    invoke-static {v1, v0}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lc/e/a/b/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lc/e/a/c/c;->b(Ljava/lang/Throwable;)V

    :goto_0
    return v2
.end method

.method public final l()Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    iget-object v1, v1, Lc/e/a/b/e;->j:Lc/e/a/a/a/a;

    iget-object v2, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    invoke-interface {v1, v2}, Lc/e/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const-string v4, "Load image from disk cache [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lc/e/a/b/m/f;->d:Lc/e/a/b/m/f;

    iput-object v4, p0, Lc/e/a/b/j;->s:Lc/e/a/b/m/f;

    invoke-virtual {p0}, Lc/e/a/b/j;->a()V

    sget-object v4, Lc/e/a/b/p/b$a;->g:Lc/e/a/b/p/b$a;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lc/e/a/b/p/b$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/e/a/b/j;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lc/e/a/b/j$b; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_1
    const-string v4, "Load image from network [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lc/e/a/b/m/f;->c:Lc/e/a/b/m/f;

    iput-object v2, p0, Lc/e/a/b/j;->s:Lc/e/a/b/m/f;

    iget-object v2, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 1
    iget-boolean v3, v3, Lc/e/a/b/c;->i:Z

    if-eqz v3, :cond_2

    .line 2
    invoke-virtual {p0}, Lc/e/a/b/j;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    iget-object v3, v3, Lc/e/a/b/e;->j:Lc/e/a/a/a/a;

    iget-object v4, p0, Lc/e/a/b/j;->k:Ljava/lang/String;

    invoke-interface {v3, v4}, Lc/e/a/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v2, Lc/e/a/b/p/b$a;->g:Lc/e/a/b/p/b$a;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/e/a/b/p/b$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0}, Lc/e/a/b/j;->a()V

    invoke-virtual {p0, v2}, Lc/e/a/b/j;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    sget-object v2, Lc/e/a/b/m/b$a;->d:Lc/e/a/b/m/b$a;

    invoke-virtual {p0, v2, v0}, Lc/e/a/b/j;->d(Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lc/e/a/b/j$b; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_1
    invoke-static {v1}, Lc/e/a/c/c;->b(Ljava/lang/Throwable;)V

    sget-object v2, Lc/e/a/b/m/b$a;->g:Lc/e/a/b/m/b$a;

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    invoke-static {v1}, Lc/e/a/c/c;->b(Ljava/lang/Throwable;)V

    sget-object v2, Lc/e/a/b/m/b$a;->f:Lc/e/a/b/m/b$a;

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_3
    invoke-static {v1}, Lc/e/a/c/c;->b(Ljava/lang/Throwable;)V

    sget-object v2, Lc/e/a/b/m/b$a;->c:Lc/e/a/b/m/b$a;

    :goto_4
    invoke-virtual {p0, v2, v1}, Lc/e/a/b/j;->d(Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-object v1, v0

    :catch_6
    sget-object v2, Lc/e/a/b/m/b$a;->e:Lc/e/a/b/m/b$a;

    invoke-virtual {p0, v2, v0}, Lc/e/a/b/j;->d(Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return-object v1
.end method

.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    .line 2
    iget-object v0, v0, Lc/e/a/b/g;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    .line 4
    iget-object v1, v1, Lc/e/a/b/g;->j:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    .line 6
    iget-object v0, v0, Lc/e/a/b/g;->j:Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v7, v6, v2

    .line 8
    invoke-static {v5, v4, v0, v6}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lc/e/a/b/j;->g()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 11
    iget v0, v0, Lc/e/a/b/c;->l:I

    if-lez v0, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, "Delay %d ms before loading...  [%s]"

    invoke-static {v0, v1}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    iget-object v0, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 13
    iget v0, v0, Lc/e/a/b/c;->l:I

    int-to-long v0, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-virtual {p0}, Lc/e/a/b/j;->g()Z

    move-result v0

    goto :goto_4

    :catch_1
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Task was interrupted [%s]"

    .line 15
    invoke-static {v5, v4, v1, v0}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    return-void

    .line 16
    :cond_5
    iget-object v0, p0, Lc/e/a/b/j;->d:Lc/e/a/b/h;

    iget-object v0, v0, Lc/e/a/b/h;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v1, "Start display image task [%s]"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v1, v6}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Image already is loading. Waiting... [%s]"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-static {v1, v6}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_4
    invoke-virtual {p0}, Lc/e/a/b/j;->a()V

    iget-object v1, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    iget-object v1, v1, Lc/e/a/b/e;->i:Lc/e/a/a/b/a;

    iget-object v6, p0, Lc/e/a/b/j;->l:Ljava/lang/String;
    :try_end_4
    .catch Lc/e/a/b/j$b; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    check-cast v1, Lc/e/a/a/b/b/a;

    :try_start_5
    invoke-virtual {v1, v6}, Lc/e/a/a/b/b/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_7
    sget-object v6, Lc/e/a/b/m/f;->e:Lc/e/a/b/m/f;

    iput-object v6, p0, Lc/e/a/b/j;->s:Lc/e/a/b/m/f;

    const-string v6, "...Get cached bitmap from memory after waiting. [%s]"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lc/e/a/b/j;->l()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_5
    .catch Lc/e/a/b/j$b; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_9

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_9
    :try_start_6
    invoke-virtual {p0}, Lc/e/a/b/j;->a()V

    .line 17
    invoke-virtual {p0}, Lc/e/a/b/j;->f()Z

    move-result v6

    if-nez v6, :cond_10

    .line 18
    iget-object v6, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 19
    iget-object v6, v6, Lc/e/a/b/c;->o:Lc/e/a/b/s/a;

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_b

    const-string v6, "PreProcess image before caching in memory [%s]"

    new-array v7, v3, [Ljava/lang/Object;

    .line 20
    iget-object v8, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 21
    iget-object v6, v6, Lc/e/a/b/c;->o:Lc/e/a/b/s/a;

    .line 22
    invoke-interface {v6, v1}, Lc/e/a/b/s/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_b

    const-string v6, "Pre-processor returned null [%s]"

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 23
    invoke-static {v5, v4, v6, v7}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 24
    iget-object v6, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 25
    iget-boolean v6, v6, Lc/e/a/b/c;->h:Z

    if-eqz v6, :cond_c

    const-string v6, "Cache image in memory [%s]"

    new-array v7, v3, [Ljava/lang/Object;

    .line 26
    iget-object v8, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    iget-object v6, v6, Lc/e/a/b/e;->i:Lc/e/a/a/b/a;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;
    :try_end_6
    .catch Lc/e/a/b/j$b; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    check-cast v6, Lc/e/a/a/b/b/a;

    :try_start_7
    invoke-virtual {v6, v7, v1}, Lc/e/a/a/b/b/a;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_c
    :goto_7
    if-eqz v1, :cond_e

    iget-object v6, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 27
    iget-object v6, v6, Lc/e/a/b/c;->p:Lc/e/a/b/s/a;

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_e

    const-string v6, "PostProcess image before displaying [%s]"

    new-array v7, v3, [Ljava/lang/Object;

    .line 28
    iget-object v8, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Lc/e/a/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 29
    iget-object v6, v6, Lc/e/a/b/c;->p:Lc/e/a/b/s/a;

    .line 30
    invoke-interface {v6, v1}, Lc/e/a/b/s/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_e

    const-string v6, "Post-processor returned null [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lc/e/a/b/j;->l:Ljava/lang/String;

    aput-object v7, v3, v2

    .line 31
    invoke-static {v5, v4, v6, v3}, Lc/e/a/c/c;->c(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_e
    invoke-virtual {p0}, Lc/e/a/b/j;->a()V

    .line 33
    invoke-virtual {p0}, Lc/e/a/b/j;->f()Z

    move-result v3
    :try_end_7
    .catch Lc/e/a/b/j$b; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_f

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lc/e/a/b/b;

    iget-object v2, p0, Lc/e/a/b/j;->d:Lc/e/a/b/h;

    iget-object v3, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    iget-object v4, p0, Lc/e/a/b/j;->s:Lc/e/a/b/m/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lc/e/a/b/b;-><init>(Landroid/graphics/Bitmap;Lc/e/a/b/h;Lc/e/a/b/g;Lc/e/a/b/m/f;)V

    iget-boolean v1, p0, Lc/e/a/b/j;->r:Z

    iget-object v2, p0, Lc/e/a/b/j;->e:Landroid/os/Handler;

    iget-object v3, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    invoke-static {v0, v1, v2, v3}, Lc/e/a/b/j;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/e/a/b/g;)V

    return-void

    .line 35
    :cond_f
    :try_start_8
    new-instance v1, Lc/e/a/b/j$b;

    invoke-direct {v1, p0}, Lc/e/a/b/j$b;-><init>(Lc/e/a/b/j;)V

    throw v1

    :cond_10
    new-instance v1, Lc/e/a/b/j$b;

    invoke-direct {v1, p0}, Lc/e/a/b/j$b;-><init>(Lc/e/a/b/j;)V

    throw v1
    :try_end_8
    .catch Lc/e/a/b/j$b; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_a

    .line 36
    :catch_2
    :try_start_9
    iget-boolean v1, p0, Lc/e/a/b/j;->r:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lc/e/a/b/j;->f()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_9

    :cond_11
    new-instance v1, Lc/e/a/b/k;

    invoke-direct {v1, p0}, Lc/e/a/b/k;-><init>(Lc/e/a/b/j;)V

    iget-object v3, p0, Lc/e/a/b/j;->e:Landroid/os/Handler;

    iget-object v4, p0, Lc/e/a/b/j;->c:Lc/e/a/b/g;

    invoke-static {v1, v2, v3, v4}, Lc/e/a/b/j;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lc/e/a/b/g;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 37
    :cond_12
    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
