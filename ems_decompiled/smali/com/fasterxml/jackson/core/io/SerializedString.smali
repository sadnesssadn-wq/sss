.class public Lcom/fasterxml/jackson/core/io/SerializedString;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/fasterxml/jackson/core/SerializableString;
.implements Ljava/io/Serializable;


# instance fields
.field public _quotedChars:[C

.field public _quotedUTF8Ref:[B

.field public _unquotedUTF8Ref:[B

.field public final _value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Null String illegal for SerializedString"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendQuotedUTF8([BI)I
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    :cond_0
    array-length v1, v0

    add-int v2, p2, v1

    array-length v3, p1

    if-le v2, v3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public final asQuotedChars()[C
    .locals 15

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    if-nez v0, :cond_8

    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_text:Lcom/fasterxml/jackson/core/util/TextBuffer;

    if-nez v2, :cond_0

    new-instance v2, Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v2, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_text:Lcom/fasterxml/jackson/core/util/TextBuffer;

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    .line 2
    sget-object v4, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 3
    array-length v5, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v6, :cond_7

    :cond_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ge v10, v5, :cond_5

    aget v11, v4, v10

    if-eqz v11, :cond_5

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget v11, v4, v8

    const/4 v12, 0x1

    if-gez v11, :cond_2

    iget-object v11, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    const/16 v13, 0x75

    .line 4
    aput-char v13, v11, v12

    sget-object v12, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HC:[C

    shr-int/lit8 v13, v8, 0x4

    aget-char v13, v12, v13

    const/4 v14, 0x4

    aput-char v13, v11, v14

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v12, v8

    const/4 v12, 0x5

    aput-char v8, v11, v12

    const/4 v8, 0x6

    goto :goto_1

    .line 5
    :cond_2
    iget-object v8, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    int-to-char v11, v11

    .line 6
    aput-char v11, v8, v12

    const/4 v8, 0x2

    :goto_1
    add-int v11, v9, v8

    .line 7
    array-length v12, v3

    if-le v11, v12, :cond_4

    array-length v11, v3

    sub-int/2addr v11, v9

    if-lez v11, :cond_3

    iget-object v12, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    invoke-static {v12, v7, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    sub-int/2addr v8, v11

    iget-object v9, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    invoke-static {v9, v11, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v8

    goto :goto_2

    :cond_4
    iget-object v12, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_qbuf:[C

    invoke-static {v12, v7, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v11

    :goto_2
    move v8, v10

    goto :goto_0

    :cond_5
    array-length v11, v3

    if-lt v9, v11, :cond_6

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    const/4 v9, 0x0

    :cond_6
    add-int/lit8 v11, v9, 0x1

    aput-char v10, v3, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    if-lt v8, v6, :cond_1

    .line 8
    :cond_7
    iput v9, v2, Lcom/fasterxml/jackson/core/util/TextBuffer;->_currentSize:I

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    :cond_8
    return-object v0
.end method

.method public final asQuotedUTF8()[B
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    if-nez v0, :cond_0

    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    :cond_0
    return-object v0
.end method

.method public final asUnquotedUTF8()[B
    .locals 13

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    if-nez v0, :cond_10

    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 1
    iget-object v2, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/16 v4, 0x1f4

    .line 2
    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;I)V

    .line 3
    iput-object v2, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 5
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v4, :cond_f

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_1
    const/16 v11, 0x7f

    if-gt v8, v11, :cond_3

    if-lt v9, v6, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 7
    array-length v6, v5

    const/4 v9, 0x0

    :cond_1
    add-int/lit8 v11, v9, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v9

    if-lt v10, v4, :cond_2

    move v9, v11

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v10, v8

    move v8, v9

    move v9, v11

    goto :goto_1

    :cond_3
    if-lt v9, v6, :cond_4

    .line 8
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 9
    array-length v6, v5

    const/4 v9, 0x0

    :cond_4
    const/16 v11, 0x800

    if-ge v8, v11, :cond_5

    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v8, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    aput-byte v12, v5, v9

    goto/16 :goto_3

    :cond_5
    const v11, 0xd800

    if-lt v8, v11, :cond_c

    const v11, 0xdfff

    if-le v8, v11, :cond_6

    goto :goto_2

    :cond_6
    const v11, 0xdbff

    if-gt v8, v11, :cond_b

    if-ge v10, v4, :cond_a

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v8, v10}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convert(II)I

    move-result v8

    const v10, 0x10ffff

    if-gt v8, v10, :cond_9

    add-int/lit8 v10, v9, 0x1

    shr-int/lit8 v12, v8, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    aput-byte v12, v5, v9

    if-lt v10, v6, :cond_7

    .line 10
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 11
    array-length v6, v5

    const/4 v10, 0x0

    :cond_7
    add-int/lit8 v9, v10, 0x1

    shr-int/lit8 v12, v8, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v5, v10

    if-lt v9, v6, :cond_8

    .line 12
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 13
    array-length v6, v5

    const/4 v9, 0x0

    :cond_8
    add-int/lit8 v10, v9, 0x1

    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v5, v9

    move v9, v8

    move v8, v11

    goto :goto_4

    :cond_9
    invoke-static {v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    throw v3

    :cond_a
    invoke-static {v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    throw v3

    :cond_b
    invoke-static {v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegal(I)V

    throw v3

    :cond_c
    :goto_2
    add-int/lit8 v11, v9, 0x1

    shr-int/lit8 v12, v8, 0xc

    or-int/lit16 v12, v12, 0xe0

    int-to-byte v12, v12

    aput-byte v12, v5, v9

    if-lt v11, v6, :cond_d

    .line 14
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 15
    array-length v6, v5

    const/4 v11, 0x0

    :cond_d
    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v12, v8, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    move v11, v9

    :goto_3
    move v9, v8

    move v8, v10

    move v10, v11

    :goto_4
    if-lt v10, v6, :cond_e

    .line 16
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_allocMore()V

    iget-object v5, v2, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlock:[B

    .line 17
    array-length v6, v5

    const/4 v10, 0x0

    :cond_e
    add-int/lit8 v11, v10, 0x1

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v5, v10

    move v9, v11

    goto/16 :goto_0

    :cond_f
    :goto_5
    iget-object v0, v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_bytes:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    .line 18
    iput v9, v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->_currBlockPtr:I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    :cond_10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/io/SerializedString;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/fasterxml/jackson/core/io/SerializedString;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    iget-object p1, p1, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method
