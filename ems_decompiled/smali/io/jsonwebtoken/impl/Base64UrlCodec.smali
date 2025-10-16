.class public Lio/jsonwebtoken/impl/Base64UrlCodec;
.super Lio/jsonwebtoken/impl/AbstractTextCodec;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/jsonwebtoken/impl/AbstractTextCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/Base64UrlCodec;->ensurePadding([C)[C

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-char v1, p1, v0

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2b

    aput-char v1, p1, v0

    goto :goto_1

    :cond_0
    aget-char v1, p1, v0

    const/16 v2, 0x5f

    if-ne v1, v2, :cond_1

    const/16 v1, 0x2f

    aput-char v1, p1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    sget-object p1, Lio/jsonwebtoken/impl/TextCodec;->BASE64:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {p1, v0}, Lio/jsonwebtoken/impl/TextCodec;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 3

    sget-object v0, Lio/jsonwebtoken/impl/TextCodec;->BASE64:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {v0, p1}, Lio/jsonwebtoken/impl/TextCodec;->encode([B)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lio/jsonwebtoken/impl/AbstractTextCodec;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/jsonwebtoken/impl/Base64UrlCodec;->removePadding([B)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2d

    aput-byte v1, p1, v0

    goto :goto_1

    :cond_0
    aget-byte v1, p1, v0

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/16 v1, 0x5f

    aput-byte v1, p1, v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/jsonwebtoken/impl/AbstractTextCodec;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public ensurePadding([C)[C
    .locals 5

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    rsub-int/lit8 v0, v0, 0x4

    :goto_1
    if-lez v0, :cond_3

    array-length v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [C

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-ge v1, v0, :cond_2

    array-length v3, p1

    add-int/2addr v3, v1

    const/16 v4, 0x3d

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :cond_3
    return-object p1
.end method

.method public removePadding([B)[B
    .locals 5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_0

    aget-byte v3, p1, v0

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-lez v2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v3, p1

    sub-int/2addr v3, v2

    invoke-static {p1, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_1
    return-object p1
.end method
