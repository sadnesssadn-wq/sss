.class public Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final _classNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/UUID;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/StackTraceElement;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-class v2, Ljava/nio/ByteBuffer;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v7, v1, v2

    sget-object v8, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1
    :cond_0
    sget v1, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->c:I

    const/16 v1, 0xd

    new-array v2, v1, [Ljava/lang/Class;

    const-class v7, Ljava/io/File;

    aput-object v7, v2, v3

    const-class v7, Ljava/net/URL;

    aput-object v7, v2, v4

    const-class v4, Ljava/net/URI;

    aput-object v4, v2, v5

    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v6

    const-class v4, Lcom/fasterxml/jackson/databind/JavaType;

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-class v4, Ljava/util/Currency;

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-class v4, Ljava/util/regex/Pattern;

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-class v4, Ljava/nio/charset/Charset;

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-class v4, Ljava/util/TimeZone;

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-class v4, Ljava/net/InetAddress;

    aput-object v4, v2, v0

    const/16 v0, 0xb

    const-class v4, Ljava/net/InetSocketAddress;

    aput-object v4, v2, v0

    const/16 v0, 0xc

    const-class v4, Ljava/lang/StringBuilder;

    aput-object v4, v2, v0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 2
    aget-object v0, v2, v3

    sget-object v4, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->_classNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
