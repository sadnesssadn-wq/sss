.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter;
.super Lc/d/c/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/c/t<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lc/d/c/u;


# instance fields
.field public final a:Lcom/google/gson/Gson;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->b:Lc/d/c/u;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lc/d/c/t;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->a:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public a(Lc/d/c/y/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lc/d/c/y/a;->E()Lc/d/c/y/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/a;->A()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lc/d/c/y/a;->u()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lc/d/c/y/a;->v()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lc/d/c/y/a;->C()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance v0, Lc/d/c/w/r;

    invoke-direct {v0}, Lc/d/c/w/r;-><init>()V

    invoke-virtual {p1}, Lc/d/c/y/a;->d()V

    :goto_0
    invoke-virtual {p1}, Lc/d/c/y/a;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lc/d/c/y/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/d/c/w/r;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lc/d/c/y/a;->k()V

    return-object v0

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lc/d/c/y/a;->c()V

    :goto_1
    invoke-virtual {p1}, Lc/d/c/y/a;->o()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lc/d/c/y/a;->j()V

    return-object v0
.end method

.method public b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lc/d/c/y/c;->o()Lc/d/c/y/c;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;->a:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Lc/d/c/x/a;

    invoke-direct {v2, v1}, Lc/d/c/x/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->d(Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/d/c/y/c;->e()Lc/d/c/y/c;

    invoke-virtual {p1}, Lc/d/c/y/c;->k()Lc/d/c/y/c;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    return-void
.end method
