.class public Lb/g/a/i/m/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/i/m/b$a;,
        Lb/g/a/i/m/b$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/g/a/i/m/b$a;

.field public c:Lb/g/a/i/e;


# direct methods
.method public constructor <init>(Lb/g/a/i/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g/a/i/m/b;->a:Ljava/util/ArrayList;

    new-instance v0, Lb/g/a/i/m/b$a;

    invoke-direct {v0}, Lb/g/a/i/m/b$a;-><init>()V

    iput-object v0, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    iput-object p1, p0, Lb/g/a/i/m/b;->c:Lb/g/a/i/e;

    return-void
.end method


# virtual methods
.method public final a(Lb/g/a/i/m/b$b;Lb/g/a/i/d;I)Z
    .locals 6

    sget-object v0, Lb/g/a/i/d$a;->c:Lb/g/a/i/d$a;

    iget-object v1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    invoke-virtual {p2}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v2

    iput-object v2, v1, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    iget-object v1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    invoke-virtual {p2}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v2

    iput-object v2, v1, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    iget-object v1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    invoke-virtual {p2}, Lb/g/a/i/d;->w()I

    move-result v2

    iput v2, v1, Lb/g/a/i/m/b$a;->c:I

    iget-object v1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    invoke-virtual {p2}, Lb/g/a/i/d;->q()I

    move-result v2

    iput v2, v1, Lb/g/a/i/m/b$a;->d:I

    iget-object v1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lb/g/a/i/m/b$a;->i:Z

    iput p3, v1, Lb/g/a/i/m/b$a;->j:I

    iget-object p3, v1, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    sget-object v3, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    const/4 v4, 0x1

    if-ne p3, v3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v5, v1, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    if-ne v5, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x0

    if-eqz p3, :cond_2

    iget p3, p2, Lb/g/a/i/d;->Z:F

    cmpl-float p3, p3, v5

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    iget v3, p2, Lb/g/a/i/d;->Z:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x4

    if-eqz p3, :cond_4

    iget-object p3, p2, Lb/g/a/i/d;->s:[I

    aget p3, p3, v2

    if-ne p3, v5, :cond_4

    iput-object v0, v1, Lb/g/a/i/m/b$a;->a:Lb/g/a/i/d$a;

    :cond_4
    if-eqz v3, :cond_5

    iget-object p3, p2, Lb/g/a/i/d;->s:[I

    aget p3, p3, v4

    if-ne p3, v5, :cond_5

    iput-object v0, v1, Lb/g/a/i/m/b$a;->b:Lb/g/a/i/d$a;

    :cond_5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b(Lb/g/a/i/d;Lb/g/a/i/m/b$a;)V

    iget-object p1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    iget p1, p1, Lb/g/a/i/m/b$a;->e:I

    invoke-virtual {p2, p1}, Lb/g/a/i/d;->T(I)V

    iget-object p1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    iget p1, p1, Lb/g/a/i/m/b$a;->f:I

    invoke-virtual {p2, p1}, Lb/g/a/i/d;->O(I)V

    iget-object p1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    iget-boolean p3, p1, Lb/g/a/i/m/b$a;->h:Z

    .line 1
    iput-boolean p3, p2, Lb/g/a/i/d;->F:Z

    .line 2
    iget p1, p1, Lb/g/a/i/m/b$a;->g:I

    invoke-virtual {p2, p1}, Lb/g/a/i/d;->L(I)V

    iget-object p1, p0, Lb/g/a/i/m/b;->b:Lb/g/a/i/m/b$a;

    iput v2, p1, Lb/g/a/i/m/b$a;->j:I

    iget-boolean p1, p1, Lb/g/a/i/m/b$a;->i:Z

    return p1
.end method

.method public final b(Lb/g/a/i/e;III)V
    .locals 3

    .line 1
    iget v0, p1, Lb/g/a/i/d;->i0:I

    .line 2
    iget v1, p1, Lb/g/a/i/d;->j0:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lb/g/a/i/d;->R(I)V

    invoke-virtual {p1, v2}, Lb/g/a/i/d;->Q(I)V

    .line 4
    iput p3, p1, Lb/g/a/i/d;->X:I

    iget v2, p1, Lb/g/a/i/d;->i0:I

    if-ge p3, v2, :cond_0

    iput v2, p1, Lb/g/a/i/d;->X:I

    .line 5
    :cond_0
    iput p4, p1, Lb/g/a/i/d;->Y:I

    iget p3, p1, Lb/g/a/i/d;->j0:I

    if-ge p4, p3, :cond_1

    iput p3, p1, Lb/g/a/i/d;->Y:I

    .line 6
    :cond_1
    invoke-virtual {p1, v0}, Lb/g/a/i/d;->R(I)V

    invoke-virtual {p1, v1}, Lb/g/a/i/d;->Q(I)V

    iget-object p1, p0, Lb/g/a/i/m/b;->c:Lb/g/a/i/e;

    .line 7
    iput p2, p1, Lb/g/a/i/e;->P0:I

    .line 8
    invoke-virtual {p1}, Lb/g/a/i/e;->W()V

    return-void
.end method

.method public c(Lb/g/a/i/e;)V
    .locals 5

    iget-object v0, p0, Lb/g/a/i/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Lb/g/a/i/l;->M0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    invoke-virtual {v2}, Lb/g/a/i/d;->r()Lb/g/a/i/d$a;

    move-result-object v3

    sget-object v4, Lb/g/a/i/d$a;->e:Lb/g/a/i/d$a;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lb/g/a/i/d;->v()Lb/g/a/i/d$a;

    move-result-object v3

    if-ne v3, v4, :cond_1

    :cond_0
    iget-object v3, p0, Lb/g/a/i/m/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lb/g/a/i/e;->e0()V

    return-void
.end method
