.class public Lc/c/a/a/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/a/g;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/c/a/a/k/a;

.field public final synthetic d:Lc/c/a/a/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/g;Lc/c/a/a/k/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/g$a;->d:Lc/c/a/a/g;

    iput-object p2, p0, Lc/c/a/a/g$a;->c:Lc/c/a/a/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lc/c/a/a/g$a;->d:Lc/c/a/a/g;

    .line 1
    iget-object v0, v0, Lc/c/a/a/g;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    iget-object v1, p0, Lc/c/a/a/g$a;->c:Lc/c/a/a/k/a;

    .line 3
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$c;->d:Lcom/github/barteksc/pdfviewer/PDFView$c;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/github/barteksc/pdfviewer/PDFView$c;->e:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iput-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 4
    iget v3, v3, Lc/c/a/a/f;->c:I

    .line 5
    iget-object v2, v2, Lc/c/a/a/j/a;->d:Lc/c/a/a/j/i;

    if-eqz v2, :cond_0

    invoke-interface {v2, v3}, Lc/c/a/a/j/i;->a(I)V

    .line 6
    :cond_0
    iget-boolean v2, v1, Lc/c/a/a/k/a;->d:Z

    if-eqz v2, :cond_4

    .line 7
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    .line 8
    iget-object v3, v2, Lc/c/a/a/b;->c:Ljava/util/List;

    monitor-enter v3

    :goto_0
    :try_start_0
    iget-object v4, v2, Lc/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_1

    iget-object v4, v2, Lc/c/a/a/b;->c:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/a/k/a;

    .line 9
    iget-object v4, v4, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v2, v2, Lc/c/a/a/b;->c:Ljava/util/List;

    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/c/a/a/k/a;

    invoke-virtual {v5, v1}, Lc/c/a/a/k/a;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    iget-object v1, v1, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 15
    :cond_4
    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    .line 16
    iget-object v3, v2, Lc/c/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    invoke-virtual {v2}, Lc/c/a/a/b;->b()V

    iget-object v2, v2, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v2, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :goto_2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :catchall_1
    move-exception v0

    .line 18
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
