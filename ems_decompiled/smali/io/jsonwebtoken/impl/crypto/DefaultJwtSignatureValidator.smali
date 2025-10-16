.class public Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/jsonwebtoken/impl/crypto/JwtSignatureValidator;


# static fields
.field private static final US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private final signatureValidator:Lio/jsonwebtoken/impl/crypto/SignatureValidator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 1

    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultSignatureValidatorFactory;->INSTANCE:Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;

    invoke-direct {p0, v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;-><init>(Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V

    return-void
.end method

.method public constructor <init>(Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SignerFactory argument cannot be null."

    invoke-static {p1, v0}, Lio/jsonwebtoken/lang/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lio/jsonwebtoken/impl/crypto/SignatureValidatorFactory;->createSignatureValidator(Lio/jsonwebtoken/SignatureAlgorithm;Ljava/security/Key;)Lio/jsonwebtoken/impl/crypto/SignatureValidator;

    move-result-object p1

    iput-object p1, p0, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;->signatureValidator:Lio/jsonwebtoken/impl/crypto/SignatureValidator;

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    sget-object v0, Lio/jsonwebtoken/impl/TextCodec;->BASE64URL:Lio/jsonwebtoken/impl/TextCodec;

    invoke-interface {v0, p2}, Lio/jsonwebtoken/impl/TextCodec;->decode(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v0, p0, Lio/jsonwebtoken/impl/crypto/DefaultJwtSignatureValidator;->signatureValidator:Lio/jsonwebtoken/impl/crypto/SignatureValidator;

    invoke-interface {v0, p1, p2}, Lio/jsonwebtoken/impl/crypto/SignatureValidator;->isValid([B[B)Z

    move-result p1

    return p1
.end method
