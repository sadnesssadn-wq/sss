.class public Lc/c/b/a/f/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:Lc/c/b/a/c/j$a;

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>(FFFFIILc/c/b/a/c/j$a;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lc/c/b/a/f/d;-><init>(FFFFILc/c/b/a/c/j$a;)V

    iput p6, p0, Lc/c/b/a/f/d;->g:I

    return-void
.end method

.method public constructor <init>(FFFFILc/c/b/a/c/j$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lc/c/b/a/f/d;->a:F

    iput v0, p0, Lc/c/b/a/f/d;->b:F

    const/4 v0, -0x1

    iput v0, p0, Lc/c/b/a/f/d;->e:I

    iput v0, p0, Lc/c/b/a/f/d;->g:I

    iput p1, p0, Lc/c/b/a/f/d;->a:F

    iput p2, p0, Lc/c/b/a/f/d;->b:F

    iput p3, p0, Lc/c/b/a/f/d;->c:F

    iput p4, p0, Lc/c/b/a/f/d;->d:F

    iput p5, p0, Lc/c/b/a/f/d;->f:I

    iput-object p6, p0, Lc/c/b/a/f/d;->h:Lc/c/b/a/c/j$a;

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/a/f/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lc/c/b/a/f/d;->f:I

    iget v2, p1, Lc/c/b/a/f/d;->f:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lc/c/b/a/f/d;->a:F

    iget v2, p1, Lc/c/b/a/f/d;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lc/c/b/a/f/d;->g:I

    iget v2, p1, Lc/c/b/a/f/d;->g:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lc/c/b/a/f/d;->e:I

    iget p1, p1, Lc/c/b/a/f/d;->e:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Highlight, x: "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/c/b/a/f/d;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/b/a/f/d;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", dataSetIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/b/a/f/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackIndex (only stacked barentry): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/b/a/f/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
