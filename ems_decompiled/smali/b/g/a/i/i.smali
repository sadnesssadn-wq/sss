.class public Lb/g/a/i/i;
.super Lb/g/a/i/d;
.source ""

# interfaces
.implements Lb/g/a/i/h;


# instance fields
.field public M0:[Lb/g/a/i/d;

.field public N0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/g/a/i/d;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lb/g/a/i/d;

    iput-object v0, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/i;->N0:I

    return-void
.end method


# virtual methods
.method public W(Ljava/util/ArrayList;ILb/g/a/i/m/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/g/a/i/m/n;",
            ">;I",
            "Lb/g/a/i/m/n;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lb/g/a/i/i;->N0:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v2, v2, v1

    invoke-virtual {p3, v2}, Lb/g/a/i/m/n;->a(Lb/g/a/i/d;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v1, p0, Lb/g/a/i/i;->N0:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v1, v1, v0

    invoke-static {v1, p2, p1, p3}, La/a/a/a/a;->y(Lb/g/a/i/d;ILjava/util/ArrayList;Lb/g/a/i/m/n;)Lb/g/a/i/m/n;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lb/g/a/i/e;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/i;->N0:I

    iget-object v0, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lb/g/a/i/d;)V
    .locals 3

    if-eq p1, p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lb/g/a/i/i;->N0:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    array-length v2, v1

    if-le v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/i/d;

    iput-object v0, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    :cond_1
    iget-object v0, p0, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    iget v1, p0, Lb/g/a/i/i;->N0:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb/g/a/i/i;->N0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public k(Lb/g/a/i/d;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/g/a/i/d;",
            "Ljava/util/HashMap<",
            "Lb/g/a/i/d;",
            "Lb/g/a/i/d;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lb/g/a/i/d;->k(Lb/g/a/i/d;Ljava/util/HashMap;)V

    check-cast p1, Lb/g/a/i/i;

    const/4 v0, 0x0

    iput v0, p0, Lb/g/a/i/i;->N0:I

    iget v1, p1, Lb/g/a/i/i;->N0:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p1, Lb/g/a/i/i;->M0:[Lb/g/a/i/d;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/g/a/i/d;

    invoke-virtual {p0, v2}, Lb/g/a/i/i;->c(Lb/g/a/i/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
