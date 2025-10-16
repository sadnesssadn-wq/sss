.class public Lb/g/a/i/k;
.super Lb/g/a/i/i;
.source ""


# instance fields
.field public O0:I

.field public P0:I

.field public Q0:I

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:Z

.field public V0:I

.field public W0:I

.field public X0:Lb/g/a/i/m/b$a;

.field public Y0:Lb/g/a/i/m/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/g/a/i/i;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/k;->O0:I

    iput v0, p0, Lb/g/a/i/k;->P0:I

    iput v0, p0, Lb/g/a/i/k;->Q0:I

    iput v0, p0, Lb/g/a/i/k;->R0:I

    iput v0, p0, Lb/g/a/i/k;->S0:I

    iput v0, p0, Lb/g/a/i/k;->T0:I

    iput-boolean v0, p0, Lb/g/a/i/k;->U0:Z

    iput v0, p0, Lb/g/a/i/k;->V0:I

    iput v0, p0, Lb/g/a/i/k;->W0:I

    new-instance v0, Lb/g/a/i/m/b$a;

    invoke-direct {v0}, Lb/g/a/i/m/b$a;-><init>()V

    iput-object v0, p0, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/i/k;->Y0:Lb/g/a/i/m/b$b;

    return-void
.end method


# virtual methods
.method public X()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/g/a/i/i;->N0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1
    iput-boolean v2, v1, Lb/g/a/i/d;->H:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Y(IIII)V
    .locals 0

    return-void
.end method

.method public Z(Lb/g/a/i/d;Lb/g/a/i/d$a;ILb/g/a/i/d$a;I)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lb/g/a/i/k;->Y0:Lb/g/a/i/m/b$b;

    if-nez v0, :cond_0

    .line 1
    iget-object v1, p0, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    if-eqz v1, :cond_0

    .line 2
    check-cast v1, Lb/g/a/i/e;

    .line 3
    iget-object v0, v1, Lb/g/a/i/e;->Q0:Lb/g/a/i/m/b$b;

    .line 4
    iput-object v0, p0, Lb/g/a/i/k;->Y0:Lb/g/a/i/m/b$b;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iput-object p2, v1, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    iput-object p4, v1, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    iput p3, v1, Lb/g/a/i/m/b$a;->c:I

    iput p5, v1, Lb/g/a/i/m/b$a;->d:I

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b(Lb/g/a/i/d;Lb/g/a/i/m/b$a;)V

    iget-object p2, p0, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iget p2, p2, Lb/g/a/i/m/b$a;->e:I

    invoke-virtual {p1, p2}, Lb/g/a/i/d;->T(I)V

    iget-object p2, p0, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iget p2, p2, Lb/g/a/i/m/b$a;->f:I

    invoke-virtual {p1, p2}, Lb/g/a/i/d;->O(I)V

    iget-object p2, p0, Lb/g/a/i/k;->X0:Lb/g/a/i/m/b$a;

    iget-boolean p3, p2, Lb/g/a/i/m/b$a;->h:Z

    .line 5
    iput-boolean p3, p1, Lb/g/a/i/d;->F:Z

    .line 6
    iget p2, p2, Lb/g/a/i/m/b$a;->g:I

    invoke-virtual {p1, p2}, Lb/g/a/i/d;->L(I)V

    return-void
.end method

.method public a(Lb/g/a/i/e;)V
    .locals 0

    invoke-virtual {p0}, Lb/g/a/i/k;->X()V

    return-void
.end method
