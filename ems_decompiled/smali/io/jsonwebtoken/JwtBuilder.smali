.class public interface abstract Lio/jsonwebtoken/JwtBuilder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/jsonwebtoken/ClaimsMutator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/jsonwebtoken/ClaimsMutator<",
        "Lio/jsonwebtoken/JwtBuilder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addClaims(Ljava/util/Map;)Lio/jsonwebtoken/JwtBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/JwtBuilder;"
        }
    .end annotation
.end method

.method public abstract claim(Ljava/lang/String;Ljava/lang/Object;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract compact()Ljava/lang/String;
.end method

.method public abstract compressWith(Lio/jsonwebtoken/CompressionCodec;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setAudience(Ljava/lang/String;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setClaims(Lio/jsonwebtoken/Claims;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setClaims(Ljava/util/Map;)Lio/jsonwebtoken/JwtBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/JwtBuilder;"
        }
    .end annotation
.end method

.method public abstract setExpiration(Ljava/util/Date;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setHeader(Lio/jsonwebtoken/Header;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setHeader(Ljava/util/Map;)Lio/jsonwebtoken/JwtBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/JwtBuilder;"
        }
    .end annotation
.end method

.method public abstract setHeaderParam(Ljava/lang/String;Ljava/lang/Object;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setHeaderParams(Ljava/util/Map;)Lio/jsonwebtoken/JwtBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/jsonwebtoken/JwtBuilder;"
        }
    .end annotation
.end method

.method public abstract setId(Ljava/lang/String;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setIssuedAt(Ljava/util/Date;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setIssuer(Ljava/lang/String;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setNotBefore(Ljava/util/Date;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setPayload(Ljava/lang/String;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract setSubject(Ljava/lang/String;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract signWith(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/lang/String;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract signWith(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)Lio/jsonwebtoken/JwtBuilder;
.end method

.method public abstract signWith(Lio/jsonwebtoken/SignatureAlgorithm;[B)Lio/jsonwebtoken/JwtBuilder;
.end method
