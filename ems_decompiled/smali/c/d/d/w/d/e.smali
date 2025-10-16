.class public final Lc/d/d/w/d/e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/d/w/d/e$a;
    }
.end annotation


# static fields
.field public static final a:[C

.field public static final b:[C

.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:[Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lc/d/d/w/d/e;->a:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lc/d/d/w/d/e;->b:[C

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc/d/d/w/d/e;->c:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lc/d/d/w/d/e;->d:[Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lc/d/d/w/d/e;->d:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a([II)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    sget-object v4, Lc/d/d/w/d/e;->d:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static b([IILjava/lang/StringBuilder;)I
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x0

    aget v2, p0, v1

    sub-int v2, v2, p1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [I

    aget v4, p0, v1

    sub-int v4, v4, p1

    shl-int/2addr v4, v3

    new-array v4, v4, [I

    move/from16 v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    aget v8, p0, v1

    const/16 v9, 0x391

    const/16 v10, 0x384

    if-ge v5, v8, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    aget v5, p0, v5

    if-ge v5, v10, :cond_0

    div-int/lit8 v9, v5, 0x1e

    aput v9, v2, v7

    add-int/lit8 v9, v7, 0x1

    rem-int/lit8 v5, v5, 0x1e

    aput v5, v2, v9

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_0
    if-eq v5, v9, :cond_2

    const/16 v9, 0x3a0

    if-eq v5, v9, :cond_1

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 v5, v7, 0x1

    aput v10, v2, v7

    move v7, v5

    :goto_1
    move v5, v8

    goto :goto_0

    :cond_1
    :pswitch_1
    add-int/lit8 v5, v8, -0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    aput v9, v2, v7

    add-int/lit8 v5, v8, 0x1

    aget v8, p0, v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1
    :cond_3
    sget-object v6, Lc/d/d/w/d/e$a;->e:Lc/d/d/w/d/e$a;

    sget-object v8, Lc/d/d/w/d/e$a;->d:Lc/d/d/w/d/e$a;

    sget-object v11, Lc/d/d/w/d/e$a;->h:Lc/d/d/w/d/e$a;

    sget-object v12, Lc/d/d/w/d/e$a;->c:Lc/d/d/w/d/e$a;

    move-object v14, v12

    move-object v15, v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v7, :cond_29

    aget v1, v2, v13

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    const/16 v9, 0x1d

    if-eqz v10, :cond_1f

    if-eq v10, v3, :cond_18

    const/4 v3, 0x2

    if-eq v10, v3, :cond_10

    const/4 v3, 0x3

    if-eq v10, v3, :cond_c

    const/4 v3, 0x4

    if-eq v10, v3, :cond_8

    const/4 v3, 0x5

    if-eq v10, v3, :cond_4

    goto/16 :goto_c

    :cond_4
    if-ge v1, v9, :cond_5

    sget-object v3, Lc/d/d/w/d/e;->a:[C

    aget-char v1, v3, v1

    const/16 v3, 0x384

    goto :goto_3

    :cond_5
    if-ne v1, v9, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 v3, 0x391

    if-ne v1, v3, :cond_7

    aget v1, v4, v13

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/16 v3, 0x384

    if-ne v1, v3, :cond_b

    goto/16 :goto_6

    :cond_8
    const/16 v3, 0x384

    const/16 v9, 0x1a

    if-ge v1, v9, :cond_9

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    :goto_3
    move-object v14, v15

    goto/16 :goto_9

    :cond_9
    if-ne v1, v9, :cond_a

    move-object v14, v15

    goto/16 :goto_8

    :cond_a
    if-ne v1, v3, :cond_b

    goto/16 :goto_6

    :cond_b
    :goto_4
    move-object v14, v15

    goto/16 :goto_c

    :cond_c
    if-ge v1, v9, :cond_d

    sget-object v3, Lc/d/d/w/d/e;->a:[C

    aget-char v1, v3, v1

    goto/16 :goto_9

    :cond_d
    if-ne v1, v9, :cond_e

    goto/16 :goto_6

    :cond_e
    const/16 v3, 0x391

    if-ne v1, v3, :cond_f

    aget v1, v4, v13

    goto/16 :goto_5

    :cond_f
    const/16 v3, 0x384

    if-ne v1, v3, :cond_23

    goto/16 :goto_6

    :cond_10
    const/16 v3, 0x19

    if-ge v1, v3, :cond_11

    sget-object v3, Lc/d/d/w/d/e;->b:[C

    aget-char v1, v3, v1

    goto/16 :goto_9

    :cond_11
    if-ne v1, v3, :cond_12

    sget-object v14, Lc/d/d/w/d/e$a;->f:Lc/d/d/w/d/e$a;

    goto/16 :goto_c

    :cond_12
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_13

    goto/16 :goto_8

    :cond_13
    const/16 v3, 0x1b

    if-ne v1, v3, :cond_14

    goto/16 :goto_a

    :cond_14
    const/16 v3, 0x1c

    if-ne v1, v3, :cond_15

    goto :goto_6

    :cond_15
    if-ne v1, v9, :cond_16

    goto/16 :goto_d

    :cond_16
    const/16 v3, 0x391

    if-ne v1, v3, :cond_17

    aget v1, v4, v13

    goto :goto_5

    :cond_17
    const/16 v3, 0x384

    if-ne v1, v3, :cond_23

    goto :goto_6

    :cond_18
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_19

    add-int/lit8 v1, v1, 0x61

    goto :goto_7

    :cond_19
    if-ne v1, v3, :cond_1a

    goto :goto_8

    :cond_1a
    const/16 v3, 0x1b

    if-ne v1, v3, :cond_1b

    sget-object v1, Lc/d/d/w/d/e$a;->g:Lc/d/d/w/d/e$a;

    move-object v15, v14

    const/16 v3, 0x391

    const/16 v9, 0x384

    move-object v14, v1

    goto/16 :goto_11

    :cond_1b
    const/16 v3, 0x1c

    if-ne v1, v3, :cond_1c

    goto :goto_b

    :cond_1c
    if-ne v1, v9, :cond_1d

    goto :goto_d

    :cond_1d
    const/16 v3, 0x391

    if-ne v1, v3, :cond_1e

    aget v1, v4, v13

    :goto_5
    const/16 v3, 0x391

    goto :goto_e

    :cond_1e
    const/16 v3, 0x384

    if-ne v1, v3, :cond_23

    :goto_6
    const/16 v3, 0x391

    const/16 v9, 0x384

    goto :goto_10

    :cond_1f
    const/16 v3, 0x1a

    if-ge v1, v3, :cond_20

    add-int/lit8 v1, v1, 0x41

    :goto_7
    int-to-char v1, v1

    goto :goto_9

    :cond_20
    if-ne v1, v3, :cond_21

    :goto_8
    const/16 v1, 0x20

    :goto_9
    const/16 v3, 0x391

    const/16 v9, 0x384

    goto :goto_12

    :cond_21
    const/16 v3, 0x1b

    if-ne v1, v3, :cond_22

    :goto_a
    move-object v14, v8

    goto :goto_c

    :cond_22
    const/16 v3, 0x1c

    if-ne v1, v3, :cond_24

    :goto_b
    move-object v14, v6

    :cond_23
    :goto_c
    const/16 v3, 0x391

    goto :goto_f

    :cond_24
    if-ne v1, v9, :cond_25

    :goto_d
    move-object v15, v14

    const/4 v1, 0x0

    const/16 v3, 0x391

    const/16 v9, 0x384

    move-object v14, v11

    goto :goto_12

    :cond_25
    const/16 v3, 0x391

    if-ne v1, v3, :cond_26

    aget v1, v4, v13

    :goto_e
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_f
    const/16 v9, 0x384

    goto :goto_11

    :cond_26
    const/16 v9, 0x384

    if-ne v1, v9, :cond_27

    :goto_10
    move-object v14, v12

    :cond_27
    :goto_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v9, 0x391

    const/16 v10, 0x384

    goto/16 :goto_2

    :cond_29
    return v5

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
