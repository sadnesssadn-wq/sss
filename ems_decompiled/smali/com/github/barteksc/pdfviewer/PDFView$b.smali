.class public Lcom/github/barteksc/pdfviewer/PDFView$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/c/a/a/m/a;

.field public b:Lc/c/a/a/i/b;

.field public c:Z

.field public d:I

.field public e:Z

.field public f:Lc/c/a/a/n/a;

.field public g:Z

.field public h:Z

.field public final synthetic i:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/m/a;Lcom/github/barteksc/pdfviewer/PDFView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lc/c/a/a/i/a;

    invoke-direct {p3, p1}, Lc/c/a/a/i/a;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->b:Lc/c/a/a/i/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->c:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->d:I

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->e:Z

    sget-object p3, Lc/c/a/a/n/a;->c:Lc/c/a/a/n/a;

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->f:Lc/c/a/a/n/a;

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->g:Z

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->h:Z

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->a:Lc/c/a/a/m/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 1
    iget-boolean v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->O:Z

    if-nez v1, :cond_0

    .line 2
    iput-object p0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->P:Lcom/github/barteksc/pdfviewer/PDFView$b;

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Lc/c/a/a/j/a;->a:Lc/c/a/a/j/d;

    .line 5
    iput-object v2, v1, Lc/c/a/a/j/a;->b:Lc/c/a/a/j/c;

    .line 6
    iput-object v2, v1, Lc/c/a/a/j/a;->g:Lc/c/a/a/j/b;

    .line 7
    iput-object v2, v1, Lc/c/a/a/j/a;->h:Lc/c/a/a/j/b;

    .line 8
    iput-object v2, v1, Lc/c/a/a/j/a;->e:Lc/c/a/a/j/f;

    .line 9
    iput-object v2, v1, Lc/c/a/a/j/a;->f:Lc/c/a/a/j/h;

    .line 10
    iput-object v2, v1, Lc/c/a/a/j/a;->d:Lc/c/a/a/j/i;

    .line 11
    iput-object v2, v1, Lc/c/a/a/j/a;->i:Lc/c/a/a/j/j;

    .line 12
    iput-object v2, v1, Lc/c/a/a/j/a;->j:Lc/c/a/a/j/e;

    .line 13
    iput-object v2, v1, Lc/c/a/a/j/a;->c:Lc/c/a/a/j/g;

    .line 14
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->b:Lc/c/a/a/i/b;

    .line 15
    iput-object v3, v1, Lc/c/a/a/j/a;->k:Lc/c/a/a/i/b;

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeEnabled(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->setNightMode(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 17
    iput-boolean v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->B:Z

    .line 18
    invoke-static {v0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->b(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->c(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 19
    iput-boolean v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Z

    .line 20
    invoke-static {v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->d(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/l/a;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->c:Z

    .line 21
    iput-boolean v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    .line 22
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->d:I

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->e(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->e:Z

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->f(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->f:Lc/c/a/a/n/a;

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->g(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/n/a;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->g:Z

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->a(Lcom/github/barteksc/pdfviewer/PDFView;Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->h:Z

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageSnap(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFling(Z)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->i:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView$b;->a:Lc/c/a/a/m/a;

    .line 23
    invoke-virtual {v0, v1, v2, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->n(Lc/c/a/a/m/a;Ljava/lang/String;[I)V

    return-void
.end method
