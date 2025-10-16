.class public final Lc/d/d/w/d/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[[F


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    sget-object v0, Lc/d/d/w/a;->b:[I

    array-length v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/16 v4, 0x8

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v1, v2, v5

    const-class v1, F

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    sput-object v1, Lc/d/d/w/d/i;->a:[[F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget v2, v0, v1

    and-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    const/4 v8, 0x0

    :goto_2
    and-int/lit8 v9, v2, 0x1

    if-ne v9, v6, :cond_0

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    shr-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    sget-object v6, Lc/d/d/w/d/i;->a:[[F

    aget-object v6, v6, v1

    rsub-int/lit8 v10, v7, 0x8

    sub-int/2addr v10, v3

    const/high16 v11, 0x41880000    # 17.0f

    div-float/2addr v8, v11

    aput v8, v6, v10

    add-int/lit8 v7, v7, 0x1

    move v6, v9

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
