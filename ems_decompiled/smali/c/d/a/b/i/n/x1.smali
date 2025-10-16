.class public final Lc/d/a/b/i/n/x1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lc/d/a/b/i/n/x1;->b:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    array-length v1, v1

    const v2, 0x7fffffff

    add-int/lit8 v3, v1, 0x0

    if-ltz v1, :cond_1

    add-int/2addr v1, v0

    if-gt v1, v2, :cond_0

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Lc/d/a/b/i/n/b2;->a()Lc/d/a/b/i/n/b2;

    move-result-object v0

    throw v0

    :cond_1
    invoke-static {}, Lc/d/a/b/i/n/b2;->b()Lc/d/a/b/i/n/b2;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lc/d/a/b/i/n/b2; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static b(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lc/d/a/b/i/n/c3;

    invoke-interface {p0}, Lc/d/a/b/i/n/c3;->a()Lc/d/a/b/i/n/f3;

    move-result-object p0

    check-cast p1, Lc/d/a/b/i/n/c3;

    check-cast p0, Lc/d/a/b/i/n/j0;

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lc/d/a/b/i/n/t1$b;

    .line 2
    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->c:Lc/d/a/b/i/n/t1;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lc/d/a/b/i/n/k0;

    .line 4
    check-cast p1, Lc/d/a/b/i/n/t1;

    invoke-virtual {p0, p1}, Lc/d/a/b/i/n/t1$b;->j(Lc/d/a/b/i/n/t1;)Lc/d/a/b/i/n/t1$b;

    .line 5
    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->l()Lc/d/a/b/i/n/c3;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
