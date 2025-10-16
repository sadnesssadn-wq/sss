.class public final Lc/d/d/v/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:[I


# instance fields
.field public final a:[I

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc/d/d/v/n;->c:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lc/d/d/v/n;->a:[I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc/d/d/v/n;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a(ILc/d/d/s/a;[I)Lc/d/d/n;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lc/d/d/v/n;->b:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1
    iget-object v4, v0, Lc/d/d/v/n;->a:[I

    aput v3, v4, v3

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x2

    aput v3, v4, v6

    const/4 v7, 0x3

    aput v3, v4, v7

    .line 2
    iget v8, v1, Lc/d/d/s/a;->d:I

    .line 3
    aget v9, p3, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x30

    const/4 v13, 0x5

    const/16 v14, 0xa

    if-ge v10, v13, :cond_3

    if-ge v9, v8, :cond_3

    sget-object v13, Lc/d/d/v/p;->g:[[I

    invoke-static {v1, v4, v9, v13}, Lc/d/d/v/p;->i(Lc/d/d/s/a;[II[[I)I

    move-result v13

    rem-int/lit8 v15, v13, 0xa

    add-int/2addr v15, v12

    int-to-char v12, v15

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v12, v4

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v12, :cond_0

    aget v16, v4, v15

    add-int v9, v9, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_0
    if-lt v13, v14, :cond_1

    rsub-int/lit8 v12, v10, 0x4

    shl-int v12, v5, v12

    or-int/2addr v11, v12

    :cond_1
    const/4 v12, 0x4

    if-eq v10, v12, :cond_2

    invoke-virtual {v1, v9}, Lc/d/d/s/a;->b(I)I

    move-result v9

    invoke-virtual {v1, v9}, Lc/d/d/s/a;->c(I)I

    move-result v9

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v13, :cond_13

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v14, :cond_12

    .line 4
    sget-object v4, Lc/d/d/v/n;->c:[I

    aget v4, v4, v1

    if-ne v11, v4, :cond_11

    .line 5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v10, v8, -0x2

    const/4 v11, 0x0

    :goto_3
    if-ltz v10, :cond_4

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    add-int/lit8 v15, v15, -0x30

    add-int/2addr v11, v15

    add-int/lit8 v10, v10, -0x2

    goto :goto_3

    :cond_4
    mul-int/lit8 v11, v11, 0x3

    add-int/lit8 v8, v8, -0x1

    :goto_4
    if-ltz v8, :cond_5

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x30

    add-int/2addr v11, v10

    add-int/lit8 v8, v8, -0x2

    goto :goto_4

    :cond_5
    mul-int/lit8 v11, v11, 0x3

    rem-int/2addr v11, v14

    if-ne v11, v1, :cond_10

    .line 7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    if-eq v2, v13, :cond_6

    goto/16 :goto_9

    .line 9
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v12, :cond_c

    const/16 v7, 0x35

    if-eq v2, v7, :cond_b

    const/16 v7, 0x39

    if-eq v2, v7, :cond_7

    goto :goto_5

    :cond_7
    const-string v2, "90000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v4

    goto :goto_8

    :cond_8
    const-string v2, "99991"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "0.00"

    goto :goto_8

    :cond_9
    const-string v2, "99990"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Used"

    goto :goto_8

    :cond_a
    :goto_5
    const-string v2, ""

    goto :goto_6

    :cond_b
    const-string v2, "$"

    goto :goto_6

    :cond_c
    const-string v2, "\u00a3"

    :goto_6
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    div-int/lit8 v8, v7, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    rem-int/lit8 v7, v7, 0x64

    if-ge v7, v14, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "0"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_d
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    if-nez v2, :cond_e

    :goto_9
    move-object v7, v4

    goto :goto_a

    .line 10
    :cond_e
    new-instance v7, Ljava/util/EnumMap;

    const-class v8, Lc/d/d/o;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v8, Lc/d/d/o;->h:Lc/d/d/o;

    invoke-virtual {v7, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :goto_a
    new-instance v2, Lc/d/d/n;

    new-array v6, v6, [Lc/d/d/p;

    new-instance v8, Lc/d/d/p;

    aget v10, p3, v3

    aget v11, p3, v5

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v15, p1

    int-to-float v11, v15

    invoke-direct {v8, v10, v11}, Lc/d/d/p;-><init>(FF)V

    aput-object v8, v6, v3

    new-instance v3, Lc/d/d/p;

    int-to-float v8, v9

    invoke-direct {v3, v8, v11}, Lc/d/d/p;-><init>(FF)V

    aput-object v3, v6, v5

    sget-object v3, Lc/d/d/a;->s:Lc/d/d/a;

    invoke-direct {v2, v1, v4, v6, v3}, Lc/d/d/n;-><init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V

    if-eqz v7, :cond_f

    invoke-virtual {v2, v7}, Lc/d/d/n;->a(Ljava/util/Map;)V

    :cond_f
    return-object v2

    .line 12
    :cond_10
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 13
    throw v1

    :cond_11
    move/from16 v15, p1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 14
    :cond_12
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 15
    throw v1

    .line 16
    :cond_13
    sget-object v1, Lc/d/d/j;->e:Lc/d/d/j;

    .line 17
    goto :goto_c

    :goto_b
    throw v1

    :goto_c
    goto :goto_b
.end method
