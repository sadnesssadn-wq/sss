.class public abstract Lc/d/a/b/i/e/y;
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
.field public static final d:Lc/d/a/b/i/e/y;

.field public static final e:Lc/d/a/b/i/e/b0;


# instance fields
.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/e/c0;

    sget-object v1, Lc/d/a/b/i/e/a1;->b:[B

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/c0;-><init>([B)V

    sput-object v0, Lc/d/a/b/i/e/y;->d:Lc/d/a/b/i/e/y;

    invoke-static {}, Lc/d/a/b/i/e/t;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lc/d/a/b/i/e/d0;

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/d0;-><init>(Lc/d/a/b/i/e/z;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lc/d/a/b/i/e/a0;

    invoke-direct {v0, v1}, Lc/d/a/b/i/e/a0;-><init>(Lc/d/a/b/i/e/z;)V

    :goto_0
    sput-object v0, Lc/d/a/b/i/e/y;->e:Lc/d/a/b/i/e/b0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/i/e/y;->c:I

    return-void
.end method

.method public static n([BII)Lc/d/a/b/i/e/y;
    .locals 2

    new-instance v0, Lc/d/a/b/i/e/c0;

    sget-object v1, Lc/d/a/b/i/e/y;->e:Lc/d/a/b/i/e/b0;

    invoke-interface {v1, p0, p1, p2}, Lc/d/a/b/i/e/b0;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/c0;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lc/d/a/b/i/e/y;->c:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/i/e/y;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lc/d/a/b/i/e/y;->j(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lc/d/a/b/i/e/y;->c:I

    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lc/d/a/b/i/e/z;

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/z;-><init>(Lc/d/a/b/i/e/y;)V

    return-object v0
.end method

.method public abstract j(III)I
.end method

.method public abstract k(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract l(Lc/d/a/b/i/e/x;)V
.end method

.method public abstract m()Z
.end method

.method public abstract o(I)B
.end method

.method public abstract size()I
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lc/d/a/b/i/e/y;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
