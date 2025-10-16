.class public final Lc/d/d/v/l;
.super Lc/d/d/v/p;
.source ""


# instance fields
.field public final h:Lc/d/d/v/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/d/v/p;-><init>()V

    new-instance v0, Lc/d/d/v/e;

    invoke-direct {v0}, Lc/d/d/v/e;-><init>()V

    iput-object v0, p0, Lc/d/d/v/l;->h:Lc/d/d/v/p;

    return-void
.end method

.method public static p(Lc/d/d/n;)Lc/d/d/n;
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/d/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    new-instance v1, Lc/d/d/n;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    iget-object p0, p0, Lc/d/d/n;->c:[Lc/d/d/p;

    .line 4
    sget-object v3, Lc/d/d/a;->q:Lc/d/d/a;

    invoke-direct {v1, v0, v2, p0, v3}, Lc/d/d/n;-><init>(Ljava/lang/String;[B[Lc/d/d/p;Lc/d/d/a;)V

    return-object v1

    :cond_0
    invoke-static {}, Lc/d/d/f;->a()Lc/d/d/f;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Lc/d/d/c;Ljava/util/Map;)Lc/d/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/d/c;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/d/v/l;->h:Lc/d/d/v/p;

    invoke-virtual {v0, p1, p2}, Lc/d/d/v/k;->a(Lc/d/d/c;Ljava/util/Map;)Lc/d/d/n;

    move-result-object p1

    invoke-static {p1}, Lc/d/d/v/l;->p(Lc/d/d/n;)Lc/d/d/n;

    move-result-object p1

    return-object p1
.end method

.method public c(ILc/d/d/s/a;Ljava/util/Map;)Lc/d/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/d/s/a;",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/d/v/l;->h:Lc/d/d/v/p;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/d/v/p;->c(ILc/d/d/s/a;Ljava/util/Map;)Lc/d/d/n;

    move-result-object p1

    invoke-static {p1}, Lc/d/d/v/l;->p(Lc/d/d/n;)Lc/d/d/n;

    move-result-object p1

    return-object p1
.end method

.method public k(Lc/d/d/s/a;[ILjava/lang/StringBuilder;)I
    .locals 1

    iget-object v0, p0, Lc/d/d/v/l;->h:Lc/d/d/v/p;

    invoke-virtual {v0, p1, p2, p3}, Lc/d/d/v/p;->k(Lc/d/d/s/a;[ILjava/lang/StringBuilder;)I

    move-result p1

    return p1
.end method

.method public l(ILc/d/d/s/a;[ILjava/util/Map;)Lc/d/d/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc/d/d/s/a;",
            "[I",
            "Ljava/util/Map<",
            "Lc/d/d/e;",
            "*>;)",
            "Lc/d/d/n;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/d/v/l;->h:Lc/d/d/v/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/d/v/p;->l(ILc/d/d/s/a;[ILjava/util/Map;)Lc/d/d/n;

    move-result-object p1

    invoke-static {p1}, Lc/d/d/v/l;->p(Lc/d/d/n;)Lc/d/d/n;

    move-result-object p1

    return-object p1
.end method

.method public o()Lc/d/d/a;
    .locals 1

    sget-object v0, Lc/d/d/a;->q:Lc/d/d/a;

    return-object v0
.end method
