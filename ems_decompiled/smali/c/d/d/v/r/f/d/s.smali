.class public final Lc/d/d/v/r/f/d/s;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/d/s/a;

.field public final b:Lc/d/d/v/r/f/d/m;

.field public final c:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lc/d/d/s/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/d/v/r/f/d/m;

    invoke-direct {v0}, Lc/d/d/v/r/f/d/m;-><init>()V

    iput-object v0, p0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    return-void
.end method

.method public static d(Lc/d/d/s/a;II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lc/d/d/s/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, p2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p2, v1}, Lc/d/d/v/r/f/d/s;->b(ILjava/lang/String;)Lc/d/d/v/r/f/d/o;

    move-result-object v1

    .line 1
    iget-object v2, v1, Lc/d/d/v/r/f/d/o;->b:Ljava/lang/String;

    .line 2
    invoke-static {v2}, Lc/d/d/v/r/f/d/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-boolean v2, v1, Lc/d/d/v/r/f/d/o;->d:Z

    if-eqz v2, :cond_1

    .line 4
    iget v2, v1, Lc/d/d/v/r/f/d/o;->c:I

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 6
    :goto_1
    iget v1, v1, Lc/d/d/v/r/f/d/q;->a:I

    if-eq p2, v1, :cond_2

    move p2, v1

    move-object v1, v2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(ILjava/lang/String;)Lc/d/d/v/r/f/d/o;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz v1, :cond_0

    iget-object v2, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    move/from16 v2, p1

    .line 1
    iput v2, v1, Lc/d/d/v/r/f/d/m;->a:I

    .line 2
    sget-object v1, Lc/d/d/v/r/f/d/m$a;->c:Lc/d/d/v/r/f/d/m$a;

    sget-object v2, Lc/d/d/v/r/f/d/m$a;->e:Lc/d/d/v/r/f/d/m$a;

    sget-object v4, Lc/d/d/v/r/f/d/m$a;->d:Lc/d/d/v/r/f/d/m$a;

    :goto_0
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 3
    iget v6, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 4
    iget-object v5, v5, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    if-ne v5, v4, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0xf

    const/16 v10, 0x10

    const/16 v12, 0x20

    const/16 v13, 0x3f

    const/16 v3, 0x24

    const/4 v14, 0x5

    if-eqz v8, :cond_f

    .line 5
    :goto_2
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 6
    iget v5, v5, Lc/d/d/v/r/f/d/m;->a:I

    add-int/lit8 v8, v5, 0x5

    .line 7
    iget-object v15, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 8
    iget v7, v15, Lc/d/d/s/a;->d:I

    const/4 v11, 0x6

    if-le v8, v7, :cond_2

    goto :goto_4

    .line 9
    :cond_2
    invoke-static {v15, v5, v14}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v7

    if-lt v7, v14, :cond_3

    if-ge v7, v10, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v5, 0x6

    .line 10
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 11
    iget v15, v8, Lc/d/d/s/a;->d:I

    if-le v7, v15, :cond_4

    goto :goto_4

    .line 12
    :cond_4
    invoke-static {v8, v5, v11}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v5

    if-lt v5, v10, :cond_5

    if-ge v5, v13, :cond_5

    :goto_3
    const/4 v5, 0x1

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_b

    .line 13
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 14
    iget v5, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 15
    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v7, v5, v14}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 16
    new-instance v7, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v7, v5, v3}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    goto :goto_6

    :cond_6
    if-lt v7, v14, :cond_7

    if-ge v7, v9, :cond_7

    new-instance v8, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v7, v7, 0x30

    sub-int/2addr v7, v14

    int-to-char v7, v7

    invoke-direct {v8, v5, v7}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    move-object v7, v8

    :goto_6
    const/16 v8, 0x3a

    goto :goto_9

    .line 17
    :cond_7
    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v7, v5, v11}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v7

    const/16 v8, 0x3a

    if-lt v7, v12, :cond_8

    if-ge v7, v8, :cond_8

    .line 18
    new-instance v11, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v7, v7, 0x21

    int-to-char v7, v7

    invoke-direct {v11, v5, v7}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    :goto_7
    move-object v7, v11

    goto :goto_9

    :cond_8
    packed-switch v7, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Decoding invalid alphanumeric value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v7, 0x2f

    goto :goto_8

    :pswitch_1
    const/16 v7, 0x2e

    goto :goto_8

    :pswitch_2
    const/16 v7, 0x2d

    goto :goto_8

    :pswitch_3
    const/16 v7, 0x2c

    goto :goto_8

    :pswitch_4
    const/16 v7, 0x2a

    :goto_8
    new-instance v11, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x6

    invoke-direct {v11, v5, v7}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    goto :goto_7

    .line 19
    :goto_9
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 20
    iget v11, v7, Lc/d/d/v/r/f/d/q;->a:I

    .line 21
    iput v11, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 22
    iget-char v5, v7, Lc/d/d/v/r/f/d/n;->b:C

    if-ne v5, v3, :cond_9

    const/4 v7, 0x1

    goto :goto_a

    :cond_9
    const/4 v7, 0x0

    :goto_a
    if-eqz v7, :cond_a

    .line 23
    new-instance v3, Lc/d/d/v/r/f/d/o;

    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v11, v5}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;)V

    new-instance v5, Lc/d/d/v/r/f/d/l;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    goto/16 :goto_17

    :cond_a
    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 24
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    .line 25
    invoke-virtual {v0, v3}, Lc/d/d/v/r/f/d/s;->e(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lc/d/d/v/r/f/d/m;->a(I)V

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 26
    iput-object v1, v3, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    goto :goto_c

    .line 27
    :cond_c
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 28
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    .line 29
    invoke-virtual {v0, v3}, Lc/d/d/v/r/f/d/s;->f(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 30
    iget v5, v3, Lc/d/d/v/r/f/d/m;->a:I

    add-int/2addr v5, v14

    .line 31
    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 32
    iget v7, v7, Lc/d/d/s/a;->d:I

    if-ge v5, v7, :cond_d

    .line 33
    invoke-virtual {v3, v14}, Lc/d/d/v/r/f/d/m;->a(I)V

    goto :goto_b

    .line 34
    :cond_d
    iput v7, v3, Lc/d/d/v/r/f/d/m;->a:I

    .line 35
    :goto_b
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 36
    iput-object v2, v3, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    .line 37
    :cond_e
    :goto_c
    new-instance v5, Lc/d/d/v/r/f/d/l;

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 38
    invoke-direct {v5, v3, v7}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    goto/16 :goto_17

    :cond_f
    const/16 v8, 0x3a

    if-ne v5, v2, :cond_10

    const/4 v5, 0x1

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    :goto_d
    const/4 v7, 0x7

    if-eqz v5, :cond_21

    .line 39
    :goto_e
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 40
    iget v5, v5, Lc/d/d/v/r/f/d/m;->a:I

    add-int/lit8 v11, v5, 0x5

    .line 41
    iget-object v15, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 42
    iget v8, v15, Lc/d/d/s/a;->d:I

    const/16 v12, 0x74

    const/16 v13, 0x40

    const/16 v3, 0x8

    if-le v11, v8, :cond_11

    goto :goto_10

    .line 43
    :cond_11
    invoke-static {v15, v5, v14}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v8

    if-lt v8, v14, :cond_12

    if-ge v8, v10, :cond_12

    goto :goto_f

    :cond_12
    add-int/lit8 v8, v5, 0x7

    .line 44
    iget-object v11, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 45
    iget v15, v11, Lc/d/d/s/a;->d:I

    if-le v8, v15, :cond_13

    goto :goto_10

    .line 46
    :cond_13
    invoke-static {v11, v5, v7}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v8

    if-lt v8, v13, :cond_14

    if-ge v8, v12, :cond_14

    goto :goto_f

    :cond_14
    add-int/lit8 v8, v5, 0x8

    .line 47
    iget-object v11, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 48
    iget v15, v11, Lc/d/d/s/a;->d:I

    if-le v8, v15, :cond_15

    goto :goto_10

    .line 49
    :cond_15
    invoke-static {v11, v5, v3}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v5

    const/16 v8, 0xe8

    if-lt v5, v8, :cond_16

    const/16 v8, 0xfd

    if-ge v5, v8, :cond_16

    :goto_f
    const/4 v5, 0x1

    goto :goto_11

    :cond_16
    :goto_10
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_1d

    .line 50
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 51
    iget v5, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 52
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v8, v5, v14}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v8

    if-ne v8, v9, :cond_17

    .line 53
    new-instance v3, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x5

    const/16 v8, 0x24

    invoke-direct {v3, v5, v8}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    goto/16 :goto_13

    :cond_17
    if-lt v8, v14, :cond_18

    if-ge v8, v9, :cond_18

    new-instance v3, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x5

    add-int/lit8 v8, v8, 0x30

    sub-int/2addr v8, v14

    int-to-char v8, v8

    invoke-direct {v3, v5, v8}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    goto/16 :goto_13

    .line 54
    :cond_18
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v8, v5, v7}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v8

    const/16 v11, 0x5a

    if-lt v8, v13, :cond_19

    if-ge v8, v11, :cond_19

    .line 55
    new-instance v3, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v8, v8, 0x1

    int-to-char v8, v8

    invoke-direct {v3, v5, v8}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    goto/16 :goto_13

    :cond_19
    if-lt v8, v11, :cond_1a

    if-ge v8, v12, :cond_1a

    new-instance v3, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v8, v8, 0x7

    int-to-char v8, v8

    invoke-direct {v3, v5, v8}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    goto/16 :goto_13

    .line 56
    :cond_1a
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v8, v5, v3}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 57
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object v1

    throw v1

    :pswitch_5
    const/16 v3, 0x20

    goto :goto_12

    :pswitch_6
    const/16 v3, 0x5f

    goto :goto_12

    :pswitch_7
    const/16 v3, 0x3f

    goto :goto_12

    :pswitch_8
    const/16 v3, 0x3e

    goto :goto_12

    :pswitch_9
    const/16 v3, 0x3d

    goto :goto_12

    :pswitch_a
    const/16 v3, 0x3c

    goto :goto_12

    :pswitch_b
    const/16 v3, 0x3b

    goto :goto_12

    :pswitch_c
    const/16 v3, 0x3a

    goto :goto_12

    :pswitch_d
    const/16 v3, 0x2f

    goto :goto_12

    :pswitch_e
    const/16 v3, 0x2e

    goto :goto_12

    :pswitch_f
    const/16 v3, 0x2d

    goto :goto_12

    :pswitch_10
    const/16 v3, 0x2c

    goto :goto_12

    :pswitch_11
    const/16 v3, 0x2b

    goto :goto_12

    :pswitch_12
    const/16 v3, 0x2a

    goto :goto_12

    :pswitch_13
    const/16 v3, 0x29

    goto :goto_12

    :pswitch_14
    const/16 v3, 0x28

    goto :goto_12

    :pswitch_15
    const/16 v3, 0x27

    goto :goto_12

    :pswitch_16
    const/16 v3, 0x26

    goto :goto_12

    :pswitch_17
    const/16 v3, 0x25

    goto :goto_12

    :pswitch_18
    const/16 v3, 0x22

    goto :goto_12

    :pswitch_19
    const/16 v3, 0x21

    :goto_12
    new-instance v8, Lc/d/d/v/r/f/d/n;

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v8, v5, v3}, Lc/d/d/v/r/f/d/n;-><init>(IC)V

    move-object v3, v8

    .line 58
    :goto_13
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 59
    iget v8, v3, Lc/d/d/v/r/f/d/q;->a:I

    .line 60
    iput v8, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 61
    iget-char v3, v3, Lc/d/d/v/r/f/d/n;->b:C

    const/16 v5, 0x24

    if-ne v3, v5, :cond_1b

    const/4 v11, 0x1

    goto :goto_14

    :cond_1b
    const/4 v11, 0x0

    :goto_14
    if-eqz v11, :cond_1c

    .line 62
    new-instance v3, Lc/d/d/v/r/f/d/o;

    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v8, v5}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;)V

    new-instance v5, Lc/d/d/v/r/f/d/l;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    goto :goto_17

    :cond_1c
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    const/16 v8, 0x3a

    const/16 v12, 0x20

    const/16 v13, 0x3f

    goto/16 :goto_e

    :cond_1d
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 63
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    .line 64
    invoke-virtual {v0, v3}, Lc/d/d/v/r/f/d/s;->e(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lc/d/d/v/r/f/d/m;->a(I)V

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 65
    iput-object v1, v3, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    goto :goto_16

    .line 66
    :cond_1e
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 67
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    .line 68
    invoke-virtual {v0, v3}, Lc/d/d/v/r/f/d/s;->f(I)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 69
    iget v5, v3, Lc/d/d/v/r/f/d/m;->a:I

    add-int/2addr v5, v14

    .line 70
    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 71
    iget v7, v7, Lc/d/d/s/a;->d:I

    if-ge v5, v7, :cond_1f

    .line 72
    invoke-virtual {v3, v14}, Lc/d/d/v/r/f/d/m;->a(I)V

    goto :goto_15

    .line 73
    :cond_1f
    iput v7, v3, Lc/d/d/v/r/f/d/m;->a:I

    .line 74
    :goto_15
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 75
    iput-object v4, v3, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    .line 76
    :cond_20
    :goto_16
    new-instance v5, Lc/d/d/v/r/f/d/l;

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-direct {v5, v3, v7}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    .line 78
    :goto_17
    iget-boolean v3, v5, Lc/d/d/v/r/f/d/l;->b:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_25

    .line 79
    :cond_21
    :goto_18
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 80
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    add-int/lit8 v5, v3, 0x7

    .line 81
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 82
    iget v8, v8, Lc/d/d/s/a;->d:I

    if-le v5, v8, :cond_23

    add-int/lit8 v3, v3, 0x4

    if-gt v3, v8, :cond_22

    goto :goto_1a

    :cond_22
    const/4 v3, 0x0

    goto :goto_1b

    :cond_23
    move v5, v3

    :goto_19
    add-int/lit8 v8, v3, 0x3

    if-ge v5, v8, :cond_25

    .line 83
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-virtual {v8, v5}, Lc/d/d/s/a;->a(I)Z

    move-result v8

    if-eqz v8, :cond_24

    :goto_1a
    const/4 v3, 0x1

    goto :goto_1b

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_25
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-virtual {v3, v8}, Lc/d/d/s/a;->a(I)Z

    move-result v3

    :goto_1b
    const/4 v5, 0x4

    if-eqz v3, :cond_2e

    .line 84
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 85
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    add-int/lit8 v8, v3, 0x7

    .line 86
    iget-object v9, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 87
    iget v10, v9, Lc/d/d/s/a;->d:I

    const/16 v11, 0xa

    if-le v8, v10, :cond_27

    .line 88
    invoke-static {v9, v3, v5}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v3

    if-nez v3, :cond_26

    .line 89
    new-instance v3, Lc/d/d/v/r/f/d/p;

    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 90
    iget v5, v5, Lc/d/d/s/a;->d:I

    .line 91
    invoke-direct {v3, v5, v11, v11}, Lc/d/d/v/r/f/d/p;-><init>(III)V

    goto :goto_1c

    :cond_26
    new-instance v5, Lc/d/d/v/r/f/d/p;

    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 92
    iget v8, v8, Lc/d/d/s/a;->d:I

    add-int/lit8 v3, v3, -0x1

    .line 93
    invoke-direct {v5, v8, v3, v11}, Lc/d/d/v/r/f/d/p;-><init>(III)V

    move-object v3, v5

    goto :goto_1c

    .line 94
    :cond_27
    invoke-static {v9, v3, v7}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    .line 95
    div-int/lit8 v5, v3, 0xb

    rem-int/lit8 v3, v3, 0xb

    new-instance v9, Lc/d/d/v/r/f/d/p;

    invoke-direct {v9, v8, v5, v3}, Lc/d/d/v/r/f/d/p;-><init>(III)V

    move-object v3, v9

    .line 96
    :goto_1c
    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 97
    iget v8, v3, Lc/d/d/v/r/f/d/q;->a:I

    .line 98
    iput v8, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 99
    iget v5, v3, Lc/d/d/v/r/f/d/p;->b:I

    if-ne v5, v11, :cond_28

    const/4 v9, 0x1

    goto :goto_1d

    :cond_28
    const/4 v9, 0x0

    :goto_1d
    if-eqz v9, :cond_2b

    .line 100
    iget v5, v3, Lc/d/d/v/r/f/d/p;->c:I

    if-ne v5, v11, :cond_29

    const/4 v5, 0x1

    goto :goto_1e

    :cond_29
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_2a

    .line 101
    new-instance v3, Lc/d/d/v/r/f/d/o;

    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v8, v5}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;)V

    goto :goto_1f

    :cond_2a
    new-instance v5, Lc/d/d/v/r/f/d/o;

    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    iget v3, v3, Lc/d/d/v/r/f/d/p;->c:I

    .line 103
    invoke-direct {v5, v8, v7, v3}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;I)V

    move-object v3, v5

    :goto_1f
    new-instance v5, Lc/d/d/v/r/f/d/l;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_24

    :cond_2b
    iget-object v8, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    iget v3, v3, Lc/d/d/v/r/f/d/p;->c:I

    if-ne v3, v11, :cond_2c

    const/4 v5, 0x1

    goto :goto_20

    :cond_2c
    const/4 v5, 0x0

    :goto_20
    if-eqz v5, :cond_2d

    .line 105
    new-instance v3, Lc/d/d/v/r/f/d/o;

    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 106
    iget v5, v5, Lc/d/d/v/r/f/d/m;->a:I

    .line 107
    iget-object v7, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v5, v7}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;)V

    new-instance v5, Lc/d/d/v/r/f/d/l;

    const/4 v8, 0x1

    invoke-direct {v5, v3, v8}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    const/4 v7, 0x0

    goto :goto_24

    :cond_2d
    const/4 v8, 0x1

    iget-object v5, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    :cond_2e
    const/4 v8, 0x1

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 108
    iget v3, v3, Lc/d/d/v/r/f/d/m;->a:I

    add-int/lit8 v7, v3, 0x1

    .line 109
    iget-object v9, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 110
    iget v9, v9, Lc/d/d/s/a;->d:I

    if-le v7, v9, :cond_2f

    goto :goto_22

    :cond_2f
    const/4 v7, 0x0

    :goto_21
    if-ge v7, v5, :cond_31

    add-int v9, v7, v3

    .line 111
    iget-object v10, v0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 112
    iget v11, v10, Lc/d/d/s/a;->d:I

    if-ge v9, v11, :cond_31

    .line 113
    invoke-virtual {v10, v9}, Lc/d/d/s/a;->a(I)Z

    move-result v9

    if-eqz v9, :cond_30

    :goto_22
    const/4 v7, 0x0

    goto :goto_23

    :cond_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_31
    const/4 v7, 0x1

    :goto_23
    if-eqz v7, :cond_32

    .line 114
    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 115
    iput-object v4, v3, Lc/d/d/v/r/f/d/m;->b:Lc/d/d/v/r/f/d/m$a;

    .line 116
    invoke-virtual {v3, v5}, Lc/d/d/v/r/f/d/m;->a(I)V

    :cond_32
    new-instance v3, Lc/d/d/v/r/f/d/l;

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 117
    invoke-direct {v3, v5, v7}, Lc/d/d/v/r/f/d/l;-><init>(Lc/d/d/v/r/f/d/o;Z)V

    move-object v5, v3

    .line 118
    :goto_24
    iget-boolean v3, v5, Lc/d/d/v/r/f/d/l;->b:Z

    .line 119
    :goto_25
    iget-object v9, v0, Lc/d/d/v/r/f/d/s;->b:Lc/d/d/v/r/f/d/m;

    .line 120
    iget v9, v9, Lc/d/d/v/r/f/d/m;->a:I

    if-eq v6, v9, :cond_33

    goto :goto_26

    :cond_33
    const/4 v8, 0x0

    :goto_26
    if-nez v8, :cond_34

    if-eqz v3, :cond_35

    :cond_34
    if-eqz v3, :cond_37

    .line 121
    :cond_35
    iget-object v1, v5, Lc/d/d/v/r/f/d/l;->a:Lc/d/d/v/r/f/d/o;

    if-eqz v1, :cond_36

    .line 122
    iget-boolean v2, v1, Lc/d/d/v/r/f/d/o;->d:Z

    if-eqz v2, :cond_36

    .line 123
    new-instance v2, Lc/d/d/v/r/f/d/o;

    iget-object v3, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    iget v1, v1, Lc/d/d/v/r/f/d/o;->c:I

    .line 125
    invoke-direct {v2, v9, v3, v1}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;I)V

    return-object v2

    :cond_36
    new-instance v1, Lc/d/d/v/r/f/d/o;

    iget-object v2, v0, Lc/d/d/v/r/f/d/s;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v9, v2}, Lc/d/d/v/r/f/d/o;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_37
    const/4 v3, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    .end packed-switch
.end method

.method public c(II)I
    .locals 1

    iget-object v0, p0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-static {v0, p1, p2}, Lc/d/d/v/r/f/d/s;->d(Lc/d/d/s/a;II)I

    move-result p1

    return p1
.end method

.method public final e(I)Z
    .locals 3

    add-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 1
    iget v1, v1, Lc/d/d/s/a;->d:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    .line 2
    iget-object v1, p0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    invoke-virtual {v1, p1}, Lc/d/d/s/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final f(I)Z
    .locals 5

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 1
    iget v1, v1, Lc/d/d/s/a;->d:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    add-int v1, v0, p1

    .line 2
    iget-object v3, p0, Lc/d/d/v/r/f/d/s;->a:Lc/d/d/s/a;

    .line 3
    iget v4, v3, Lc/d/d/s/a;->d:I

    if-ge v1, v4, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    add-int/lit8 v1, p1, 0x2

    .line 4
    invoke-virtual {v3, v1}, Lc/d/d/s/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_1
    invoke-virtual {v3, v1}, Lc/d/d/s/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
