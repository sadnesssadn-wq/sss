.class public abstract Lc/c/b/a/d/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/a/g/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/c/b/a/d/o;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/b/a/g/b/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Lc/c/b/a/c/j$a;

.field public e:Z

.field public transient f:Lc/c/b/a/e/e;

.field public g:Lc/c/b/a/c/e$b;

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Lc/c/b/a/k/e;

.field public m:F

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    iput-object v0, p0, Lc/c/b/a/d/f;->b:Ljava/util/List;

    const-string v0, "DataSet"

    iput-object v0, p0, Lc/c/b/a/d/f;->c:Ljava/lang/String;

    sget-object v0, Lc/c/b/a/c/j$a;->c:Lc/c/b/a/c/j$a;

    iput-object v0, p0, Lc/c/b/a/d/f;->d:Lc/c/b/a/c/j$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/b/a/d/f;->e:Z

    sget-object v1, Lc/c/b/a/c/e$b;->e:Lc/c/b/a/c/e$b;

    iput-object v1, p0, Lc/c/b/a/d/f;->g:Lc/c/b/a/c/e$b;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lc/c/b/a/d/f;->h:F

    iput v1, p0, Lc/c/b/a/d/f;->i:F

    iput-boolean v0, p0, Lc/c/b/a/d/f;->j:Z

    iput-boolean v0, p0, Lc/c/b/a/d/f;->k:Z

    new-instance v1, Lc/c/b/a/k/e;

    invoke-direct {v1}, Lc/c/b/a/k/e;-><init>()V

    iput-object v1, p0, Lc/c/b/a/d/f;->l:Lc/c/b/a/k/e;

    const/high16 v1, 0x41880000    # 17.0f

    iput v1, p0, Lc/c/b/a/d/f;->m:F

    iput-boolean v0, p0, Lc/c/b/a/d/f;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/d/f;->b:Ljava/util/List;

    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    const/16 v1, 0x8c

    const/16 v2, 0xea

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/c/b/a/d/f;->b:Ljava/util/List;

    const/high16 v1, -0x1000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iput-object p1, p0, Lc/c/b/a/d/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B(F)V
    .locals 0

    invoke-static {p1}, Lc/c/b/a/k/i;->d(F)F

    move-result p1

    iput p1, p0, Lc/c/b/a/d/f;->m:F

    return-void
.end method

.method public B0()I
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public D0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/f;->e:Z

    return v0
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public G0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/f;->i:F

    return v0
.end method

.method public K()Landroid/graphics/DashPathEffect;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public K0(I)Lc/c/b/a/i/a;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public O0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/f;->h:F

    return v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/f;->k:Z

    return v0
.end method

.method public R()Lc/c/b/a/c/e$b;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/f;->g:Lc/c/b/a/c/e$b;

    return-object v0
.end method

.method public S0(I)I
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public T0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lc/c/b/a/d/f;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public V()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/b/a/i/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Landroid/graphics/Typeface;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/f;->f:Lc/c/b/a/e/e;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/f;->n:Z

    return v0
.end method

.method public j0()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/b/a/d/f;->j:Z

    return v0
.end method

.method public o0()Lc/c/b/a/i/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r0(I)V
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lc/c/b/a/d/f;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t(Lc/c/b/a/e/e;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lc/c/b/a/d/f;->f:Lc/c/b/a/e/e;

    return-void
.end method

.method public t0()Lc/c/b/a/c/j$a;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/f;->d:Lc/c/b/a/c/j$a;

    return-object v0
.end method

.method public u0()F
    .locals 1

    iget v0, p0, Lc/c/b/a/d/f;->m:F

    return v0
.end method

.method public v0(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/c/b/a/d/f;->j:Z

    return-void
.end method

.method public w(I)I
    .locals 2

    iget-object v0, p0, Lc/c/b/a/d/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public x0()Lc/c/b/a/e/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/b/a/d/f;->f:Lc/c/b/a/e/e;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    sget-object v0, Lc/c/b/a/k/i;->h:Lc/c/b/a/e/e;

    :cond_1
    return-object v0
.end method

.method public z0()Lc/c/b/a/k/e;
    .locals 1

    iget-object v0, p0, Lc/c/b/a/d/f;->l:Lc/c/b/a/k/e;

    return-object v0
.end method
