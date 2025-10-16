.class public final Lc/d/a/b/i/n/j2;
.super Lc/d/a/b/i/n/o0;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/m2;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/n/o0<",
        "Ljava/lang/String;",
        ">;",
        "Lc/d/a/b/i/n/m2;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final e:Lc/d/a/b/i/n/j2;


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/n/j2;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lc/d/a/b/i/n/j2;-><init>(I)V

    .line 2
    sput-object v0, Lc/d/a/b/i/n/j2;->e:Lc/d/a/b/i/n/j2;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lc/d/a/b/i/n/o0;->c:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1
    invoke-direct {p0}, Lc/d/a/b/i/n/o0;-><init>()V

    iput-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/i/n/o0;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    return-void
.end method

.method public static k(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    instance-of v0, p0, Lc/d/a/b/i/n/t0;

    if-eqz v0, :cond_2

    check-cast p0, Lc/d/a/b/i/n/t0;

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lc/d/a/b/i/n/t0;->k()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lc/d/a/b/i/n/t0;->o(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 2
    :cond_2
    check-cast p0, [B

    .line 3
    sget-object v0, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(I)Lc/d/a/b/i/n/c2;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/n/j2;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lc/d/a/b/i/n/j2;

    invoke-direct {p1, v0}, Lc/d/a/b/i/n/j2;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final synthetic add(ILjava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lc/d/a/b/i/n/o0;->j()V

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/i/n/o0;->j()V

    instance-of v0, p2, Lc/d/a/b/i/n/m2;

    if-eqz v0, :cond_0

    check-cast p2, Lc/d/a/b/i/n/m2;

    invoke-interface {p2}, Lc/d/a/b/i/n/m2;->zzd()Ljava/util/List;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/i/n/j2;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/i/n/j2;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/n/o0;->j()V

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final f(Lc/d/a/b/i/n/t0;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/n/o0;->j()V

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    instance-of v1, v0, Lc/d/a/b/i/n/t0;

    if-eqz v1, :cond_3

    check-cast v0, Lc/d/a/b/i/n/t0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Lc/d/a/b/i/n/t0;->k()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lc/d/a/b/i/n/t0;->o(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 2
    :goto_0
    invoke-virtual {v0}, Lc/d/a/b/i/n/t0;->zzc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1

    :cond_3
    check-cast v0, [B

    .line 3
    sget-object v1, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    sget-object v2, Lc/d/a/b/i/n/o4;->a:Lc/d/a/b/i/n/p4;

    array-length v3, v0

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v4, v0, v4, v3}, Lc/d/a/b/i/n/p4;->a(I[BII)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    .line 6
    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v1
.end method

.method public final h()Lc/d/a/b/i/n/m2;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/i/n/o0;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lc/d/a/b/i/n/j4;

    invoke-direct {v0, p0}, Lc/d/a/b/i/n/j4;-><init>(Lc/d/a/b/i/n/m2;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/i/n/o0;->j()V

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lc/d/a/b/i/n/j2;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lc/d/a/b/i/n/o0;->j()V

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/i/n/j2;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/n/j2;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
