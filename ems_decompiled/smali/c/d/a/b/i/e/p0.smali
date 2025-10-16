.class public final Lc/d/a/b/i/e/p0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lc/d/a/b/i/e/s0<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lc/d/a/b/i/e/p0;


# instance fields
.field public final a:Lc/d/a/b/i/e/w2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/w2<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/e/p0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/p0;-><init>(Z)V

    sput-object v0, Lc/d/a/b/i/e/p0;->d:Lc/d/a/b/i/e/p0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/i/e/p0;->c:Z

    .line 1
    sget v0, Lc/d/a/b/i/e/w2;->i:I

    new-instance v0, Lc/d/a/b/i/e/x2;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/x2;-><init>(I)V

    .line 2
    iput-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/b/i/e/p0;->c:Z

    .line 3
    sget v0, Lc/d/a/b/i/e/w2;->i:I

    new-instance v0, Lc/d/a/b/i/e/x2;

    invoke-direct {v0, p1}, Lc/d/a/b/i/e/x2;-><init>(I)V

    .line 4
    iput-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    .line 5
    iget-boolean p1, p0, Lc/d/a/b/i/e/p0;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/i/e/x2;->i()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/b/i/e/p0;->b:Z

    :goto_0
    return-void
.end method

.method public static d(Lc/d/a/b/i/e/u3;ILjava/lang/Object;)I
    .locals 1

    invoke-static {p1}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result p1

    sget-object v0, Lc/d/a/b/i/e/u3;->n:Lc/d/a/b/i/e/u3;

    if-ne p0, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/d/a/b/i/e/d2;

    sget-object v0, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    shl-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-static {p0, p2}, Lc/d/a/b/i/e/p0;->h(Lc/d/a/b/i/e/u3;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(Lc/d/a/b/i/e/u3;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lc/d/a/b/i/e/q0;->a:[I

    .line 3
    iget-object p0, p0, Lc/d/a/b/i/e/u3;->c:Lc/d/a/b/i/e/z3;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of p0, p1, Lc/d/a/b/i/e/d2;

    if-nez p0, :cond_1

    instance-of p0, p1, Lc/d/a/b/i/e/h1;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_1

    instance-of p0, p1, Lc/d/a/b/i/e/b1;

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_2
    instance-of p0, p1, Lc/d/a/b/i/e/y;

    if-nez p0, :cond_1

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/i/e/s0<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Lc/d/a/b/i/e/s0;->f()Lc/d/a/b/i/e/u3;

    move-result-object v0

    invoke-interface {p0}, Lc/d/a/b/i/e/s0;->zzc()I

    move-result v1

    invoke-interface {p0}, Lc/d/a/b/i/e/s0;->q()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lc/d/a/b/i/e/s0;->c()Z

    move-result p0

    const/4 v2, 0x0

    check-cast p1, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lc/d/a/b/i/e/p0;->h(Lc/d/a/b/i/e/u3;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 1
    invoke-static {v2}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/d/a/b/i/e/p0;->d(Lc/d/a/b/i/e/u3;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    invoke-static {v0, v1, p1}, Lc/d/a/b/i/e/p0;->d(Lc/d/a/b/i/e/u3;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static h(Lc/d/a/b/i/e/u3;Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lc/d/a/b/i/e/q0;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of p0, p1, Lc/d/a/b/i/e/b1;

    if-eqz p0, :cond_0

    check-cast p1, Lc/d/a/b/i/e/b1;

    invoke-interface {p1}, Lc/d/a/b/i/e/b1;->zzc()I

    move-result p0

    .line 1
    invoke-static {p0}, Lc/d/a/b/i/e/f0;->Y(I)I

    move-result p0

    return p0

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    invoke-static {p0}, Lc/d/a/b/i/e/f0;->Y(I)I

    move-result p0

    return p0

    .line 4
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lc/d/a/b/i/e/f0;->L(J)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lc/d/a/b/i/e/f0;->a0(I)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result p0

    return p0

    :pswitch_4
    instance-of p0, p1, Lc/d/a/b/i/e/y;

    if-eqz p0, :cond_1

    check-cast p1, Lc/d/a/b/i/e/y;

    invoke-static {p1}, Lc/d/a/b/i/e/f0;->n(Lc/d/a/b/i/e/y;)I

    move-result p0

    return p0

    :cond_1
    check-cast p1, [B

    .line 5
    sget-object p0, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    array-length p0, p1

    invoke-static {p0}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 6
    :pswitch_5
    instance-of p0, p1, Lc/d/a/b/i/e/y;

    if-eqz p0, :cond_2

    check-cast p1, Lc/d/a/b/i/e/y;

    invoke-static {p1}, Lc/d/a/b/i/e/f0;->n(Lc/d/a/b/i/e/y;)I

    move-result p0

    return p0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lc/d/a/b/i/e/f0;->O(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lc/d/a/b/i/e/h1;

    if-eqz p0, :cond_3

    check-cast p1, Lc/d/a/b/i/e/h1;

    .line 7
    sget-object p0, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lc/d/a/b/i/e/l1;->a()I

    move-result p0

    invoke-static {p0}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result p1

    goto :goto_0

    .line 8
    :cond_3
    check-cast p1, Lc/d/a/b/i/e/d2;

    invoke-static {p1}, Lc/d/a/b/i/e/f0;->z(Lc/d/a/b/i/e/d2;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p1, Lc/d/a/b/i/e/d2;

    .line 9
    sget-object p0, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lc/d/a/b/i/e/d2;->g()I

    move-result p0

    return p0

    .line 10
    :pswitch_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    const/4 p0, 0x1

    return p0

    :pswitch_9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_1

    :pswitch_a
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    goto :goto_2

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lc/d/a/b/i/e/f0;->Y(I)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lc/d/a/b/i/e/f0;->H(J)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 11
    invoke-static {p0, p1}, Lc/d/a/b/i/e/f0;->H(J)I

    move-result p0

    return p0

    .line 12
    :pswitch_e
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    :goto_1
    sget-object p0, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    const/4 p0, 0x4

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    :goto_2
    sget-object p0, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    const/16 p0, 0x8

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/s0;

    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->n()Lc/d/a/b/i/e/z3;

    move-result-object v1

    sget-object v2, Lc/d/a/b/i/e/z3;->l:Lc/d/a/b/i/e/z3;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->q()Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/d2;

    invoke-interface {v0}, Lc/d/a/b/i/e/f2;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    instance-of v0, p0, Lc/d/a/b/i/e/d2;

    if-eqz v0, :cond_2

    check-cast p0, Lc/d/a/b/i/e/d2;

    invoke-interface {p0}, Lc/d/a/b/i/e/f2;->a()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_2
    instance-of p0, p0, Lc/d/a/b/i/e/h1;

    if-eqz p0, :cond_3

    return v3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static k(Ljava/util/Map$Entry;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/s0;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->n()Lc/d/a/b/i/e/z3;

    move-result-object v2

    sget-object v3, Lc/d/a/b/i/e/z3;->l:Lc/d/a/b/i/e/z3;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->q()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->c()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lc/d/a/b/i/e/h1;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/d/a/b/i/e/s0;

    invoke-interface {p0}, Lc/d/a/b/i/e/s0;->zzc()I

    move-result p0

    if-eqz v0, :cond_0

    check-cast v1, Lc/d/a/b/i/e/h1;

    .line 1
    invoke-static {v4}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result v0

    shl-int/2addr v0, v4

    invoke-static {v3, p0}, Lc/d/a/b/i/e/f0;->N(II)I

    move-result p0

    add-int/2addr p0, v0

    .line 2
    invoke-static {v2}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result v0

    invoke-virtual {v1}, Lc/d/a/b/i/e/l1;->a()I

    move-result v1

    invoke-static {v1}, Lc/d/a/b/i/e/f0;->Z(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/2addr v2, p0

    return v2

    .line 3
    :cond_0
    check-cast v1, Lc/d/a/b/i/e/d2;

    .line 4
    invoke-static {v4}, Lc/d/a/b/i/e/f0;->X(I)I

    move-result v0

    shl-int/2addr v0, v4

    invoke-static {v3, p0}, Lc/d/a/b/i/e/f0;->N(II)I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {v2, v1}, Lc/d/a/b/i/e/f0;->x(ILc/d/a/b/i/e/d2;)I

    move-result v0

    add-int/2addr v0, p0

    return v0

    .line 5
    :cond_1
    invoke-static {v0, v1}, Lc/d/a/b/i/e/p0;->g(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Lc/d/a/b/i/e/i2;

    if-eqz v0, :cond_0

    check-cast p0, Lc/d/a/b/i/e/i2;

    invoke-interface {p0}, Lc/d/a/b/i/e/i2;->f()Lc/d/a/b/i/e/i2;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v2}, Lc/d/a/b/i/e/w2;->e()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v2, v1}, Lc/d/a/b/i/e/w2;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lc/d/a/b/i/e/p0;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/w2;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lc/d/a/b/i/e/p0;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/i/e/p0;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/b/i/e/k1;

    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/w2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/k1;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v0}, Lc/d/a/b/i/e/w2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lc/d/a/b/i/e/p0;

    invoke-direct {v0}, Lc/d/a/b/i/e/p0;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v2}, Lc/d/a/b/i/e/w2;->e()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v2, v1}, Lc/d/a/b/i/e/w2;->c(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/i/e/s0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lc/d/a/b/i/e/p0;->e(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v1}, Lc/d/a/b/i/e/w2;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/i/e/s0;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lc/d/a/b/i/e/p0;->e(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lc/d/a/b/i/e/p0;->c:Z

    iput-boolean v1, v0, Lc/d/a/b/i/e/p0;->c:Z

    return-object v0
.end method

.method public final e(Lc/d/a/b/i/e/s0;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lc/d/a/b/i/e/s0;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1}, Lc/d/a/b/i/e/s0;->f()Lc/d/a/b/i/e/u3;

    move-result-object v3

    invoke-static {v3, v2}, Lc/d/a/b/i/e/p0;->f(Lc/d/a/b/i/e/u3;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-interface {p1}, Lc/d/a/b/i/e/s0;->f()Lc/d/a/b/i/e/u3;

    move-result-object v0

    invoke-static {v0, p2}, Lc/d/a/b/i/e/p0;->f(Lc/d/a/b/i/e/u3;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lc/d/a/b/i/e/h1;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/b/i/e/p0;->c:Z

    :cond_3
    iget-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/i/e/w2;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lc/d/a/b/i/e/p0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lc/d/a/b/i/e/p0;

    iget-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    iget-object p1, p1, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v0, p1}, Lc/d/a/b/i/e/w2;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v0}, Lc/d/a/b/i/e/w2;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/s0;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lc/d/a/b/i/e/h1;

    if-nez v1, :cond_c

    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/w2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lc/d/a/b/i/e/h1;

    if-nez v2, :cond_2

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lc/d/a/b/i/e/p0;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/i/e/w2;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_2
    sget p1, Lc/d/a/b/i/e/h1;->c:I

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 4
    :cond_3
    invoke-interface {v0}, Lc/d/a/b/i/e/s0;->n()Lc/d/a/b/i/e/z3;

    move-result-object v1

    sget-object v2, Lc/d/a/b/i/e/z3;->l:Lc/d/a/b/i/e/z3;

    if-ne v1, v2, :cond_b

    .line 5
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/w2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lc/d/a/b/i/e/h1;

    if-nez v2, :cond_a

    if-nez v1, :cond_4

    .line 6
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-static {p1}, Lc/d/a/b/i/e/p0;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lc/d/a/b/i/e/w2;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    instance-of v2, v1, Lc/d/a/b/i/e/i2;

    if-eqz v2, :cond_5

    check-cast v1, Lc/d/a/b/i/e/i2;

    check-cast p1, Lc/d/a/b/i/e/i2;

    invoke-interface {v0, v1, p1}, Lc/d/a/b/i/e/s0;->l(Lc/d/a/b/i/e/i2;Lc/d/a/b/i/e/i2;)Lc/d/a/b/i/e/i2;

    move-result-object p1

    goto :goto_3

    :cond_5
    check-cast v1, Lc/d/a/b/i/e/d2;

    invoke-interface {v1}, Lc/d/a/b/i/e/d2;->d()Lc/d/a/b/i/e/e2;

    move-result-object v1

    check-cast p1, Lc/d/a/b/i/e/d2;

    invoke-interface {v0, v1, p1}, Lc/d/a/b/i/e/s0;->b(Lc/d/a/b/i/e/e2;Lc/d/a/b/i/e/d2;)Lc/d/a/b/i/e/e2;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/e/y0$a;

    .line 7
    invoke-virtual {p1}, Lc/d/a/b/i/e/y0$a;->k()Lc/d/a/b/i/e/d2;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/e/y0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, v1, :cond_6

    goto :goto_2

    :cond_6
    if-nez v3, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    .line 8
    :cond_7
    sget-object v1, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    .line 9
    invoke-virtual {v1, p1}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object v1

    invoke-interface {v1, p1}, Lc/d/a/b/i/e/t2;->g(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_8

    move-object v4, p1

    goto :goto_1

    :cond_8
    move-object v4, v2

    :goto_1
    invoke-virtual {p1, v3, v4, v2}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v1, :cond_9

    .line 10
    :goto_3
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-virtual {v1, v0, p1}, Lc/d/a/b/i/e/w2;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_9
    new-instance p1, Lc/d/a/b/i/e/f3;

    invoke-direct {p1}, Lc/d/a/b/i/e/f3;-><init>()V

    throw p1

    .line 12
    :cond_a
    sget p1, Lc/d/a/b/i/e/h1;->c:I

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    .line 13
    :cond_b
    iget-object v1, p0, Lc/d/a/b/i/e/p0;->a:Lc/d/a/b/i/e/w2;

    invoke-static {p1}, Lc/d/a/b/i/e/p0;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lc/d/a/b/i/e/w2;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :cond_c
    sget p1, Lc/d/a/b/i/e/h1;->c:I

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
