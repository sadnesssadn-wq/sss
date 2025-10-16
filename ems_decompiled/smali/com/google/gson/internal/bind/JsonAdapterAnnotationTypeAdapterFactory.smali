.class public final Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/c/u;


# instance fields
.field public final c:Lc/d/c/w/g;


# direct methods
.method public constructor <init>(Lc/d/c/w/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->c:Lc/d/c/w/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/Gson;Lc/d/c/x/a;)Lc/d/c/t;
    .locals 2
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
    iget-object v0, p2, Lc/d/c/x/a;->a:Ljava/lang/Class;

    .line 2
    const-class v1, Lc/d/c/v/b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc/d/c/v/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->c:Lc/d/c/w/g;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->b(Lc/d/c/w/g;Lcom/google/gson/Gson;Lc/d/c/x/a;Lc/d/c/v/b;)Lc/d/c/t;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/d/c/w/g;Lcom/google/gson/Gson;Lc/d/c/x/a;Lc/d/c/v/b;)Lc/d/c/t;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/w/g;",
            "Lcom/google/gson/Gson;",
            "Lc/d/c/x/a<",
            "*>;",
            "Lc/d/c/v/b;",
            ")",
            "Lc/d/c/t<",
            "*>;"
        }
    .end annotation

    invoke-interface {p4}, Lc/d/c/v/b;->value()Ljava/lang/Class;

    move-result-object v0

    .line 1
    new-instance v1, Lc/d/c/x/a;

    invoke-direct {v1, v0}, Lc/d/c/x/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 2
    invoke-virtual {p1, v1}, Lc/d/c/w/g;->a(Lc/d/c/x/a;)Lc/d/c/w/s;

    move-result-object p1

    invoke-interface {p1}, Lc/d/c/w/s;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lc/d/c/t;

    if-eqz v0, :cond_0

    check-cast p1, Lc/d/c/t;

    goto :goto_2

    :cond_0
    instance-of v0, p1, Lc/d/c/u;

    if-eqz v0, :cond_1

    check-cast p1, Lc/d/c/u;

    invoke-interface {p1, p2, p3}, Lc/d/c/u;->a(Lcom/google/gson/Gson;Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object p1

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lc/d/c/q;

    if-nez v0, :cond_3

    instance-of v1, p1, Lc/d/c/i;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-static {p4}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lc/d/c/x/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lc/d/c/q;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    :goto_1
    instance-of v0, p1, Lc/d/c/i;

    if-eqz v0, :cond_5

    move-object v1, p1

    check-cast v1, Lc/d/c/i;

    :cond_5
    move-object v4, v1

    new-instance p1, Lcom/google/gson/internal/bind/TreeTypeAdapter;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lc/d/c/q;Lc/d/c/i;Lcom/google/gson/Gson;Lc/d/c/x/a;Lc/d/c/u;)V

    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p4}, Lc/d/c/v/b;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3
    new-instance p2, Lcom/google/gson/TypeAdapter$1;

    invoke-direct {p2, p1}, Lcom/google/gson/TypeAdapter$1;-><init>(Lc/d/c/t;)V

    move-object p1, p2

    :cond_6
    return-object p1
.end method
