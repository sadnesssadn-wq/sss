.class public final Lio/jsonwebtoken/CompressionCodecs;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFLATE:Lio/jsonwebtoken/CompressionCodec;

.field public static final GZIP:Lio/jsonwebtoken/CompressionCodec;

.field private static final INSTANCE:Lio/jsonwebtoken/CompressionCodecs;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/jsonwebtoken/CompressionCodecs;

    invoke-direct {v0}, Lio/jsonwebtoken/CompressionCodecs;-><init>()V

    sput-object v0, Lio/jsonwebtoken/CompressionCodecs;->INSTANCE:Lio/jsonwebtoken/CompressionCodecs;

    new-instance v0, Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/DeflateCompressionCodec;-><init>()V

    sput-object v0, Lio/jsonwebtoken/CompressionCodecs;->DEFLATE:Lio/jsonwebtoken/CompressionCodec;

    new-instance v0, Lio/jsonwebtoken/impl/compression/GzipCompressionCodec;

    invoke-direct {v0}, Lio/jsonwebtoken/impl/compression/GzipCompressionCodec;-><init>()V

    sput-object v0, Lio/jsonwebtoken/CompressionCodecs;->GZIP:Lio/jsonwebtoken/CompressionCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
