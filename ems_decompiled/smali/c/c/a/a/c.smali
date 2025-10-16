.class public Lc/c/a/a/c;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/barteksc/pdfviewer/PDFView;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/shockwave/pdfium/PdfiumCore;

.field public d:Ljava/lang/String;

.field public e:Lc/c/a/a/m/a;

.field public f:[I

.field public g:Lc/c/a/a/f;


# direct methods
.method public constructor <init>(Lc/c/a/a/m/a;Ljava/lang/String;[ILcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c;->e:Lc/c/a/a/m/a;

    iput-object p3, p0, Lc/c/a/a/c;->f:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/a/a/c;->a:Z

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc/c/a/a/c;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lc/c/a/a/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lc/c/a/a/c;->c:Lcom/shockwave/pdfium/PdfiumCore;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    check-cast p1, [Ljava/lang/Void;

    .line 1
    :try_start_0
    iget-object p1, p0, Lc/c/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/c/a/a/c;->e:Lc/c/a/a/m/a;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    iget-object v1, p0, Lc/c/a/a/c;->c:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v2, p0, Lc/c/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc/c/a/a/m/a;->a(Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v5

    new-instance v0, Lc/c/a/a/f;

    iget-object v4, p0, Lc/c/a/a/c;->c:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageFitPolicy()Lc/c/a/a/n/a;

    move-result-object v6

    .line 2
    new-instance v7, Lcom/shockwave/pdfium/util/Size;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-direct {v7, v1, v2}, Lcom/shockwave/pdfium/util/Size;-><init>(II)V

    .line 3
    iget-object v8, p0, Lc/c/a/a/c;->f:[I

    .line 4
    iget-boolean v9, p1, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    .line 5
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getSpacingPx()I

    move-result v10

    .line 6
    iget-boolean v11, p1, Lcom/github/barteksc/pdfviewer/PDFView;->L:Z

    .line 7
    iget-boolean v12, p1, Lcom/github/barteksc/pdfviewer/PDFView;->x:Z

    move-object v3, v0

    .line 8
    invoke-direct/range {v3 .. v12}, Lc/c/a/a/f;-><init>(Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;Lc/c/a/a/n/a;Lcom/shockwave/pdfium/util/Size;[IZIZZ)V

    iput-object v0, p0, Lc/c/a/a/c;->g:Lc/c/a/a/f;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "pdfView == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_0
    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/c;->a:Z

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    .line 1
    iget-object v0, p0, Lc/c/a/a/c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_1

    .line 2
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$c;->f:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iput-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 3
    iget-object v1, v1, Lc/c/a/a/j/a;->b:Lc/c/a/a/j/c;

    .line 4
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lc/c/a/a/j/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "PDFView"

    const-string v1, "load pdf error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean p1, p0, Lc/c/a/a/c;->a:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lc/c/a/a/c;->g:Lc/c/a/a/f;

    .line 6
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$c;->d:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iput-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iput-object p1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_2
    new-instance v1, Lc/c/a/a/g;

    iget-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->q:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lc/c/a/a/g;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->r:Lc/c/a/a/g;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lc/c/a/a/g;->e:Z

    .line 8
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lc/c/a/a/l/a;->e(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-boolean v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Z

    :cond_3
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->h:Lc/c/a/a/d;

    .line 9
    iput-boolean v2, v1, Lc/c/a/a/d;->i:Z

    .line 10
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 11
    iget p1, p1, Lc/c/a/a/f;->c:I

    .line 12
    iget-object v1, v1, Lc/c/a/a/j/a;->a:Lc/c/a/a/j/d;

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Lc/c/a/a/j/d;->a(I)V

    .line 13
    :cond_4
    iget p1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->y:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->m(IZ)V

    :cond_5
    :goto_0
    return-void
.end method
