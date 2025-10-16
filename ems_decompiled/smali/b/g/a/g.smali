.class public Lb/g/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/g/a/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lb/g/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static p:I = 0x1


# instance fields
.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:F

.field public h:Z

.field public i:[F

.field public j:[F

.field public k:Lb/g/a/g$a;

.field public l:[Lb/g/a/b;

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lb/g/a/g$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/g/a/g;->d:I

    iput v0, p0, Lb/g/a/g;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lb/g/a/g;->f:I

    iput-boolean v1, p0, Lb/g/a/g;->h:Z

    const/16 v2, 0x9

    new-array v3, v2, [F

    iput-object v3, p0, Lb/g/a/g;->i:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lb/g/a/g;->j:[F

    const/16 v2, 0x10

    new-array v2, v2, [Lb/g/a/b;

    iput-object v2, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    iput v1, p0, Lb/g/a/g;->m:I

    iput v1, p0, Lb/g/a/g;->n:I

    iput v0, p0, Lb/g/a/g;->o:I

    iput-object p1, p0, Lb/g/a/g;->k:Lb/g/a/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lb/g/a/b;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lb/g/a/g;->m:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/b;

    iput-object v0, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    :cond_2
    iget-object v0, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    iget v1, p0, Lb/g/a/g;->m:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/g/a/g;->m:I

    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lb/g/a/g;

    .line 1
    iget v0, p0, Lb/g/a/g;->d:I

    iget p1, p1, Lb/g/a/g;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lb/g/a/b;)V
    .locals 4

    iget v0, p0, Lb/g/a/g;->m:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lb/g/a/g;->m:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/g/a/g;->m:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e()V
    .locals 6

    sget-object v0, Lb/g/a/g$a;->g:Lb/g/a/g$a;

    iput-object v0, p0, Lb/g/a/g;->k:Lb/g/a/g$a;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/g;->f:I

    const/4 v1, -0x1

    iput v1, p0, Lb/g/a/g;->d:I

    iput v1, p0, Lb/g/a/g;->e:I

    const/4 v2, 0x0

    iput v2, p0, Lb/g/a/g;->g:F

    iput-boolean v0, p0, Lb/g/a/g;->h:Z

    iput v1, p0, Lb/g/a/g;->o:I

    iget v1, p0, Lb/g/a/g;->m:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lb/g/a/g;->m:I

    iput v0, p0, Lb/g/a/g;->n:I

    iput-boolean v0, p0, Lb/g/a/g;->c:Z

    iget-object v0, p0, Lb/g/a/g;->j:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public g(Lb/g/a/d;F)V
    .locals 3

    iput p2, p0, Lb/g/a/g;->g:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/g/a/g;->h:Z

    const/4 p2, -0x1

    iput p2, p0, Lb/g/a/g;->o:I

    iget v0, p0, Lb/g/a/g;->m:I

    iput p2, p0, Lb/g/a/g;->e:I

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, p2}, Lb/g/a/b;->k(Lb/g/a/d;Lb/g/a/g;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lb/g/a/g;->m:I

    return-void
.end method

.method public final j(Lb/g/a/d;Lb/g/a/b;)V
    .locals 4

    iget v0, p0, Lb/g/a/g;->m:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lb/g/a/g;->l:[Lb/g/a/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lb/g/a/b;->l(Lb/g/a/d;Lb/g/a/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lb/g/a/g;->m:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lb/g/a/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
