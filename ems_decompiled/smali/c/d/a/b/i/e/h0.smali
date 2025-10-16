.class public final Lc/d/a/b/i/e/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/a4;


# instance fields
.field public final a:Lc/d/a/b/i/e/f0;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/f0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    .line 2
    iput-object p1, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    iput-object p0, p1, Lc/d/a/b/i/e/f0;->a:Lc/d/a/b/i/e/h0;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/i/e/f0;->B(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/f0;->I(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lc/d/a/b/i/e/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    check-cast p2, Lc/d/a/b/i/e/y;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/f0;->q(ILc/d/a/b/i/e/y;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    check-cast p2, Lc/d/a/b/i/e/d2;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/f0;->r(ILc/d/a/b/i/e/d2;)V

    return-void
.end method

.method public final d(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    check-cast p2, Lc/d/a/b/i/e/d2;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/i/e/f0;->h(ILc/d/a/b/i/e/d2;Lc/d/a/b/i/e/t2;)V

    return-void
.end method

.method public final e(IJ)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    .line 1
    invoke-static {p2, p3}, Lc/d/a/b/i/e/f0;->R(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/i/e/f0;->e(IJ)V

    return-void
.end method

.method public final f(ILjava/lang/Object;Lc/d/a/b/i/e/t2;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    check-cast p2, Lc/d/a/b/i/e/d2;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/i/e/f0;->p(II)V

    iget-object v1, v0, Lc/d/a/b/i/e/f0;->a:Lc/d/a/b/i/e/h0;

    invoke-interface {p3, p2, v1}, Lc/d/a/b/i/e/t2;->a(Ljava/lang/Object;Lc/d/a/b/i/e/a4;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/f0;->p(II)V

    return-void
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/h0;->a:Lc/d/a/b/i/e/f0;

    .line 1
    invoke-static {p2}, Lc/d/a/b/i/e/f0;->b0(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/f0;->D(II)V

    return-void
.end method
