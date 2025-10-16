.class public Lcom/zoho/wms/common/Base64;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FCHAR:I = 0x3d

.field private static final RPCV:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->decode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decode([B)[B
    .locals 8

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-byte v3, p0, v2

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    aget-byte v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v6, v5, 0x4

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v3, v6

    int-to-char v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x3d

    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-ne v6, v3, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    shl-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v5, v7

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_3

    aget-byte v5, p0, v2

    if-ne v6, v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encode([B)[B
    .locals 7

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    div-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3f

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_0

    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v3, v5

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0x3d

    if-ge v2, v0, :cond_2

    aget-byte v5, p0, v2

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_1

    aget-byte v6, p0, v2

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v2, v0, :cond_3

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeByte([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->getString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getString([B)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zoho/wms/common/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
