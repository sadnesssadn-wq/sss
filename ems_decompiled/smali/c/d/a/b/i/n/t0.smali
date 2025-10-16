.class public abstract Lc/d/a/b/i/n/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lc/d/a/b/i/n/t0;

.field public static final e:Lc/d/a/b/i/n/w0;


# instance fields
.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/n/y0;

    sget-object v1, Lc/d/a/b/i/n/x1;->b:[B

    invoke-direct {v0, v1}, Lc/d/a/b/i/n/y0;-><init>([B)V

    sput-object v0, Lc/d/a/b/i/n/t0;->d:Lc/d/a/b/i/n/t0;

    invoke-static {}, Lc/d/a/b/i/n/n0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/b/i/n/x0;

    invoke-direct {v0, v1}, Lc/d/a/b/i/n/x0;-><init>(Lc/d/a/b/i/n/s0;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/d/a/b/i/n/v0;

    invoke-direct {v0, v1}, Lc/d/a/b/i/n/v0;-><init>(Lc/d/a/b/i/n/s0;)V

    :goto_0
    sput-object v0, Lc/d/a/b/i/n/t0;->e:Lc/d/a/b/i/n/w0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/i/n/t0;->c:I

    return-void
.end method

.method public static n([BII)Lc/d/a/b/i/n/t0;
    .locals 2

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lc/d/a/b/i/n/t0;->r(III)I

    new-instance v0, Lc/d/a/b/i/n/y0;

    sget-object v1, Lc/d/a/b/i/n/t0;->e:Lc/d/a/b/i/n/w0;

    invoke-interface {v1, p0, p1, p2}, Lc/d/a/b/i/n/w0;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d/a/b/i/n/y0;-><init>([B)V

    return-object v0
.end method

.method public static r(III)I
    .locals 3

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    if-ltz p0, :cond_1

    if-ge p1, p0, :cond_0

    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x42

    const-string v1, "Beginning index larger than ending index: "

    const-string v2, ", "

    invoke-static {v0, v1, p0, v2, p1}, Lc/a/a/a/a;->J(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v0, 0x25

    const-string v1, "End index: "

    const-string v2, " >= "

    invoke-static {v0, v1, p1, v2, p2}, Lc/a/a/a/a;->J(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const/16 p2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Beginning index: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lc/d/a/b/i/n/t0;->c:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/i/n/t0;->k()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lc/d/a/b/i/n/t0;->l(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lc/d/a/b/i/n/t0;->c:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lc/d/a/b/i/n/s0;

    invoke-direct {v0, p0}, Lc/d/a/b/i/n/s0;-><init>(Lc/d/a/b/i/n/t0;)V

    return-object v0
.end method

.method public abstract j(I)B
.end method

.method public abstract k()I
.end method

.method public abstract l(III)I
.end method

.method public abstract m(II)Lc/d/a/b/i/n/t0;
.end method

.method public abstract o(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract p(Lc/d/a/b/i/n/q0;)V
.end method

.method public abstract q(I)B
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lc/d/a/b/i/n/t0;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lc/d/a/b/i/n/t0;->k()I

    move-result v2

    const/16 v4, 0x32

    if-gt v2, v4, :cond_0

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->w1(Lc/d/a/b/i/n/t0;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v3, v2}, Lc/d/a/b/i/n/t0;->m(II)Lc/d/a/b/i/n/t0;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->w1(Lc/d/a/b/i/n/t0;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "<ByteString@%s size=%d contents=\"%s\">"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzc()Z
.end method
