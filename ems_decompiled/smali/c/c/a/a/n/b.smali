.class public Lc/c/a/a/n/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lc/c/a/a/n/a;

.field public final b:Lcom/shockwave/pdfium/util/Size;

.field public final c:Lcom/shockwave/pdfium/util/Size;

.field public final d:Lcom/shockwave/pdfium/util/Size;

.field public e:Lcom/shockwave/pdfium/util/SizeF;

.field public f:Lcom/shockwave/pdfium/util/SizeF;

.field public g:F

.field public h:F

.field public i:Z


# direct methods
.method public constructor <init>(Lc/c/a/a/n/a;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Lcom/shockwave/pdfium/util/Size;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/n/b;->a:Lc/c/a/a/n/a;

    iput-object p2, p0, Lc/c/a/a/n/b;->b:Lcom/shockwave/pdfium/util/Size;

    iput-object p3, p0, Lc/c/a/a/n/b;->c:Lcom/shockwave/pdfium/util/Size;

    iput-object p4, p0, Lc/c/a/a/n/b;->d:Lcom/shockwave/pdfium/util/Size;

    iput-boolean p5, p0, Lc/c/a/a/n/b;->i:Z

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p5, 0x1

    if-eq p1, p5, :cond_1

    const/4 p5, 0x2

    if-eq p1, p5, :cond_0

    .line 2
    iget p1, p4, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, p2, p1}, Lc/c/a/a/n/b;->c(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/n/b;->e:Lcom/shockwave/pdfium/util/SizeF;

    .line 4
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    .line 5
    iget p2, p2, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 6
    iput p1, p0, Lc/c/a/a/n/b;->g:F

    .line 7
    iget p2, p3, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 8
    invoke-virtual {p0, p3, p2}, Lc/c/a/a/n/b;->c(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/n/b;->f:Lcom/shockwave/pdfium/util/SizeF;

    goto :goto_0

    .line 9
    :cond_0
    iget p1, p4, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p1, p1

    .line 10
    iget p5, p4, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p5, p5

    .line 11
    invoke-virtual {p0, p2, p1, p5}, Lc/c/a/a/n/b;->a(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    .line 12
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    .line 13
    iget p5, p2, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p5, p5

    div-float/2addr p1, p5

    iget p5, p3, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p5, p5

    mul-float p5, p5, p1

    .line 14
    iget p1, p4, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p1, p1

    .line 15
    invoke-virtual {p0, p3, p5, p1}, Lc/c/a/a/n/b;->a(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/n/b;->f:Lcom/shockwave/pdfium/util/SizeF;

    .line 16
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    .line 17
    iget p3, p3, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 18
    iput p1, p0, Lc/c/a/a/n/b;->h:F

    .line 19
    iget p3, p4, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p3, p3

    .line 20
    iget p4, p2, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p4, p4

    mul-float p4, p4, p1

    .line 21
    invoke-virtual {p0, p2, p3, p4}, Lc/c/a/a/n/b;->a(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/n/b;->e:Lcom/shockwave/pdfium/util/SizeF;

    .line 22
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->a:F

    .line 23
    iget p2, p2, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 24
    iput p1, p0, Lc/c/a/a/n/b;->g:F

    goto :goto_0

    .line 25
    :cond_1
    iget p1, p4, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p1, p1

    .line 26
    invoke-virtual {p0, p3, p1}, Lc/c/a/a/n/b;->b(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/n/b;->f:Lcom/shockwave/pdfium/util/SizeF;

    .line 27
    iget p1, p1, Lcom/shockwave/pdfium/util/SizeF;->b:F

    .line 28
    iget p3, p3, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    .line 29
    iput p1, p0, Lc/c/a/a/n/b;->h:F

    .line 30
    iget p3, p2, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p3, p3

    mul-float p3, p3, p1

    .line 31
    invoke-virtual {p0, p2, p3}, Lc/c/a/a/n/b;->b(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/n/b;->e:Lcom/shockwave/pdfium/util/SizeF;

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/shockwave/pdfium/util/Size;FF)Lcom/shockwave/pdfium/util/SizeF;
    .locals 3

    .line 1
    iget v0, p1, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float v0, v0

    .line 2
    iget p1, p1, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float p1, p2, v0

    float-to-double v1, p1

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p1, v1

    cmpl-float v1, p1, p3

    if-lez v1, :cond_0

    mul-float v0, v0, p3

    float-to-double p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p2, p1

    goto :goto_0

    :cond_0
    move p3, p1

    :goto_0
    new-instance p1, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {p1, p2, p3}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object p1
.end method

.method public final b(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;
    .locals 2

    .line 1
    iget v0, p1, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float v0, v0

    .line 2
    iget p1, p1, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    div-float p1, p2, p1

    float-to-double v0, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v0, p1, p2}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public final c(Lcom/shockwave/pdfium/util/Size;F)Lcom/shockwave/pdfium/util/SizeF;
    .locals 2

    .line 1
    iget v0, p1, Lcom/shockwave/pdfium/util/Size;->a:I

    int-to-float v0, v0

    .line 2
    iget p1, p1, Lcom/shockwave/pdfium/util/Size;->b:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    div-float p1, p2, v0

    float-to-double v0, p1

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    new-instance v0, Lcom/shockwave/pdfium/util/SizeF;

    invoke-direct {v0, p2, p1}, Lcom/shockwave/pdfium/util/SizeF;-><init>(FF)V

    return-object v0
.end method
