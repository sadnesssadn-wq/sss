.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$b;,
        Lcom/github/barteksc/pdfviewer/PDFView$c;
    }
.end annotation


# static fields
.field public static final Q:Ljava/lang/String;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Lcom/shockwave/pdfium/PdfiumCore;

.field public F:Lc/c/a/a/l/a;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Landroid/graphics/PaintFlagsDrawFilter;

.field public K:I

.field public L:Z

.field public M:Z

.field public N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public O:Z

.field public P:Lcom/github/barteksc/pdfviewer/PDFView$b;

.field public c:F

.field public d:F

.field public e:F

.field public f:Lc/c/a/a/b;

.field public g:Lc/c/a/a/a;

.field public h:Lc/c/a/a/d;

.field public i:Lc/c/a/a/f;

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:Z

.field public o:Lcom/github/barteksc/pdfviewer/PDFView$c;

.field public p:Lc/c/a/a/c;

.field public q:Landroid/os/HandlerThread;

.field public r:Lc/c/a/a/g;

.field public s:Lc/c/a/a/e;

.field public t:Lc/c/a/a/j/a;

.field public u:Landroid/graphics/Paint;

.field public v:Landroid/graphics/Paint;

.field public w:Lc/c/a/a/n/a;

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->Q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:Z

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$c;->c:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    new-instance v0, Lc/c/a/a/j/a;

    invoke-direct {v0}, Lc/c/a/a/j/a;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    sget-object v0, Lc/c/a/a/n/a;->c:Lc/c/a/a/n/a;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Lc/c/a/a/n/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:Z

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->y:I

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Z

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->B:Z

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->C:Z

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:Z

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Z

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Z

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->J:Landroid/graphics/PaintFlagsDrawFilter;

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->K:I

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->L:Z

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:Z

    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/List;

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->O:Z

    new-instance p2, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {p2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lc/c/a/a/b;

    invoke-direct {p2}, Lc/c/a/a/b;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    new-instance p2, Lc/c/a/a/a;

    invoke-direct {p2, p0}, Lc/c/a/a/a;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    new-instance v1, Lc/c/a/a/d;

    invoke-direct {v1, p0, p2}, Lc/c/a/a/d;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/a;)V

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->h:Lc/c/a/a/d;

    new-instance p2, Lc/c/a/a/e;

    invoke-direct {p2, p0}, Lc/c/a/a/e;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->s:Lc/c/a/a/e;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->u:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->v:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {p2, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->E:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setFitEachPage(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method public static synthetic c(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    return-void
.end method

.method public static synthetic d(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/l/a;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Lc/c/a/a/l/a;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSpacing(I)V

    return-void
.end method

.method public static synthetic f(Lcom/github/barteksc/pdfviewer/PDFView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setAutoSpacing(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/n/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setPageFitPolicy(Lc/c/a/a/n/a;)V

    return-void
.end method

.method private setAutoSpacing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->L:Z

    return-void
.end method

.method private setDefaultPage(I)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->y:I

    return-void
.end method

.method private setFitEachPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->x:Z

    return-void
.end method

.method private setPageFitPolicy(Lc/c/a/a/n/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Lc/c/a/a/n/a;

    return-void
.end method

.method private setScrollHandle(Lc/c/a/a/l/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    return-void
.end method

.method private setSpacing(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    int-to-float p1, p1

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 2
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->K:I

    return-void
.end method

.method private setSwipeVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v1

    :cond_1
    if-lez p1, :cond_4

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    invoke-virtual {v0}, Lc/c/a/a/f;->d()F

    move-result v0

    .line 1
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_2
    if-gez p1, :cond_3

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    return v1

    :cond_3
    if-lez p1, :cond_4

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 3
    iget v0, v0, Lc/c/a/a/f;->p:F

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-gez p1, :cond_1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    return v1

    :cond_1
    if-lez p1, :cond_4

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 1
    iget v0, v0, Lc/c/a/a/f;->p:F

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_2
    if-gez p1, :cond_3

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    return v1

    :cond_3
    if-lez p1, :cond_4

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {v0}, Lc/c/a/a/f;->c()F

    move-result v0

    .line 3
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v0, v0, v2

    add-float/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 5

    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    .line 1
    iget-object v1, v0, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, v0, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lc/c/a/a/a;->c:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 2
    invoke-virtual {v1, v2, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    .line 3
    iget-object v0, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->o()V

    goto :goto_0

    :cond_1
    iget-boolean v1, v0, Lc/c/a/a/a;->d:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/c/a/a/a;->d:Z

    iget-object v1, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    .line 4
    iget-object v1, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lc/c/a/a/l/a;

    move-result-object v1

    invoke-interface {v1}, Lc/c/a/a/l/a;->c()V

    .line 5
    :cond_2
    iget-object v0, v0, Lc/c/a/a/a;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->r()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    return v0
.end method

.method public getDocumentMeta()Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 7

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    iget-object v2, v0, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v3, Lcom/shockwave/pdfium/PdfDocument$Meta;

    invoke-direct {v3}, Lcom/shockwave/pdfium/PdfDocument$Meta;-><init>()V

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "Title"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "Author"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "Subject"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "Keywords"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "Creator"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "Producer"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v6, "CreationDate"

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    iget-wide v4, v2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const-string v2, "ModDate"

    invoke-virtual {v0, v4, v5, v2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    monitor-exit v1

    move-object v1, v3

    :goto_0
    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:F

    return v0
.end method

.method public getMidZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1
    :cond_0
    iget v0, v0, Lc/c/a/a/f;->c:I

    return v0
.end method

.method public getPageFitPolicy()Lc/c/a/a/n/a;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->w:Lc/c/a/a/n/a;

    return-object v0
.end method

.method public getPositionOffset()F
    .locals 4

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 1
    iget v1, v1, Lc/c/a/a/f;->p:F

    mul-float v1, v1, v2

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 3
    iget v1, v1, Lc/c/a/a/f;->p:F

    mul-float v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_2
    :goto_1
    return v0
.end method

.method public getScrollHandle()Lc/c/a/a/l/a;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    return-object v0
.end method

.method public getSpacingPx()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->K:I

    return v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, v0, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-wide v4, v1, Lcom/shockwave/pdfium/PdfDocument;->a:J

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/shockwave/pdfium/PdfiumCore;->c(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_2
    monitor-exit v2

    move-object v0, v3

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    return v0
.end method

.method public h()Z
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 1
    iget v0, v0, Lc/c/a/a/f;->p:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 2
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final i(Landroid/graphics/Canvas;Lc/c/a/a/k/a;)V
    .locals 10

    .line 1
    iget-object v0, p2, Lc/c/a/a/k/a;->c:Landroid/graphics/RectF;

    .line 2
    iget-object v1, p2, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 4
    iget v3, p2, Lc/c/a/a/k/a;->a:I

    .line 5
    invoke-virtual {v2, v3}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 6
    iget p2, p2, Lc/c/a/a/k/a;->a:I

    .line 7
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v3, p2, v5}, Lc/c/a/a/f;->g(IF)F

    move-result p2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v3}, Lc/c/a/a/f;->d()F

    move-result v3

    .line 8
    iget v5, v2, Lcom/shockwave/pdfium/util/SizeF;->a:F

    sub-float/2addr v3, v5

    .line 9
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v3, v3, v5

    div-float/2addr v3, v4

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 11
    iget p2, p2, Lc/c/a/a/k/a;->a:I

    .line 12
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v3, p2, v5}, Lc/c/a/a/f;->g(IF)F

    move-result v3

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {p2}, Lc/c/a/a/f;->c()F

    move-result p2

    .line 13
    iget v5, v2, Lcom/shockwave/pdfium/util/SizeF;->b:F

    sub-float/2addr p2, v5

    .line 14
    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float p2, p2, v5

    div-float/2addr p2, v4

    .line 15
    :goto_0
    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 16
    iget v6, v2, Lcom/shockwave/pdfium/util/SizeF;->a:F

    mul-float v5, v5, v6

    .line 17
    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v5, v5, v6

    .line 18
    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 19
    iget v8, v2, Lcom/shockwave/pdfium/util/SizeF;->b:F

    mul-float v7, v7, v8

    mul-float v7, v7, v6

    .line 20
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 21
    iget v8, v2, Lcom/shockwave/pdfium/util/SizeF;->a:F

    mul-float v6, v6, v8

    .line 22
    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v6, v6, v8

    .line 23
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 24
    iget v2, v2, Lcom/shockwave/pdfium/util/SizeF;->b:F

    mul-float v0, v0, v2

    .line 25
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v0, v0, v2

    .line 26
    new-instance v2, Landroid/graphics/RectF;

    float-to-int v8, v5

    int-to-float v8, v8

    float-to-int v9, v7

    int-to-float v9, v9

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v7, v0

    float-to-int v0, v7

    int-to-float v0, v0

    invoke-direct {v2, v8, v9, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    add-float/2addr v0, v3

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    add-float/2addr v5, p2

    iget v6, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v6

    const/4 v6, 0x0

    cmpg-float v0, v0, v6

    if-lez v0, :cond_3

    iget v0, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v0, v0, v7

    if-gez v0, :cond_3

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v5, v0

    cmpg-float v0, v5, v6

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_3
    :goto_1
    neg-float v0, v3

    neg-float p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final j(Landroid/graphics/Canvas;ILc/c/a/a/j/b;)V
    .locals 5

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v0, p2, v2}, Lc/c/a/a/f;->g(IF)F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v0, p2, v2}, Lc/c/a/a/f;->g(IF)F

    move-result v0

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v2, p2}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    .line 1
    iget v3, v2, Lcom/shockwave/pdfium/util/SizeF;->a:F

    .line 2
    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v3, v3, v4

    .line 3
    iget v2, v2, Lcom/shockwave/pdfium/util/SizeF;->b:F

    mul-float v2, v2, v4

    .line 4
    invoke-interface {p3, p1, v3, v2, p2}, Lc/c/a/a/j/b;->a(Landroid/graphics/Canvas;FFI)V

    neg-float p2, v1

    neg-float p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method public k(FF)I
    .locals 4

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p2

    :goto_0
    int-to-float p2, p2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 1
    iget v2, v0, Lc/c/a/a/f;->p:F

    mul-float v2, v2, v1

    neg-float v2, v2

    add-float/2addr v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    .line 2
    iget p1, v0, Lc/c/a/a/f;->c:I

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_3
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    sub-float/2addr p1, p2

    neg-float p1, p1

    .line 3
    invoke-virtual {v0, p1, v1}, Lc/c/a/a/f;->e(FF)I

    move-result p1

    return p1
.end method

.method public l(I)Lc/c/a/a/n/c;
    .locals 6

    sget-object v0, Lc/c/a/a/n/c;->f:Lc/c/a/a/n/c;

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:Z

    if-eqz v1, :cond_5

    if-gez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    :goto_0
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v2, p1, v3}, Lc/c/a/a/f;->g(IF)F

    move-result v2

    neg-float v2, v2

    iget-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v4, p1, v5}, Lc/c/a/a/f;->f(IF)F

    move-result p1

    int-to-float v3, v3

    cmpl-float v4, v3, p1

    if-ltz v4, :cond_3

    sget-object p1, Lc/c/a/a/n/c;->d:Lc/c/a/a/n/c;

    return-object p1

    :cond_3
    cmpl-float v4, v1, v2

    if-ltz v4, :cond_4

    sget-object p1, Lc/c/a/a/n/c;->c:Lc/c/a/a/n/c;

    return-object p1

    :cond_4
    sub-float/2addr v2, p1

    sub-float/2addr v1, v3

    cmpl-float p1, v2, v1

    if-lez p1, :cond_5

    sget-object p1, Lc/c/a/a/n/c;->e:Lc/c/a/a/n/c;

    return-object p1

    :cond_5
    :goto_2
    return-object v0
.end method

.method public m(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lc/c/a/a/f;->a(I)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v0, p1, v1}, Lc/c/a/a/f;->g(IF)F

    move-result v0

    neg-float v0, v0

    :goto_0
    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {p2, v1, v0}, Lc/c/a/a/a;->d(FF)V

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    .line 1
    invoke-virtual {p0, p2, v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 2
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    invoke-virtual {p2, v1, v0}, Lc/c/a/a/a;->c(FF)V

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    .line 3
    invoke-virtual {p0, v0, p2, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    .line 4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->t(I)V

    return-void
.end method

.method public final n(Lc/c/a/a/m/a;Ljava/lang/String;[I)V
    .locals 8

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:Z

    new-instance v7, Lc/c/a/a/c;

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->E:Lcom/shockwave/pdfium/PdfiumCore;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lc/c/a/a/c;-><init>(Lc/c/a/a/m/a;Ljava/lang/String;[ILcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;)V

    iput-object v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->p:Lc/c/a/a/c;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {v7, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 1
    iget v0, v0, Lc/c/a/a/f;->c:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    sub-float/2addr v0, v2

    neg-float v0, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v1, v0, v2}, Lc/c/a/a/f;->e(FF)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 3
    iget v1, v1, Lc/c/a/a/f;->c:I

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->t(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->q:Landroid/os/HandlerThread;

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->J:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->C:Z

    if-eqz v0, :cond_2

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:Z

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$c;->e:Lcom/github/barteksc/pdfviewer/PDFView$c;

    if-eq v0, v1, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    .line 1
    iget-object v3, v2, Lc/c/a/a/b;->c:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lc/c/a/a/b;->c:Ljava/util/List;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/a/k/a;

    invoke-virtual {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->i(Landroid/graphics/Canvas;Lc/c/a/a/k/a;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    .line 3
    iget-object v4, v2, Lc/c/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v2, Lc/c/a/a/b;->a:Ljava/util/PriorityQueue;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, v2, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/a/k/a;

    invoke-virtual {p0, p1, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->i(Landroid/graphics/Canvas;Lc/c/a/a/k/a;)V

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 5
    iget-object v4, v4, Lc/c/a/a/j/a;->h:Lc/c/a/a/j/b;

    if-eqz v4, :cond_7

    .line 6
    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/List;

    .line 7
    iget v5, v3, Lc/c/a/a/k/a;->a:I

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/List;

    .line 9
    iget v3, v3, Lc/c/a/a/k/a;->a:I

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 11
    iget-object v4, v4, Lc/c/a/a/j/a;->h:Lc/c/a/a/j/b;

    .line 12
    invoke-virtual {p0, p1, v3, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->j(Landroid/graphics/Canvas;ILc/c/a/a/j/b;)V

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->N:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    .line 13
    iget-object v3, v3, Lc/c/a/a/j/a;->g:Lc/c/a/a/j/b;

    .line 14
    invoke-virtual {p0, p1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->j(Landroid/graphics/Canvas;ILc/c/a/a/j/b;)V

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->O:Z

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->P:Lcom/github/barteksc/pdfviewer/PDFView$b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView$b;->a()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    sget-object v2, Lcom/github/barteksc/pdfviewer/PDFView$c;->e:Lcom/github/barteksc/pdfviewer/PDFView$c;

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    neg-float v1, v1

    int-to-float p3, p3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float p3, p3, v2

    add-float/2addr p3, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    neg-float v1, v1

    int-to-float p4, p4

    mul-float p4, p4, v2

    add-float/2addr p4, v1

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v1}, Lc/c/a/a/f;->d()F

    move-result v1

    div-float/2addr p3, v1

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 1
    iget v1, v1, Lc/c/a/a/f;->p:F

    mul-float v1, v1, v3

    goto :goto_0

    .line 2
    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 3
    iget v4, v1, Lc/c/a/a/f;->p:F

    mul-float v4, v4, v3

    div-float/2addr p3, v4

    .line 4
    invoke-virtual {v1}, Lc/c/a/a/f;->c()F

    move-result v1

    :goto_0
    div-float/2addr p4, v1

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    invoke-virtual {v1}, Lc/c/a/a/a;->f()V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    new-instance v3, Lcom/shockwave/pdfium/util/Size;

    invoke-direct {v3, p1, p2}, Lcom/shockwave/pdfium/util/Size;-><init>(II)V

    invoke-virtual {v1, v3}, Lc/c/a/a/f;->k(Lcom/shockwave/pdfium/util/Size;)V

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    neg-float p3, p3

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v1}, Lc/c/a/a/f;->d()F

    move-result v1

    mul-float v1, v1, p3

    int-to-float p1, p1

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    neg-float p1, p4

    iget-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 5
    iget p3, p3, Lc/c/a/a/f;->p:F

    mul-float p3, p3, p4

    mul-float p1, p1, p3

    int-to-float p2, p2

    mul-float p2, p2, v2

    add-float/2addr p2, p1

    .line 6
    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 7
    iget v4, v1, Lc/c/a/a/f;->p:F

    mul-float v4, v4, v3

    mul-float p3, p3, v4

    int-to-float p1, p1

    mul-float p1, p1, v2

    add-float/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    neg-float p1, p4

    invoke-virtual {v1}, Lc/c/a/a/f;->c()F

    move-result p3

    mul-float p3, p3, p1

    int-to-float p1, p2

    mul-float p1, p1, v2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    :goto_1
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iget p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    .line 10
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->o()V

    :cond_4
    :goto_2
    return-void
.end method

.method public p()V
    .locals 33

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/PDFView;->r:Lc/c/a/a/g;

    if-nez v0, :cond_0

    goto/16 :goto_12

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    .line 1
    iget-object v3, v0, Lc/c/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lc/c/a/a/b;->a:Ljava/util/PriorityQueue;

    iget-object v5, v0, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v5}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2
    iget-object v0, v1, Lcom/github/barteksc/pdfviewer/PDFView;->s:Lc/c/a/a/e;

    .line 3
    iput v2, v0, Lc/c/a/a/e;->b:I

    iget-object v3, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->q0(FF)F

    move-result v3

    neg-float v3, v3

    iput v3, v0, Lc/c/a/a/e;->c:F

    iget-object v3, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->q0(FF)F

    move-result v3

    neg-float v3, v3

    iput v3, v0, Lc/c/a/a/e;->d:F

    .line 4
    iget v3, v0, Lc/c/a/a/e;->j:I

    int-to-float v3, v3

    iget v5, v0, Lc/c/a/a/e;->c:F

    neg-float v5, v5

    add-float v6, v5, v3

    iget-object v7, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    sub-float/2addr v5, v3

    iget v7, v0, Lc/c/a/a/e;->d:F

    neg-float v7, v7

    add-float v8, v7, v3

    iget-object v9, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v7, v9

    sub-float/2addr v7, v3

    .line 5
    invoke-static {v6, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->q0(FF)F

    move-result v3

    neg-float v3, v3

    invoke-static {v8, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->q0(FF)F

    move-result v6

    neg-float v6, v6

    invoke-static {v5, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->q0(FF)F

    move-result v5

    neg-float v5, v5

    invoke-static {v7, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->q0(FF)F

    move-result v7

    neg-float v7, v7

    iget-object v8, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 6
    iget-boolean v9, v8, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v9, :cond_1

    move v10, v6

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    if-eqz v9, :cond_2

    move v9, v7

    goto :goto_1

    :cond_2
    move v9, v5

    .line 7
    :goto_1
    iget-object v11, v8, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v8}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v8

    invoke-virtual {v11, v10, v8}, Lc/c/a/a/f;->e(FF)I

    move-result v8

    iget-object v10, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v11, v10, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v10}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v10

    invoke-virtual {v11, v9, v10}, Lc/c/a/a/f;->e(FF)I

    move-result v9

    sub-int v10, v9, v8

    add-int/2addr v10, v2

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    move v12, v8

    :goto_2
    if-gt v12, v9, :cond_a

    new-instance v15, Lc/c/a/a/e$d;

    invoke-direct {v15, v0}, Lc/c/a/a/e$d;-><init>(Lc/c/a/a/e;)V

    iput v12, v15, Lc/c/a/a/e$d;->a:I

    if-ne v12, v8, :cond_5

    if-ne v10, v2, :cond_3

    move v4, v3

    move v2, v5

    goto/16 :goto_6

    :cond_3
    iget-object v2, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v2, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    invoke-virtual {v4, v12, v2}, Lc/c/a/a/f;->g(IF)F

    move-result v2

    iget-object v4, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v13, v4, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v13, v12, v4}, Lc/c/a/a/f;->i(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v4

    iget-object v13, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 8
    iget-boolean v13, v13, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v13, :cond_4

    .line 9
    iget v4, v4, Lcom/shockwave/pdfium/util/SizeF;->b:F

    add-float/2addr v2, v4

    move v4, v2

    move v2, v5

    goto :goto_3

    .line 10
    :cond_4
    iget v4, v4, Lcom/shockwave/pdfium/util/SizeF;->a:F

    add-float/2addr v2, v4

    move v4, v7

    :goto_3
    move v13, v4

    move v4, v2

    move v2, v3

    goto :goto_7

    .line 11
    :cond_5
    iget-object v2, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v2, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    invoke-virtual {v4, v12, v2}, Lc/c/a/a/f;->g(IF)F

    move-result v2

    iget-object v4, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    if-ne v12, v9, :cond_7

    .line 12
    iget-boolean v4, v4, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v4, :cond_6

    move v4, v2

    move v2, v3

    goto :goto_4

    :cond_6
    move v4, v6

    :goto_4
    move v13, v7

    goto :goto_5

    .line 13
    :cond_7
    iget-object v13, v4, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v13, v12, v4}, Lc/c/a/a/f;->i(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v4

    iget-object v13, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 14
    iget-boolean v13, v13, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v13, :cond_8

    .line 15
    iget v4, v4, Lcom/shockwave/pdfium/util/SizeF;->b:F

    add-float/2addr v4, v2

    move v13, v4

    move v4, v2

    move v2, v3

    :goto_5
    move/from16 v18, v13

    move v13, v5

    goto :goto_8

    .line 16
    :cond_8
    iget v4, v4, Lcom/shockwave/pdfium/util/SizeF;->a:F

    add-float/2addr v4, v2

    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    :goto_6
    move v13, v7

    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    :goto_7
    move/from16 v18, v13

    move v13, v4

    move v4, v6

    .line 17
    :goto_8
    iget-object v14, v15, Lc/c/a/a/e$d;->b:Lc/c/a/a/e$b;

    iget v1, v15, Lc/c/a/a/e$d;->a:I

    move/from16 v20, v3

    .line 18
    iget-object v3, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, v3, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v3, v1}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v1

    .line 19
    iget v3, v1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    const/high16 v19, 0x3f800000    # 1.0f

    div-float v3, v19, v3

    .line 20
    iget v1, v1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    div-float v1, v19, v1

    const/high16 v17, 0x43800000    # 256.0f

    mul-float v1, v1, v17

    move/from16 v21, v5

    .line 21
    iget-object v5, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    div-float/2addr v1, v5

    mul-float v3, v3, v17

    iget-object v5, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    div-float/2addr v3, v5

    div-float v1, v19, v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->d(F)I

    move-result v1

    iput v1, v14, Lc/c/a/a/e$b;->a:I

    div-float v1, v19, v3

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->d(F)I

    move-result v1

    iput v1, v14, Lc/c/a/a/e$b;->b:I

    .line 22
    iget-object v1, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, v1, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v5, v15, Lc/c/a/a/e$d;->a:I

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    invoke-virtual {v3, v5, v1}, Lc/c/a/a/f;->i(IF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v1

    .line 23
    iget v3, v1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    .line 24
    iget-object v5, v15, Lc/c/a/a/e$d;->b:Lc/c/a/a/e$b;

    iget v14, v5, Lc/c/a/a/e$b;->a:I

    int-to-float v14, v14

    div-float/2addr v3, v14

    .line 25
    iget v1, v1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    .line 26
    iget v5, v5, Lc/c/a/a/e$b;->b:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    iget-object v5, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v14, v5, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v5}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v5

    invoke-virtual {v14, v12, v5}, Lc/c/a/a/f;->j(IF)F

    move-result v5

    iget-object v14, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    move/from16 v22, v6

    .line 27
    iget-boolean v6, v14, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v6, :cond_9

    .line 28
    iget-object v6, v15, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    move/from16 v23, v7

    iget-object v7, v14, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    move/from16 v24, v8

    iget v8, v15, Lc/c/a/a/e$d;->a:I

    invoke-virtual {v14}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v14

    invoke-virtual {v7, v8, v14}, Lc/c/a/a/f;->g(IF)F

    move-result v7

    sub-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v3

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v4

    iput v4, v6, Lc/c/a/a/e$c;->a:I

    iget-object v4, v15, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    sub-float/2addr v2, v5

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->s0(FF)F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v2

    iput v2, v4, Lc/c/a/a/e$c;->b:I

    iget-object v2, v15, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    iget-object v4, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v6, v4, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v7, v15, Lc/c/a/a/e$d;->a:I

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v6, v7, v4}, Lc/c/a/a/f;->g(IF)F

    move-result v4

    sub-float v18, v18, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v3

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->d(F)I

    move-result v3

    iput v3, v2, Lc/c/a/a/e$c;->a:I

    iget-object v2, v15, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    sub-float/2addr v13, v5

    const/4 v3, 0x0

    invoke-static {v13, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->s0(FF)F

    move-result v4

    div-float/2addr v4, v1

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v1

    iput v1, v2, Lc/c/a/a/e$c;->b:I

    goto :goto_9

    :cond_9
    move/from16 v23, v7

    move/from16 v24, v8

    iget-object v6, v15, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    iget-object v7, v14, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v8, v15, Lc/c/a/a/e$d;->a:I

    invoke-virtual {v14}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v14

    invoke-virtual {v7, v8, v14}, Lc/c/a/a/f;->g(IF)F

    move-result v7

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v2

    iput v2, v6, Lc/c/a/a/e$c;->b:I

    iget-object v2, v15, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    sub-float/2addr v4, v5

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->s0(FF)F

    move-result v4

    div-float/2addr v4, v3

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v4

    iput v4, v2, Lc/c/a/a/e$c;->a:I

    iget-object v2, v15, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    iget-object v4, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v6, v4, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v7, v15, Lc/c/a/a/e$d;->a:I

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v4

    invoke-virtual {v6, v7, v4}, Lc/c/a/a/f;->g(IF)F

    move-result v4

    sub-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v4, v1

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v1

    iput v1, v2, Lc/c/a/a/e$c;->b:I

    iget-object v1, v15, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    sub-float v2, v18, v5

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->s0(FF)F

    move-result v2

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O(F)I

    move-result v2

    iput v2, v1, Lc/c/a/a/e$c;->a:I

    :goto_9
    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 29
    :cond_a
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/a/e$d;

    iget v2, v2, Lc/c/a/a/e$d;->a:I

    .line 30
    iget-object v4, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v4, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v4, v2}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v4

    .line 31
    iget v5, v4, Lcom/shockwave/pdfium/util/SizeF;->a:F

    const v6, 0x3e99999a    # 0.3f

    mul-float v22, v5, v6

    .line 32
    iget v4, v4, Lcom/shockwave/pdfium/util/SizeF;->b:F

    mul-float v23, v4, v6

    .line 33
    iget-object v4, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v10, v4, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    iget-object v7, v0, Lc/c/a/a/e;->i:Landroid/graphics/RectF;

    .line 34
    new-instance v12, Lc/c/a/a/k/a;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v12

    move v5, v2

    invoke-direct/range {v4 .. v9}, Lc/c/a/a/k/a;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    iget-object v4, v10, Lc/c/a/a/b;->c:Ljava/util/List;

    monitor-enter v4

    :try_start_1
    iget-object v5, v10, Lc/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/a/a/k/a;

    invoke-virtual {v6, v12}, Lc/c/a/a/k/a;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    monitor-exit v4

    const/4 v3, 0x1

    goto :goto_b

    :cond_d
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_b

    .line 35
    iget-object v3, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, v3, Lcom/github/barteksc/pdfviewer/PDFView;->r:Lc/c/a/a/g;

    iget-object v5, v0, Lc/c/a/a/e;->i:Landroid/graphics/RectF;

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 36
    iget-boolean v3, v3, Lcom/github/barteksc/pdfviewer/PDFView;->H:Z

    move-object/from16 v20, v4

    move/from16 v21, v2

    move-object/from16 v24, v5

    move/from16 v28, v3

    .line 37
    invoke-virtual/range {v20 .. v28}, Lc/c/a/a/g;->a(IFFLandroid/graphics/RectF;ZIZZ)V

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 38
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 39
    :cond_e
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/a/e$d;

    iget-object v5, v4, Lc/c/a/a/e$d;->b:Lc/c/a/a/e$b;

    .line 40
    iget v6, v5, Lc/c/a/a/e$b;->b:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v14, v7, v6

    iput v14, v0, Lc/c/a/a/e;->e:F

    iget v5, v5, Lc/c/a/a/e$b;->a:I

    int-to-float v5, v5

    div-float v5, v7, v5

    iput v5, v0, Lc/c/a/a/e;->f:F

    const/high16 v6, 0x43800000    # 256.0f

    div-float v13, v6, v14

    iput v13, v0, Lc/c/a/a/e;->g:F

    div-float v13, v6, v5

    iput v13, v0, Lc/c/a/a/e;->h:F

    .line 41
    iget v5, v4, Lc/c/a/a/e$d;->a:I

    iget-object v7, v4, Lc/c/a/a/e$d;->c:Lc/c/a/a/e$c;

    iget v8, v7, Lc/c/a/a/e$c;->a:I

    iget-object v4, v4, Lc/c/a/a/e$d;->d:Lc/c/a/a/e$c;

    iget v13, v4, Lc/c/a/a/e$c;->a:I

    iget v14, v7, Lc/c/a/a/e$c;->b:I

    iget v4, v4, Lc/c/a/a/e$c;->b:I

    rsub-int/lit8 v15, v2, 0x78

    move v12, v8

    const/4 v7, 0x0

    :goto_c
    if-gt v12, v13, :cond_19

    move/from16 v17, v7

    move v11, v14

    :goto_d
    if-gt v11, v4, :cond_18

    .line 42
    iget v7, v0, Lc/c/a/a/e;->e:F

    iget v8, v0, Lc/c/a/a/e;->f:F

    int-to-float v9, v11

    mul-float v9, v9, v7

    int-to-float v10, v12

    mul-float v10, v10, v8

    .line 43
    iget v3, v0, Lc/c/a/a/e;->g:F

    iget v6, v0, Lc/c/a/a/e;->h:F

    add-float v20, v9, v7

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v20, v20, v19

    if-lez v20, :cond_10

    sub-float v7, v19, v9

    :cond_10
    add-float v20, v10, v8

    cmpl-float v20, v20, v19

    if-lez v20, :cond_11

    sub-float v8, v19, v10

    :cond_11
    mul-float v22, v3, v7

    mul-float v23, v6, v8

    new-instance v3, Landroid/graphics/RectF;

    add-float/2addr v7, v9

    add-float/2addr v8, v10

    invoke-direct {v3, v9, v10, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v6, 0x0

    cmpl-float v7, v22, v6

    if-lez v7, :cond_15

    cmpl-float v7, v23, v6

    if-lez v7, :cond_15

    iget-object v7, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v10, v7, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    iget v9, v0, Lc/c/a/a/e;->b:I

    .line 44
    new-instance v8, Lc/c/a/a/k/a;

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v7, v8

    move-object v6, v8

    move v8, v5

    move/from16 v29, v9

    move-object/from16 v9, v16

    move-object/from16 v30, v10

    move-object v10, v3

    move/from16 v16, v11

    move/from16 v11, v20

    move/from16 v31, v12

    move/from16 v12, v21

    invoke-direct/range {v7 .. v12}, Lc/c/a/a/k/a;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/RectF;ZI)V

    move-object/from16 v7, v30

    iget-object v8, v7, Lc/c/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    iget-object v9, v7, Lc/c/a/a/b;->a:Ljava/util/PriorityQueue;

    invoke-static {v9, v6}, Lc/c/a/a/b;->a(Ljava/util/PriorityQueue;Lc/c/a/a/k/a;)Lc/c/a/a/k/a;

    move-result-object v9

    if-eqz v9, :cond_12

    iget-object v6, v7, Lc/c/a/a/b;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v9}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move/from16 v6, v29

    .line 45
    iput v6, v9, Lc/c/a/a/k/a;->e:I

    .line 46
    iget-object v6, v7, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v6, v9}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v8

    const/4 v6, 0x1

    goto :goto_f

    :cond_12
    iget-object v7, v7, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-static {v7, v6}, Lc/c/a/a/b;->a(Ljava/util/PriorityQueue;Lc/c/a/a/k/a;)Lc/c/a/a/k/a;

    move-result-object v6

    if-eqz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_e

    :cond_13
    const/4 v6, 0x0

    :goto_e
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_f
    if-nez v6, :cond_14

    .line 47
    iget-object v6, v0, Lc/c/a/a/e;->a:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v7, v6, Lcom/github/barteksc/pdfviewer/PDFView;->r:Lc/c/a/a/g;

    const/16 v25, 0x0

    iget v8, v0, Lc/c/a/a/e;->b:I

    const/16 v27, 0x0

    .line 48
    iget-boolean v6, v6, Lcom/github/barteksc/pdfviewer/PDFView;->H:Z

    move-object/from16 v20, v7

    move/from16 v21, v5

    move-object/from16 v24, v3

    move/from16 v26, v8

    move/from16 v28, v6

    .line 49
    invoke-virtual/range {v20 .. v28}, Lc/c/a/a/g;->a(IFFLandroid/graphics/RectF;ZIZZ)V

    :cond_14
    iget v3, v0, Lc/c/a/a/e;->b:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v0, Lc/c/a/a/e;->b:I

    const/4 v3, 0x1

    goto :goto_10

    :catchall_1
    move-exception v0

    .line 50
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_15
    move/from16 v16, v11

    move/from16 v31, v12

    const/4 v6, 0x1

    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_16

    add-int/lit8 v17, v17, 0x1

    :cond_16
    move/from16 v3, v17

    if-lt v3, v15, :cond_17

    move v7, v3

    goto :goto_11

    :cond_17
    add-int/lit8 v11, v16, 0x1

    move/from16 v17, v3

    move/from16 v12, v31

    const/high16 v6, 0x43800000    # 256.0f

    goto/16 :goto_d

    :cond_18
    move/from16 v31, v12

    const/4 v6, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    add-int/lit8 v12, v31, 0x1

    move/from16 v7, v17

    const/high16 v6, 0x43800000    # 256.0f

    goto/16 :goto_c

    :cond_19
    const/4 v6, 0x1

    const/high16 v19, 0x3f800000    # 1.0f

    :goto_11
    add-int/2addr v2, v7

    const/16 v3, 0x78

    if-lt v2, v3, :cond_f

    .line 51
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :catchall_2
    move-exception v0

    .line 52
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_1b
    :goto_12
    return-void
.end method

.method public q(FFZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v0}, Lc/c/a/a/f;->d()F

    move-result v0

    .line 1
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v0, v0, v3

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr v0, v1

    :goto_0
    sub-float/2addr p1, v0

    goto :goto_1

    :cond_0
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    add-float v3, p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 3
    iget v0, v0, Lc/c/a/a/f;->p:F

    mul-float v0, v0, v3

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    goto :goto_2

    :cond_3
    cmpl-float v1, p2, v2

    if-lez v1, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    add-float v1, p2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    neg-float p2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    :cond_5
    :goto_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_6

    goto/16 :goto_6

    :cond_6
    cmpl-float v0, p2, v0

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v0}, Lc/c/a/a/f;->c()F

    move-result v0

    .line 5
    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    mul-float v0, v0, v3

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, v1

    :goto_3
    sub-float/2addr p2, v0

    goto :goto_4

    :cond_8
    cmpl-float v3, p2, v2

    if-lez v3, :cond_9

    const/4 p2, 0x0

    goto :goto_4

    :cond_9
    add-float v3, p2, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    goto :goto_3

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 7
    iget v0, v0, Lc/c/a/a/f;->p:F

    mul-float v0, v0, v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_b

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_5

    :cond_b
    cmpl-float v1, p1, v2

    if-lez v1, :cond_c

    const/4 p1, 0x0

    goto :goto_5

    :cond_c
    add-float v1, p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    neg-float p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    :cond_d
    :goto_5
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_e

    goto :goto_6

    :cond_e
    cmpl-float v0, p1, v0

    :goto_6
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    move-result p1

    if-eqz p3, :cond_f

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    if-eqz p2, :cond_f

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->h()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    invoke-interface {p2, p1}, Lc/c/a/a/l/a;->g(F)V

    :cond_f
    iget-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result p3

    .line 9
    iget-object p2, p2, Lc/c/a/a/j/a;->f:Lc/c/a/a/j/h;

    if-eqz p2, :cond_10

    invoke-interface {p2, p3, p1}, Lc/c/a/a/j/h;->a(IF)V

    .line 10
    :cond_10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public r()V
    .locals 3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-eqz v0, :cond_3

    .line 1
    iget v0, v0, Lc/c/a/a/f;->c:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->k(FF)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->l(I)Lc/c/a/a/n/c;

    move-result-object v1

    sget-object v2, Lc/c/a/a/n/c;->f:Lc/c/a/a/n/c;

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->u(ILc/c/a/a/n/c;)F

    move-result v0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Lc/c/a/a/a;->d(FF)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Lc/c/a/a/a;->c(FF)V

    :cond_3
    :goto_0
    return-void
.end method

.method public s()V
    .locals 10

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->P:Lcom/github/barteksc/pdfviewer/PDFView$b;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lc/c/a/a/a;

    invoke-virtual {v1}, Lc/c/a/a/a;->f()V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->h:Lc/c/a/a/d;

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v1, Lc/c/a/a/d;->i:Z

    .line 2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:Lc/c/a/a/g;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v2, v1, Lc/c/a/a/g;->e:Z

    .line 4
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->p:Lc/c/a/a/c;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->f:Lc/c/a/a/b;

    .line 5
    iget-object v4, v1, Lc/c/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, v1, Lc/c/a/a/b;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/a/a/k/a;

    .line 6
    iget-object v6, v6, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    iget-object v5, v1, Lc/c/a/a/b;->a:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->clear()V

    iget-object v5, v1, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/a/a/k/a;

    .line 8
    iget-object v6, v6, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lc/c/a/a/b;->b:Ljava/util/PriorityQueue;

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->clear()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v5, v1, Lc/c/a/a/b;->c:Ljava/util/List;

    monitor-enter v5

    :try_start_1
    iget-object v4, v1, Lc/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/a/a/k/a;

    .line 10
    iget-object v6, v6, Lc/c/a/a/k/a;->b:Landroid/graphics/Bitmap;

    .line 11
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lc/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    if-eqz v1, :cond_5

    iget-boolean v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Z

    if-eqz v4, :cond_5

    invoke-interface {v1}, Lc/c/a/a/l/a;->d()V

    :cond_5
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    if-eqz v1, :cond_8

    .line 13
    iget-object v4, v1, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    if-eqz v4, :cond_7

    iget-object v5, v1, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    if-eqz v5, :cond_7

    .line 14
    sget-object v6, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v7, v5, Lcom/shockwave/pdfium/PdfDocument;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v5, Lcom/shockwave/pdfium/PdfDocument;->b:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/shockwave/pdfium/PdfiumCore;->nativeClosePage(J)V

    goto :goto_3

    :cond_6
    iget-object v7, v5, Lcom/shockwave/pdfium/PdfDocument;->b:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    iget-wide v7, v5, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {v4, v7, v8}, Lcom/shockwave/pdfium/PdfiumCore;->nativeCloseDocument(J)V

    monitor-exit v6

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 15
    :cond_7
    :goto_4
    iput-object v0, v1, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    iput-object v0, v1, Lc/c/a/a/f;->s:[I

    .line 16
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    :cond_8
    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->r:Lc/c/a/a/g;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    iput-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:Z

    new-instance v0, Lc/c/a/a/j/a;

    invoke-direct {v0}, Lc/c/a/a/j/a;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$c;->c:Lcom/github/barteksc/pdfviewer/PDFView$c;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->o:Lcom/github/barteksc/pdfviewer/PDFView$c;

    return-void

    :catchall_1
    move-exception v0

    .line 17
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public setMaxZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->e:F

    return-void
.end method

.method public setMidZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->d:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->c:F

    return-void
.end method

.method public setNightMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->C:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/ColorMatrix;

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, p1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->u:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->u:Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public setPageFling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->M:Z

    return-void
.end method

.method public setPageSnap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->D:Z

    return-void
.end method

.method public setPositionOffset(F)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 2
    iget v2, v2, Lc/c/a/a/f;->p:F

    mul-float v2, v2, v3

    neg-float v2, v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float v2, v2, p1

    invoke-virtual {p0, v0, v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 4
    iget v0, v0, Lc/c/a/a/f;->p:F

    mul-float v0, v0, v2

    neg-float v0, v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    mul-float v0, v0, p1

    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    invoke-virtual {p0, v0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->o()V

    return-void
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Z

    return-void
.end method

.method public t(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    invoke-virtual {v0, p1}, Lc/c/a/a/f;->a(I)I

    move-result p1

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->p()V

    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->h()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Lc/c/a/a/l/a;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lc/c/a/a/l/a;->b(I)V

    :cond_1
    iget-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->t:Lc/c/a/a/j/a;

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->j:I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    .line 1
    iget v1, v1, Lc/c/a/a/f;->c:I

    .line 2
    iget-object p1, p1, Lc/c/a/a/j/a;->e:Lc/c/a/a/j/f;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, v1}, Lc/c/a/a/j/f;->a(II)V

    :cond_2
    return-void
.end method

.method public u(ILc/c/a/a/n/c;)F
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v0, p1, v1}, Lc/c/a/a/f;->g(IF)F

    move-result v0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->i:Lc/c/a/a/f;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    invoke-virtual {v2, p1, v3}, Lc/c/a/a/f;->f(IF)F

    move-result p1

    sget-object v2, Lc/c/a/a/n/c;->d:Lc/c/a/a/n/c;

    if-ne p2, v2, :cond_1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    div-float/2addr p1, p2

    :goto_1
    add-float/2addr v0, p1

    goto :goto_2

    :cond_1
    sget-object v2, Lc/c/a/a/n/c;->e:Lc/c/a/a/n/c;

    if-ne p2, v2, :cond_2

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method public v(FLandroid/graphics/PointF;)V
    .locals 4

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    div-float v0, p1, v0

    .line 1
    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->m:F

    .line 2
    iget p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->k:F

    mul-float p1, p1, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->l:F

    mul-float v1, v1, v0

    iget v2, p2, Landroid/graphics/PointF;->x:F

    mul-float v3, v2, v0

    sub-float/2addr v2, v3

    add-float/2addr v2, p1

    iget p1, p2, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, p1

    sub-float/2addr p1, v0

    add-float/2addr p1, v1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->q(FFZ)V

    return-void
.end method
