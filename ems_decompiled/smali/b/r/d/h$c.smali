.class public Lb/r/d/h$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/r/d/h$g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[I

.field public final c:[I

.field public final d:Lb/r/d/h$b;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Lb/r/d/h$b;Ljava/util/List;[I[IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/r/d/h$b;",
            "Ljava/util/List<",
            "Lb/r/d/h$g;",
            ">;[I[IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/r/d/h$c;->a:Ljava/util/List;

    iput-object p3, p0, Lb/r/d/h$c;->b:[I

    iput-object p4, p0, Lb/r/d/h$c;->c:[I

    const/4 v0, 0x0

    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    check-cast p1, Lb/r/d/d$a$a;

    .line 1
    iget-object p3, p1, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object p3, p3, Lb/r/d/d$a;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 2
    iput p3, p0, Lb/r/d/h$c;->e:I

    .line 3
    iget-object p1, p1, Lb/r/d/d$a$a;->a:Lb/r/d/d$a;

    iget-object p1, p1, Lb/r/d/d$a;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    iput p1, p0, Lb/r/d/h$c;->f:I

    iput-boolean p5, p0, Lb/r/d/h$c;->g:Z

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lb/r/d/h$g;

    :goto_0
    if-eqz p4, :cond_1

    iget p5, p4, Lb/r/d/h$g;->a:I

    if-nez p5, :cond_1

    iget p4, p4, Lb/r/d/h$g;->b:I

    if-eqz p4, :cond_2

    :cond_1
    new-instance p4, Lb/r/d/h$g;

    invoke-direct {p4}, Lb/r/d/h$g;-><init>()V

    iput v0, p4, Lb/r/d/h$g;->a:I

    iput v0, p4, Lb/r/d/h$g;->b:I

    iput-boolean v0, p4, Lb/r/d/h$g;->d:Z

    iput v0, p4, Lb/r/d/h$g;->c:I

    iput-boolean v0, p4, Lb/r/d/h$g;->e:Z

    invoke-interface {p2, v0, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    :goto_1
    if-ltz p2, :cond_9

    iget-object p5, p0, Lb/r/d/h$c;->a:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lb/r/d/h$g;

    iget v1, p5, Lb/r/d/h$g;->a:I

    iget v2, p5, Lb/r/d/h$g;->c:I

    add-int/2addr v1, v2

    iget v3, p5, Lb/r/d/h$g;->b:I

    add-int/2addr v3, v2

    iget-boolean v2, p0, Lb/r/d/h$c;->g:Z

    if-eqz v2, :cond_6

    :goto_2
    if-le p3, v1, :cond_4

    .line 7
    iget-object v2, p0, Lb/r/d/h$c;->b:[I

    add-int/lit8 v4, p3, -0x1

    aget v2, v2, v4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p3, p1, p2, v0}, Lb/r/d/h$c;->a(IIIZ)Z

    :goto_3
    move p3, v4

    goto :goto_2

    :cond_4
    :goto_4
    if-le p1, v3, :cond_6

    .line 8
    iget-object v1, p0, Lb/r/d/h$c;->c:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0, p3, p1, p2, p4}, Lb/r/d/h$c;->a(IIIZ)Z

    :goto_5
    move p1, v2

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    .line 9
    :goto_6
    iget p3, p5, Lb/r/d/h$g;->c:I

    if-ge p1, p3, :cond_8

    iget p3, p5, Lb/r/d/h$g;->a:I

    add-int/2addr p3, p1

    iget v1, p5, Lb/r/d/h$g;->b:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {v2, p3, v1}, Lb/r/d/h$b;->a(II)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    const/4 v2, 0x2

    :goto_7
    iget-object v3, p0, Lb/r/d/h$c;->b:[I

    shl-int/lit8 v4, v1, 0x5

    or-int/2addr v4, v2

    aput v4, v3, p3

    iget-object v3, p0, Lb/r/d/h$c;->c:[I

    shl-int/lit8 p3, p3, 0x5

    or-int/2addr p3, v2

    aput p3, v3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_8
    iget p3, p5, Lb/r/d/h$g;->a:I

    iget p1, p5, Lb/r/d/h$g;->b:I

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static b(Ljava/util/List;IZ)Lb/r/d/h$e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/r/d/h$e;",
            ">;IZ)",
            "Lb/r/d/h$e;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/d/h$e;

    iget v3, v2, Lb/r/d/h$e;->a:I

    if-ne v3, p1, :cond_2

    iget-boolean v3, v2, Lb/r/d/h$e;->c:Z

    if-ne v3, p2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/r/d/h$e;

    iget v3, p1, Lb/r/d/h$e;->b:I

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, -0x1

    :goto_2
    add-int/2addr v3, v4

    iput v3, p1, Lb/r/d/h$e;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(IIIZ)Z
    .locals 8

    if-eqz p4, :cond_0

    add-int/lit8 p2, p2, -0x1

    move v1, p1

    move v0, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_0
    if-ltz p3, :cond_7

    iget-object v2, p0, Lb/r/d/h$c;->a:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/d/h$g;

    iget v3, v2, Lb/r/d/h$g;->a:I

    iget v4, v2, Lb/r/d/h$g;->c:I

    add-int/2addr v3, v4

    iget v5, v2, Lb/r/d/h$g;->b:I

    add-int/2addr v5, v4

    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz p4, :cond_3

    sub-int/2addr v1, v7

    :goto_1
    if-lt v1, v3, :cond_6

    iget-object p2, p0, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {p2, v1, v0}, Lb/r/d/h$b;->b(II)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {p1, v1, v0}, Lb/r/d/h$b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x4

    :goto_2
    iget-object p1, p0, Lb/r/d/h$c;->c:[I

    shl-int/lit8 p2, v1, 0x5

    or-int/lit8 p2, p2, 0x10

    aput p2, p1, v0

    iget-object p1, p0, Lb/r/d/h$c;->b:[I

    shl-int/lit8 p2, v0, 0x5

    or-int/2addr p2, v4

    aput p2, p1, v1

    return v7

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v7

    :goto_3
    if-lt p2, v5, :cond_6

    iget-object v1, p0, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {v1, v0, p2}, Lb/r/d/h$b;->b(II)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p3, p0, Lb/r/d/h$c;->d:Lb/r/d/h$b;

    invoke-virtual {p3, v0, p2}, Lb/r/d/h$b;->a(II)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x4

    :goto_4
    iget-object p3, p0, Lb/r/d/h$c;->b:[I

    sub-int/2addr p1, v7

    shl-int/lit8 p4, p2, 0x5

    or-int/lit8 p4, p4, 0x10

    aput p4, p3, p1

    iget-object p3, p0, Lb/r/d/h$c;->c:[I

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v4

    aput p1, p3, p2

    return v7

    :cond_5
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    iget v1, v2, Lb/r/d/h$g;->a:I

    iget p2, v2, Lb/r/d/h$g;->b:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
