.class public Lc/c/a/a/f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final t:Ljava/lang/Object;


# instance fields
.field public a:Lcom/shockwave/pdfium/PdfDocument;

.field public b:Lcom/shockwave/pdfium/PdfiumCore;

.field public c:I

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/util/SizeF;",
            ">;"
        }
    .end annotation
.end field

.field public f:Landroid/util/SparseBooleanArray;

.field public g:Lcom/shockwave/pdfium/util/Size;

.field public h:Lcom/shockwave/pdfium/util/Size;

.field public i:Lcom/shockwave/pdfium/util/SizeF;

.field public j:Lcom/shockwave/pdfium/util/SizeF;

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public p:F

.field public final q:Lc/c/a/a/n/a;

.field public final r:Z

.field public s:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/c/a/a/f;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;Lc/c/a/a/n/a;Lcom/shockwave/pdfium/util/Size;[IZIZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/a/f;->c:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/c/a/a/f;->d:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lc/c/a/a/f;->f:Landroid/util/SparseBooleanArray;

    new-instance v1, Lcom/shockwave/pdfium/util/Size;

    invoke-direct {v1, v0, v0}, Lcom/shockwave/pdfium/util/Size;-><init>(II)V

    iput-object v1, p0, Lc/c/a/a/f;->g:Lcom/shockwave/pdfium/util/Size;

    new-instance v1, Lcom/shockwave/pdfium/util/Size;

    invoke-direct {v1, v0, v0}, Lcom/shockwave/pdfium/util/Size;-><init>(II)V

    iput-object v1, p0, Lc/c/a/a/f;->h:Lcom/shockwave/pdfium/util/Size;

    new-instance v1, Lcom/shockwave/pdfium/util/SizeF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    iput-object v1, p0, Lc/c/a/a/f;->i:Lcom/shockwave/pdfium/util/SizeF;

    new-instance v1, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v1, v2, v2}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    iput-object v1, p0, Lc/c/a/a/f;->j:Lcom/shockwave/pdfium/util/SizeF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/c/a/a/f;->n:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    iput v2, p0, Lc/c/a/a/f;->p:F

    iput-object p1, p0, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    iput-object p2, p0, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    iput-object p3, p0, Lc/c/a/a/f;->q:Lc/c/a/a/n/a;

    iput-object p5, p0, Lc/c/a/a/f;->s:[I

    iput-boolean p6, p0, Lc/c/a/a/f;->k:Z

    iput p7, p0, Lc/c/a/a/f;->l:I

    iput-boolean p8, p0, Lc/c/a/a/f;->m:Z

    iput-boolean p9, p0, Lc/c/a/a/f;->r:Z

    if-eqz p5, :cond_0

    .line 1
    array-length p1, p5

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-wide p5, p2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {p1, p5, p6}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageCount(J)I

    move-result p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    iput p1, p0, Lc/c/a/a/f;->c:I

    :goto_1
    iget p1, p0, Lc/c/a/a/f;->c:I

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lc/c/a/a/f;->b:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object p2, p0, Lc/c/a/a/f;->a:Lcom/shockwave/pdfium/PdfDocument;

    invoke-virtual {p0, v0}, Lc/c/a/a/f;->b(I)I

    move-result p3

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p5, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter p5

    :try_start_1
    iget-wide p6, p2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    iget p2, p1, Lcom/shockwave/pdfium/PdfiumCore;->a:I

    invoke-virtual {p1, p6, p7, p3, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageSizeByIndex(JII)Lcom/shockwave/pdfium/util/Size;

    move-result-object p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    iget p2, p1, Lcom/shockwave/pdfium/util/Size;->a:I

    .line 6
    iget-object p3, p0, Lc/c/a/a/f;->g:Lcom/shockwave/pdfium/util/Size;

    .line 7
    iget p3, p3, Lcom/shockwave/pdfium/util/Size;->a:I

    if-le p2, p3, :cond_1

    .line 8
    iput-object p1, p0, Lc/c/a/a/f;->g:Lcom/shockwave/pdfium/util/Size;

    .line 9
    :cond_1
    iget p2, p1, Lcom/shockwave/pdfium/util/Size;->b:I

    .line 10
    iget-object p3, p0, Lc/c/a/a/f;->h:Lcom/shockwave/pdfium/util/Size;

    .line 11
    iget p3, p3, Lcom/shockwave/pdfium/util/Size;->b:I

    if-le p2, p3, :cond_2

    .line 12
    iput-object p1, p0, Lc/c/a/a/f;->h:Lcom/shockwave/pdfium/util/Size;

    :cond_2
    iget-object p2, p0, Lc/c/a/a/f;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 14
    :cond_3
    invoke-virtual {p0, p4}, Lc/c/a/a/f;->k(Lcom/shockwave/pdfium/util/Size;)V

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public a(I)I
    .locals 2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lc/c/a/a/f;->s:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_2

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 1
    :cond_1
    iget v0, p0, Lc/c/a/a/f;->c:I

    if-lt p1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_2
    return p1
.end method

.method public b(I)I
    .locals 3

    iget-object v0, p0, Lc/c/a/a/f;->s:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    aget v0, v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v0, p1

    :goto_1
    if-ltz v0, :cond_4

    .line 1
    iget v2, p0, Lc/c/a/a/f;->c:I

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public c()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/a/f;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/f;->j:Lcom/shockwave/pdfium/util/SizeF;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/a/f;->i:Lcom/shockwave/pdfium/util/SizeF;

    .line 2
    :goto_0
    iget v0, v0, Lcom/shockwave/pdfium/util/SizeF;->b:F

    return v0
.end method

.method public d()F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/a/f;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/f;->j:Lcom/shockwave/pdfium/util/SizeF;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/a/f;->i:Lcom/shockwave/pdfium/util/SizeF;

    .line 2
    :goto_0
    iget v0, v0, Lcom/shockwave/pdfium/util/SizeF;->a:F

    return v0
.end method

.method public e(FF)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lc/c/a/a/f;->c:I

    if-ge v1, v3, :cond_2

    .line 2
    iget-object v3, p0, Lc/c/a/a/f;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, p2

    .line 3
    iget-boolean v4, p0, Lc/c/a/a/f;->m:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1

    :cond_0
    iget v4, p0, Lc/c/a/a/f;->l:I

    int-to-float v4, v4

    :goto_1
    mul-float v4, v4, p2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public f(IF)F
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iget-boolean v0, p0, Lc/c/a/a/f;->k:Z

    if-eqz v0, :cond_0

    .line 1
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    :goto_0
    mul-float p1, p1, p2

    return p1
.end method

.method public g(IF)F
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/a/a/f;->b(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lc/c/a/a/f;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p1, p1, p2

    return p1
.end method

.method public h(I)Lcom/shockwave/pdfium/util/SizeF;
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/a/a/f;->b(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance p1, Lcom/shockwave/pdfium/util/SizeF;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shockwave/pdfium/util/SizeF;

    return-object p1
.end method

.method public i(IF)Lcom/shockwave/pdfium/util/SizeF;
    .locals 2

    invoke-virtual {p0, p1}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    .line 1
    iget v1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    mul-float v1, v1, p2

    .line 2
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    mul-float p1, p1, p2

    .line 3
    invoke-direct {v0, v1, p1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public j(IF)F
    .locals 2

    invoke-virtual {p0, p1}, Lc/c/a/a/f;->h(I)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iget-boolean v0, p0, Lc/c/a/a/f;->k:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/f;->d()F

    move-result v0

    .line 1
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    :goto_0
    sub-float/2addr v0, p1

    mul-float v0, v0, p2

    div-float/2addr v0, v1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/f;->c()F

    move-result v0

    .line 3
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    goto :goto_0
.end method

.method public k(Lcom/shockwave/pdfium/util/Size;)V
    .locals 8

    iget-object v0, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lc/c/a/a/n/b;

    iget-object v2, p0, Lc/c/a/a/f;->q:Lc/c/a/a/n/a;

    iget-object v3, p0, Lc/c/a/a/f;->g:Lcom/shockwave/pdfium/util/Size;

    iget-object v4, p0, Lc/c/a/a/f;->h:Lcom/shockwave/pdfium/util/Size;

    iget-boolean v6, p0, Lc/c/a/a/f;->r:Z

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lc/c/a/a/n/b;-><init>(Lc/c/a/a/n/a;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Z)V

    .line 1
    iget-object v1, v0, Lc/c/a/a/n/b;->e:Lcom/shockwave/pdfium/util/SizeF;

    .line 2
    iput-object v1, p0, Lc/c/a/a/f;->j:Lcom/shockwave/pdfium/util/SizeF;

    .line 3
    iget-object v1, v0, Lc/c/a/a/n/b;->f:Lcom/shockwave/pdfium/util/SizeF;

    .line 4
    iput-object v1, p0, Lc/c/a/a/f;->i:Lcom/shockwave/pdfium/util/SizeF;

    iget-object v1, p0, Lc/c/a/a/f;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shockwave/pdfium/util/Size;

    iget-object v4, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    .line 5
    iget v5, v2, Lcom/shockwave/pdfium/util/Size;->a:I

    if-lez v5, :cond_5

    .line 6
    iget v6, v2, Lcom/shockwave/pdfium/util/Size;->b:I

    if-gtz v6, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    iget-boolean v3, v0, Lc/c/a/a/n/b;->i:Z

    if-eqz v3, :cond_1

    iget-object v5, v0, Lc/c/a/a/n/b;->d:Lcom/shockwave/pdfium/util/Size;

    .line 8
    iget v5, v5, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float v5, v5

    goto :goto_1

    :cond_1
    int-to-float v5, v5

    .line 9
    iget v7, v0, Lc/c/a/a/n/b;->g:F

    mul-float v5, v5, v7

    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, v0, Lc/c/a/a/n/b;->d:Lcom/shockwave/pdfium/util/Size;

    .line 10
    iget v3, v3, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float v3, v3

    goto :goto_2

    :cond_2
    int-to-float v3, v6

    .line 11
    iget v6, v0, Lc/c/a/a/n/b;->h:F

    mul-float v3, v3, v6

    :goto_2
    iget-object v6, v0, Lc/c/a/a/n/b;->a:Lc/c/a/a/n/a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    invoke-virtual {v0, v2, v5}, Lc/c/a/a/n/b;->c(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v2, v5, v3}, Lc/c/a/a/n/b;->a(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2, v3}, Lc/c/a/a/n/b;->b(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object v2

    goto :goto_4

    :cond_5
    :goto_3
    new-instance v2, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v2, v3, v3}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    .line 12
    :goto_4
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lc/c/a/a/f;->m:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 13
    iget-object v0, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 14
    :goto_5
    iget v2, p0, Lc/c/a/a/f;->c:I

    if-ge v0, v2, :cond_9

    .line 15
    iget-object v2, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shockwave/pdfium/util/SizeF;

    iget-boolean v4, p0, Lc/c/a/a/f;->k:Z

    if-eqz v4, :cond_7

    .line 16
    iget v4, p1, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float v4, v4

    .line 17
    iget v2, v2, Lcom/shockwave/pdfium/util/SizeF;->b:F

    goto :goto_6

    .line 18
    :cond_7
    iget v4, p1, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float v4, v4

    .line 19
    iget v2, v2, Lcom/shockwave/pdfium/util/SizeF;->a:F

    :goto_6
    sub-float/2addr v4, v2

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 21
    iget v4, p0, Lc/c/a/a/f;->c:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_8

    .line 22
    iget v4, p0, Lc/c/a/a/f;->l:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    :cond_8
    iget-object v4, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 23
    :goto_7
    iget v2, p0, Lc/c/a/a/f;->c:I

    if-ge p1, v2, :cond_d

    .line 24
    iget-object v2, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shockwave/pdfium/util/SizeF;

    iget-boolean v4, p0, Lc/c/a/a/f;->k:Z

    if-eqz v4, :cond_a

    .line 25
    iget v2, v2, Lcom/shockwave/pdfium/util/SizeF;->b:F

    goto :goto_8

    .line 26
    :cond_a
    iget v2, v2, Lcom/shockwave/pdfium/util/SizeF;->a:F

    :goto_8
    add-float/2addr v0, v2

    .line 27
    iget-boolean v2, p0, Lc/c/a/a/f;->m:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v2, v0

    move v0, v2

    goto :goto_9

    .line 28
    :cond_b
    iget v2, p0, Lc/c/a/a/f;->c:I

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_c

    .line 29
    iget v2, p0, Lc/c/a/a/f;->l:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :cond_c
    :goto_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_d
    iput v0, p0, Lc/c/a/a/f;->p:F

    .line 30
    iget-object p1, p0, Lc/c/a/a/f;->n:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 31
    :goto_a
    iget p1, p0, Lc/c/a/a/f;->c:I

    if-ge v1, p1, :cond_12

    .line 32
    iget-object p1, p0, Lc/c/a/a/f;->e:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shockwave/pdfium/util/SizeF;

    iget-boolean v0, p0, Lc/c/a/a/f;->k:Z

    if-eqz v0, :cond_e

    .line 33
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    goto :goto_b

    .line 34
    :cond_e
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    .line 35
    :goto_b
    iget-boolean v0, p0, Lc/c/a/a/f;->m:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v3

    if-nez v1, :cond_f

    iget v3, p0, Lc/c/a/a/f;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    goto :goto_c

    .line 36
    :cond_f
    iget v3, p0, Lc/c/a/a/f;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_10

    .line 37
    iget v3, p0, Lc/c/a/a/f;->l:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    :cond_10
    :goto_c
    iget-object v3, p0, Lc/c/a/a/f;->n:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lc/c/a/a/f;->o:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v2

    add-float/2addr v3, p1

    add-float/2addr v3, v0

    goto :goto_d

    :cond_11
    iget-object v0, p0, Lc/c/a/a/f;->n:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lc/c/a/a/f;->l:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr p1, v3

    move v3, p1

    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_12
    return-void
.end method
