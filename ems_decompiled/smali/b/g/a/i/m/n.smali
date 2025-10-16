.class public Lb/g/a/i/m/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/i/m/n$a;
    }
.end annotation


# static fields
.field public static f:I


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/m/n$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lb/g/a/i/m/n;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lb/g/a/i/m/n;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Lb/g/a/i/m/n;->d:Ljava/util/ArrayList;

    iput v0, p0, Lb/g/a/i/m/n;->e:I

    sget v0, Lb/g/a/i/m/n;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lb/g/a/i/m/n;->f:I

    iput v0, p0, Lb/g/a/i/m/n;->b:I

    iput p1, p0, Lb/g/a/i/m/n;->c:I

    return-void
.end method


# virtual methods
.method public a(Lb/g/a/i/d;)Z
    .locals 1

    iget-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/m/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lb/g/a/i/m/n;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/m/n;

    iget v3, p0, Lb/g/a/i/m/n;->e:I

    iget v4, v2, Lb/g/a/i/m/n;->b:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lb/g/a/i/m/n;->c:I

    invoke-virtual {p0, v3, v2}, Lb/g/a/i/m/n;->d(ILb/g/a/i/m/n;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public c(Lb/g/a/d;I)I
    .locals 5

    iget-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    .line 2
    iget-object v2, v2, Lb/g/a/i/d;->W:Lb/g/a/i/d;

    .line 3
    check-cast v2, Lb/g/a/i/e;

    invoke-virtual {p1}, Lb/g/a/d;->u()V

    invoke-virtual {v2, p1, v1}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/g/a/i/d;

    invoke-virtual {v4, p1, v1}, Lb/g/a/i/d;->f(Lb/g/a/d;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget v3, v2, Lb/g/a/i/e;->V0:I

    if-lez v3, :cond_2

    invoke-static {v2, p1, v0, v1}, La/a/a/a/a;->a(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/ArrayList;I)V

    :cond_2
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    iget v4, v2, Lb/g/a/i/e;->W0:I

    if-lez v4, :cond_3

    invoke-static {v2, p1, v0, v3}, La/a/a/a/a;->a(Lb/g/a/i/e;Lb/g/a/d;Ljava/util/ArrayList;I)V

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Lb/g/a/d;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lb/g/a/i/m/n;->d:Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/g/a/i/d;

    new-instance v4, Lb/g/a/i/m/n$a;

    invoke-direct {v4, p0, v3, p1, p2}, Lb/g/a/i/m/n$a;-><init>(Lb/g/a/i/m/n;Lb/g/a/i/d;Lb/g/a/d;I)V

    iget-object v3, p0, Lb/g/a/i/m/n;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-nez p2, :cond_5

    iget-object p2, v2, Lb/g/a/i/d;->K:Lb/g/a/i/c;

    invoke-virtual {p1, p2}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, v2, Lb/g/a/i/d;->M:Lb/g/a/i/c;

    goto :goto_3

    :cond_5
    iget-object p2, v2, Lb/g/a/i/d;->L:Lb/g/a/i/c;

    invoke-virtual {p1, p2}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result p2

    iget-object v0, v2, Lb/g/a/i/d;->N:Lb/g/a/i/c;

    :goto_3
    invoke-virtual {p1, v0}, Lb/g/a/d;->o(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lb/g/a/d;->u()V

    sub-int/2addr v0, p2

    return v0
.end method

.method public d(ILb/g/a/i/m/n;)V
    .locals 3

    iget-object v0, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/g/a/i/d;

    invoke-virtual {p2, v1}, Lb/g/a/i/m/n;->a(Lb/g/a/i/d;)Z

    if-nez p1, :cond_0

    .line 1
    iget v2, p2, Lb/g/a/i/m/n;->b:I

    .line 2
    iput v2, v1, Lb/g/a/i/d;->K0:I

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p2, Lb/g/a/i/m/n;->b:I

    .line 4
    iput v2, v1, Lb/g/a/i/d;->L0:I

    goto :goto_0

    :cond_1
    iget p1, p2, Lb/g/a/i/m/n;->b:I

    iput p1, p0, Lb/g/a/i/m/n;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    iget v1, p0, Lb/g/a/i/m/n;->c:I

    if-nez v1, :cond_0

    const-string v1, "Horizontal"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "Vertical"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const-string v1, "Both"

    goto :goto_0

    :cond_2
    const-string v1, "Unknown"

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/g/a/i/m/n;->b:I

    const-string v2, "] <"

    invoke-static {v0, v1, v2}, Lc/a/a/a/a;->n(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/g/a/i/m/n;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    const-string v3, " "

    invoke-static {v0, v3}, Lc/a/a/a/a;->v(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object v2, v2, Lb/g/a/i/d;->p0:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v1, " >"

    invoke-static {v0, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
