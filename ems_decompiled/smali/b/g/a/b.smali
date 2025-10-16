.class public Lb/g/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/g/a/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/b$a;
    }
.end annotation


# instance fields
.field public a:Lb/g/a/g;

.field public b:F

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lb/g/a/b$a;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/b;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g/a/b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/a/b;->e:Z

    return-void
.end method

.method public constructor <init>(Lb/g/a/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/b;->b:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g/a/b;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/a/b;->e:Z

    new-instance v0, Lb/g/a/a;

    invoke-direct {v0, p0, p1}, Lb/g/a/a;-><init>(Lb/g/a/b;Lb/g/a/c;)V

    iput-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    return-void
.end method


# virtual methods
.method public a(Lb/g/a/d;[Z)Lb/g/a/g;
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lb/g/a/b;->i([ZLb/g/a/g;)Lb/g/a/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lb/g/a/g;)V
    .locals 2

    iget v0, p1, Lb/g/a/g;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x49742400    # 1000000.0f

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const v0, 0x4e6e6b28    # 1.0E9f

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    const v0, 0x5368d4a5    # 1.0E12f

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v1, p1, v0}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    return-void
.end method

.method public c(Lb/g/a/d;I)Lb/g/a/b;
    .locals 3

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Lb/g/a/d;->k(ILjava/lang/String;)Lb/g/a/g;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Lb/g/a/d;->k(ILjava/lang/String;)Lb/g/a/g;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {v0, p1, p2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    return-object p0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0}, Lb/g/a/b$a;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/b;->b:F

    return-void
.end method

.method public d(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;F)Lb/g/a/b;
    .locals 2

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, v0}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p3, p5}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    neg-float p2, p5

    invoke-interface {p1, p4, p2}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    return-object p0
.end method

.method public e(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;I)Lb/g/a/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Lb/g/a/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p1, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p3, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p1, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p3, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    :goto_0
    return-object p0
.end method

.method public f(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;I)Lb/g/a/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Lb/g/a/b;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p1, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p3, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p1, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p3, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    :goto_0
    return-object p0
.end method

.method public g(Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;Lb/g/a/g;F)Lb/g/a/b;
    .locals 2

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p3, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p3, p4, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p3, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-interface {p3, p1, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, p2, p4}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    neg-float p1, p5

    iput p1, p0, Lb/g/a/b;->b:F

    return-object p0
.end method

.method public final h(Lb/g/a/g;)Z
    .locals 1

    iget p1, p1, Lb/g/a/g;->n:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i([ZLb/g/a/g;)Lb/g/a/g;
    .locals 9

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0}, Lb/g/a/b$a;->c()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v5, v3}, Lb/g/a/b$a;->a(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    iget-object v6, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v6, v3}, Lb/g/a/b$a;->h(I)Lb/g/a/g;

    move-result-object v6

    if-eqz p1, :cond_0

    iget v7, v6, Lb/g/a/g;->d:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    iget-object v7, v6, Lb/g/a/g;->k:Lb/g/a/g$a;

    sget-object v8, Lb/g/a/g$a;->e:Lb/g/a/g$a;

    if-eq v7, v8, :cond_1

    sget-object v8, Lb/g/a/g$a;->f:Lb/g/a/g$a;

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    if-nez v0, :cond_0

    iget v0, p0, Lb/g/a/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0}, Lb/g/a/b$a;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(Lb/g/a/g;)V
    .locals 3

    iget-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v2, v0, v1}, Lb/g/a/b$a;->g(Lb/g/a/g;F)V

    iget-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    const/4 v2, -0x1

    iput v2, v0, Lb/g/a/g;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    :cond_0
    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lb/g/a/b$a;->b(Lb/g/a/g;Z)F

    move-result v0

    mul-float v0, v0, v1

    iput-object p1, p0, Lb/g/a/b;->a:Lb/g/a/g;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lb/g/a/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lb/g/a/b;->b:F

    iget-object p1, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p1, v0}, Lb/g/a/b$a;->j(F)V

    return-void
.end method

.method public k(Lb/g/a/d;Lb/g/a/g;Z)V
    .locals 3

    iget-boolean v0, p2, Lb/g/a/g;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p2}, Lb/g/a/b$a;->d(Lb/g/a/g;)F

    move-result v0

    iget v1, p0, Lb/g/a/b;->b:F

    iget v2, p2, Lb/g/a/g;->g:F

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lb/g/a/b;->b:F

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p2, p3}, Lb/g/a/b$a;->b(Lb/g/a/g;Z)F

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0}, Lb/g/a/g;->d(Lb/g/a/b;)V

    :cond_1
    iget-object p2, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p2}, Lb/g/a/b$a;->c()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/g/a/b;->e:Z

    iput-boolean p2, p1, Lb/g/a/d;->a:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public l(Lb/g/a/d;Lb/g/a/b;Z)V
    .locals 3

    iget-object v0, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v0, p2, p3}, Lb/g/a/b$a;->f(Lb/g/a/b;Z)F

    move-result v0

    iget v1, p0, Lb/g/a/b;->b:F

    iget v2, p2, Lb/g/a/b;->b:F

    mul-float v2, v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lb/g/a/b;->b:F

    if-eqz p3, :cond_0

    iget-object p2, p2, Lb/g/a/b;->a:Lb/g/a/g;

    invoke-virtual {p2, p0}, Lb/g/a/g;->d(Lb/g/a/b;)V

    :cond_0
    iget-object p2, p0, Lb/g/a/b;->a:Lb/g/a/g;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {p2}, Lb/g/a/b$a;->c()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/g/a/b;->e:Z

    iput-boolean p2, p1, Lb/g/a/d;->a:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lb/g/a/b;->a:Lb/g/a/g;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/g/a/b;->a:Lb/g/a/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " = "

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lb/g/a/b;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lb/g/a/b;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v4}, Lb/g/a/b$a;->c()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_8

    iget-object v5, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v5, v3}, Lb/g/a/b$a;->h(I)Lb/g/a/g;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_6

    :cond_2
    iget-object v6, p0, Lb/g/a/b;->d:Lb/g/a/b$a;

    invoke-interface {v6, v3}, Lb/g/a/b$a;->a(I)F

    move-result v6

    cmpl-float v7, v6, v2

    if-nez v7, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v5}, Lb/g/a/g;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v7, -0x40800000    # -1.0f

    if-nez v1, :cond_4

    cmpg-float v1, v6, v2

    if-gez v1, :cond_6

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "- "

    goto :goto_3

    :cond_4
    cmpl-float v1, v6, v2

    if-lez v1, :cond_5

    const-string v1, " + "

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-float v6, v6, v7

    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v6, v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    :goto_5
    invoke-static {v1, v0, v5}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    const-string v1, "0.0"

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method
