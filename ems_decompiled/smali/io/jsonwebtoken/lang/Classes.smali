.class public final Lio/jsonwebtoken/lang/Classes;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/jsonwebtoken/lang/Classes$ExceptionIgnoringAccessor;,
        Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;
    }
.end annotation


# static fields
.field private static final CLASS_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

.field private static final INSTANCE:Lio/jsonwebtoken/lang/Classes;

.field private static final SYSTEM_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

.field private static final THREAD_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/jsonwebtoken/lang/Classes;

    invoke-direct {v0}, Lio/jsonwebtoken/lang/Classes;-><init>()V

    sput-object v0, Lio/jsonwebtoken/lang/Classes;->INSTANCE:Lio/jsonwebtoken/lang/Classes;

    new-instance v0, Lio/jsonwebtoken/lang/Classes$1;

    invoke-direct {v0}, Lio/jsonwebtoken/lang/Classes$1;-><init>()V

    sput-object v0, Lio/jsonwebtoken/lang/Classes;->THREAD_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    new-instance v0, Lio/jsonwebtoken/lang/Classes$2;

    invoke-direct {v0}, Lio/jsonwebtoken/lang/Classes$2;-><init>()V

    sput-object v0, Lio/jsonwebtoken/lang/Classes;->CLASS_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    new-instance v0, Lio/jsonwebtoken/lang/Classes$3;

    invoke-direct {v0}, Lio/jsonwebtoken/lang/Classes$3;-><init>()V

    sput-object v0, Lio/jsonwebtoken/lang/Classes;->SYSTEM_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    sget-object v0, Lio/jsonwebtoken/lang/Classes;->THREAD_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    invoke-interface {v0, p0}, Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/jsonwebtoken/lang/Classes;->CLASS_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    invoke-interface {v0, p0}, Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lio/jsonwebtoken/lang/Classes;->SYSTEM_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    invoke-interface {v0, p0}, Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    const-string v0, "Unable to load class named ["

    const-string v1, "] from the thread context, current, or system/application ClassLoaders.  All heuristics have been exhausted.  Class could not be found."

    invoke-static {v0, p0, v1}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_2

    const-string v1, "com.stormpath.sdk.impl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "  Have you remembered to include the stormpath-sdk-impl .jar in your runtime classpath?"

    invoke-static {v0, p0}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance p0, Lio/jsonwebtoken/lang/UnknownClassException;

    invoke-direct {p0, v0}, Lio/jsonwebtoken/lang/UnknownClassException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lio/jsonwebtoken/lang/Classes;->THREAD_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    invoke-interface {v0, p0}, Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/jsonwebtoken/lang/Classes;->CLASS_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    invoke-interface {v0, p0}, Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lio/jsonwebtoken/lang/Classes;->SYSTEM_CL_ACCESSOR:Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;

    invoke-interface {v0, p0}, Lio/jsonwebtoken/lang/Classes$ClassLoaderAccessor;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static varargs instantiate(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate instance with constructor ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/jsonwebtoken/lang/InstantiationException;

    invoke-direct {v0, p0, p1}, Lio/jsonwebtoken/lang/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Lio/jsonwebtoken/lang/Classes;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Lio/jsonwebtoken/lang/UnknownClassException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lio/jsonwebtoken/lang/InstantiationException;

    const-string v2, "Unable to instantiate class ["

    invoke-static {v2}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-static {p0, v2, v3}, Lc/a/a/a/a;->f(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lio/jsonwebtoken/lang/InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Class method parameter cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lio/jsonwebtoken/lang/Classes;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-static {p0, p1}, Lio/jsonwebtoken/lang/Classes;->instantiate(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lio/jsonwebtoken/lang/Classes;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lio/jsonwebtoken/lang/Classes;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lio/jsonwebtoken/lang/Classes;->newInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
