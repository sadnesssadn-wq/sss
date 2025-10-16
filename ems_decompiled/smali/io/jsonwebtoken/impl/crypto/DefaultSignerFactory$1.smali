.class public synthetic Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lio/jsonwebtoken/SignatureAlgorithm;->values()[Lio/jsonwebtoken/SignatureAlgorithm;

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    :try_start_0
    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->HS256:Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->HS384:Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v1, 0x2

    aput v1, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->HS512:Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v1, 0x3

    aput v1, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->RS256:Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v1, 0x4

    aput v1, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->RS384:Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v1, 0x5

    aput v1, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->RS512:Lio/jsonwebtoken/SignatureAlgorithm;

    const/4 v1, 0x6

    aput v1, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v0, 0x7

    const/16 v1, 0xa

    :try_start_6
    sget-object v2, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v3, Lio/jsonwebtoken/SignatureAlgorithm;->PS256:Lio/jsonwebtoken/SignatureAlgorithm;

    aput v0, v2, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v2, 0x8

    const/16 v3, 0xb

    :try_start_7
    sget-object v4, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v5, Lio/jsonwebtoken/SignatureAlgorithm;->PS384:Lio/jsonwebtoken/SignatureAlgorithm;

    aput v2, v4, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v4, 0x9

    const/16 v5, 0xc

    :try_start_8
    sget-object v6, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v7, Lio/jsonwebtoken/SignatureAlgorithm;->PS512:Lio/jsonwebtoken/SignatureAlgorithm;

    aput v4, v6, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v7, Lio/jsonwebtoken/SignatureAlgorithm;->ES256:Lio/jsonwebtoken/SignatureAlgorithm;

    aput v1, v6, v0
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->ES384:Lio/jsonwebtoken/SignatureAlgorithm;

    aput v3, v0, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignerFactory$1;->$SwitchMap$io$jsonwebtoken$SignatureAlgorithm:[I

    sget-object v1, Lio/jsonwebtoken/SignatureAlgorithm;->ES512:Lio/jsonwebtoken/SignatureAlgorithm;

    aput v5, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
