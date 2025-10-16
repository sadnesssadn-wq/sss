.class public final Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lc/d/c/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lc/d/c/t<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/t<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lc/d/c/w/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/w/s<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lc/d/c/t;Lc/d/c/w/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lc/d/c/t<",
            "TE;>;",
            "Lc/d/c/w/s<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/c/t;-><init>()V

    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lc/d/c/t;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->a:Lc/d/c/t;

    iput-object p4, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->b:Lc/d/c/w/s;

    return-void
.end method


# virtual methods
.method public a(Lc/d/c/y/a;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc/d/c/y/a;->E()Lc/d/c/y/b;

    move-result-object v0

    sget-object v1, Lc/d/c/y/b;->k:Lc/d/c/y/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/a;->A()V

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->b:Lc/d/c/w/s;

    invoke-interface {v0}, Lc/d/c/w/s;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lc/d/c/y/a;->c()V

    :goto_0
    invoke-virtual {p1}, Lc/d/c/y/a;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->a:Lc/d/c/t;

    invoke-virtual {v1, p1}, Lc/d/c/t;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/d/c/y/a;->j()V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/Collection;

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lc/d/c/y/c;->o()Lc/d/c/y/c;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lc/d/c/y/c;->d()Lc/d/c/y/c;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->a:Lc/d/c/t;

    invoke-virtual {v1, p1, v0}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/d/c/y/c;->j()Lc/d/c/y/c;

    :goto_1
    return-void
.end method
