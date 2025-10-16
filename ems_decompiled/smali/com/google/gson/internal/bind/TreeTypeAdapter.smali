.class public final Lcom/google/gson/internal/bind/TreeTypeAdapter;
.super Lc/d/c/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TreeTypeAdapter$b;,
        Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/d/c/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/c/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lc/d/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/gson/Gson;

.field public final d:Lc/d/c/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/x/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lc/d/c/u;

.field public final f:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/bind/TreeTypeAdapter<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field public g:Lc/d/c/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/c/q;Lc/d/c/i;Lcom/google/gson/Gson;Lc/d/c/x/a;Lc/d/c/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/q<",
            "TT;>;",
            "Lc/d/c/i<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            "Lc/d/c/x/a<",
            "TT;>;",
            "Lc/d/c/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/c/t;-><init>()V

    new-instance p5, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$b;-><init>(Lcom/google/gson/internal/bind/TreeTypeAdapter;Lcom/google/gson/internal/bind/TreeTypeAdapter$a;)V

    iput-object p5, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    iput-object p1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lc/d/c/q;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lc/d/c/i;

    iput-object p3, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/Gson;

    iput-object p4, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/d/c/x/a;

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lc/d/c/u;

    return-void
.end method


# virtual methods
.method public a(Lc/d/c/y/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/y/a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lc/d/c/i;

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lc/d/c/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lc/d/c/u;

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/d/c/x/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->e(Lc/d/c/u;Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lc/d/c/t;

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Lc/d/c/t;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lc/d/c/y/a;->E()Lc/d/c/y/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lc/d/c/y/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->X:Lc/d/c/t;

    invoke-virtual {v1, p1}, Lc/d/c/t;->a(Lc/d/c/y/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/c/j;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc/d/c/y/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Lc/d/c/r;

    invoke-direct {v0, p1}, Lc/d/c/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    new-instance v0, Lc/d/c/k;

    invoke-direct {v0, p1}, Lc/d/c/k;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    new-instance v0, Lc/d/c/r;

    invoke-direct {v0, p1}, Lc/d/c/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    sget-object p1, Lc/d/c/l;->a:Lc/d/c/l;

    .line 4
    :goto_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lc/d/c/l;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->b:Lc/d/c/i;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/d/c/x/a;

    .line 6
    iget-object v1, v1, Lc/d/c/x/a;->b:Ljava/lang/reflect/Type;

    .line 7
    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-interface {v0, p1, v1, v2}, Lc/d/c/i;->a(Lc/d/c/j;Ljava/lang/reflect/Type;Lc/d/c/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    new-instance v0, Lc/d/c/r;

    invoke-direct {v0, p1}, Lc/d/c/r;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lc/d/c/y/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/c/y/c;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->a:Lc/d/c/q;

    if-nez v0, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lc/d/c/t;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->c:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->e:Lc/d/c/u;

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/d/c/x/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->e(Lc/d/c/u;Lc/d/c/x/a;)Lc/d/c/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->g:Lc/d/c/t;

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lc/d/c/y/c;->o()Lc/d/c/y/c;

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->d:Lc/d/c/x/a;

    .line 3
    iget-object v1, v1, Lc/d/c/x/a;->b:Ljava/lang/reflect/Type;

    .line 4
    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->f:Lcom/google/gson/internal/bind/TreeTypeAdapter$b;

    invoke-interface {v0, p2, v1, v2}, Lc/d/c/q;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc/d/c/p;)Lc/d/c/j;

    move-result-object p2

    .line 5
    sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->X:Lc/d/c/t;

    invoke-virtual {v0, p1, p2}, Lc/d/c/t;->b(Lc/d/c/y/c;Ljava/lang/Object;)V

    return-void
.end method
