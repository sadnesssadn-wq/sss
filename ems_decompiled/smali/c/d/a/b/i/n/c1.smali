.class public final Lc/d/a/b/i/n/c1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/a5;


# instance fields
.field public final a:Lc/d/a/b/i/n/a1;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/a1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    .line 2
    iput-object p1, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    iput-object p0, p1, Lc/d/a/b/i/n/a1;->a:Lc/d/a/b/i/n/c1;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/i/n/a1;->z(IJ)V

    return-void
.end method

.method public final b(IF)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/n/a1;->G(II)V

    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lc/d/a/b/i/n/t0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    check-cast p2, Lc/d/a/b/i/n/t0;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/n/a1;->t(ILc/d/a/b/i/n/t0;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    check-cast p2, Lc/d/a/b/i/n/c3;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/n/a1;->i(ILc/d/a/b/i/n/c3;)V

    return-void
.end method

.method public final d(ILjava/lang/Object;Lc/d/a/b/i/n/s3;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    check-cast p2, Lc/d/a/b/i/n/c3;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/i/n/a1;->j(ILc/d/a/b/i/n/c3;Lc/d/a/b/i/n/s3;)V

    return-void
.end method

.method public final e(ILjava/lang/Object;Lc/d/a/b/i/n/s3;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    check-cast p2, Lc/d/a/b/i/n/c3;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/i/n/a1;->f(II)V

    iget-object v1, v0, Lc/d/a/b/i/n/a1;->a:Lc/d/a/b/i/n/c1;

    invoke-interface {p3, p2, v1}, Lc/d/a/b/i/n/s3;->d(Ljava/lang/Object;Lc/d/a/b/i/n/a5;)V

    const/4 p2, 0x4

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/n/a1;->f(II)V

    return-void
.end method

.method public final f(IJ)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    .line 1
    invoke-static {p2, p3}, Lc/d/a/b/i/n/a1;->R(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lc/d/a/b/i/n/a1;->g(IJ)V

    return-void
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/c1;->a:Lc/d/a/b/i/n/a1;

    .line 1
    invoke-static {p2}, Lc/d/a/b/i/n/a1;->V(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/n/a1;->y(II)V

    return-void
.end method
