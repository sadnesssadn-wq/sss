.class public final Lio/jsonwebtoken/Jwts;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lio/jsonwebtoken/JwtBuilder;
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwtBuilder;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultJwtBuilder;-><init>()V

    return-object v0
.end method

.method public static claims()Lio/jsonwebtoken/Claims;
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/DefaultClaims;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultClaims;-><init>()V

    return-object v0
.end method

.method public static claims(Ljava/util/Map;)Lio/jsonwebtoken/Claims;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/Claims;"
        }
    .end annotation

    new-instance v0, Lio/jsonwebtoken/impl/DefaultClaims;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultClaims;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static header()Lio/jsonwebtoken/Header;
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/DefaultHeader;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultHeader;-><init>()V

    return-object v0
.end method

.method public static header(Ljava/util/Map;)Lio/jsonwebtoken/Header;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/Header;"
        }
    .end annotation

    new-instance v0, Lio/jsonwebtoken/impl/DefaultHeader;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultHeader;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static jwsHeader()Lio/jsonwebtoken/JwsHeader;
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwsHeader;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultJwsHeader;-><init>()V

    return-object v0
.end method

.method public static jwsHeader(Ljava/util/Map;)Lio/jsonwebtoken/JwsHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/JwsHeader;"
        }
    .end annotation

    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwsHeader;

    invoke-direct {v0, p0}, Lio/jsonwebtoken/impl/DefaultJwsHeader;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static parser()Lio/jsonwebtoken/JwtParser;
    .locals 1

    new-instance v0, Lio/jsonwebtoken/impl/DefaultJwtParser;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/DefaultJwtParser;-><init>()V

    return-object v0
.end method
