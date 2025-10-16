.class public final Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field public final c:Lc/d/c/w/g;

.field public final d:Z


# direct methods
.method public constructor <init>(Lc/d/c/w/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->c:Lc/d/c/w/g;

    iput-boolean p2, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/Gson;Lc/d/c/x/a;)Lc/d/c/t;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lc/d/c/x/a<",
            "TT;>;)",
            "Lc/d/c/t<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p2, Lc/d/c/x/a;->b:Ljava/lang/reflect/Type;

    .line 2
    iget-object v3, p2, Lc/d/c/x/a;->a:Ljava/lang/Class;

    .line 3
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v1}, Lc/d/c/w/a;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 4
    const-class v4, Ljava/lang/Object;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/util/Properties;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v6, :cond_1

    new-array v1, v7, [Ljava/lang/reflect/Type;

    aput-object v5, v1, v8

    aput-object v5, v1, v9

    goto :goto_0

    :cond_1
    const-class v5, Ljava/util/Map;

    invoke-static {v1, v3, v5}, Lc/d/c/w/a;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v1, v7, [Ljava/lang/reflect/Type;

    aput-object v4, v1, v8

    aput-object v4, v1, v9

    .line 5
    :goto_0
    aget-object v3, v1, v8

    .line 6
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_4

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance v4, Lc/d/c/x/a;

    invoke-direct {v4, v3}, Lc/d/c/x/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 8
    invoke-virtual {p1, v4}, Lcom/google/gson/Gson;->d(Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v3

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters;->f:Lc/d/c/t;

    :goto_2
    move-object v4, v3

    .line 9
    aget-object v3, v1, v9

    .line 10
    new-instance v5, Lc/d/c/x/a;

    invoke-direct {v5, v3}, Lc/d/c/x/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 11
    invoke-virtual {p1, v5}, Lcom/google/gson/Gson;->d(Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v6

    iget-object v3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->c:Lc/d/c/w/g;

    invoke-virtual {v3, p2}, Lc/d/c/w/g;->a(Lc/d/c/x/a;)Lc/d/c/w/s;

    move-result-object v7

    new-instance v10, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v1, v8

    aget-object v5, v1, v9

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lc/d/c/t;Ljava/lang/reflect/Type;Lc/d/c/t;Lc/d/c/w/s;)V

    return-object v10
.end method
