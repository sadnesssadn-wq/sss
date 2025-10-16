.class public abstract Lc/d/a/a/j/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/j/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/d/a/a/j/g;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public abstract d()Lc/d/a/a/j/f;
.end method

.method public abstract e()J
.end method

.method public final f(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lc/d/a/a/j/g;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()J
.end method

.method public i()Lc/d/a/a/j/g$a;
    .locals 3

    new-instance v0, Lc/d/a/a/j/b$b;

    invoke-direct {v0}, Lc/d/a/a/j/b$b;-><init>()V

    invoke-virtual {p0}, Lc/d/a/a/j/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/j/b$b;->f(Ljava/lang/String;)Lc/d/a/a/j/g$a;

    invoke-virtual {p0}, Lc/d/a/a/j/g;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 1
    iput-object v1, v0, Lc/d/a/a/j/b$b;->b:Ljava/lang/Integer;

    .line 2
    invoke-virtual {p0}, Lc/d/a/a/j/g;->d()Lc/d/a/a/j/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/d/a/a/j/b$b;->d(Lc/d/a/a/j/f;)Lc/d/a/a/j/g$a;

    invoke-virtual {p0}, Lc/d/a/a/j/g;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/d/a/a/j/b$b;->e(J)Lc/d/a/a/j/g$a;

    invoke-virtual {p0}, Lc/d/a/a/j/g;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/d/a/a/j/b$b;->g(J)Lc/d/a/a/j/g$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p0}, Lc/d/a/a/j/g;->b()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    iput-object v1, v0, Lc/d/a/a/j/b$b;->f:Ljava/util/Map;

    return-object v0
.end method
