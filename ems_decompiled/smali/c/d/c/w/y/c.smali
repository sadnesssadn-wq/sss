.class public Lc/d/c/w/y/c;
.super Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;
.source ""


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lc/d/c/t;

.field public final synthetic g:Lcom/google/gson/Gson;

.field public final synthetic h:Lc/d/c/x/a;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLc/d/c/t;Lcom/google/gson/Gson;Lc/d/c/x/a;Z)V
    .locals 0

    iput-object p5, p0, Lc/d/c/w/y/c;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lc/d/c/w/y/c;->e:Z

    iput-object p7, p0, Lc/d/c/w/y/c;->f:Lc/d/c/t;

    iput-object p8, p0, Lc/d/c/w/y/c;->g:Lcom/google/gson/Gson;

    iput-object p9, p0, Lc/d/c/w/y/c;->h:Lc/d/c/x/a;

    iput-boolean p10, p0, Lc/d/c/w/y/c;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lc/d/c/y/a;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lc/d/c/w/y/c;->f:Lc/d/c/t;

    invoke-virtual {v0, p1}, Lc/d/c/t;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lc/d/c/w/y/c;->i:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lc/d/c/w/y/c;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lc/d/c/w/y/c;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lc/d/c/w/y/c;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/c/w/y/c;->f:Lc/d/c/t;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v1, p0, Lc/d/c/w/y/c;->g:Lcom/google/gson/Gson;

    iget-object v2, p0, Lc/d/c/w/y/c;->f:Lc/d/c/t;

    iget-object v3, p0, Lc/d/c/w/y/c;->h:Lc/d/c/x/a;

    .line 1
    iget-object v3, v3, Lc/d/c/x/a;->b:Ljava/lang/reflect/Type;

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lc/d/c/t;Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lc/d/c/w/y/c;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
