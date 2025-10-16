.class public final Lc/d/a/b/i/e/q1;
.super Lc/d/a/b/i/e/o1;
.source ""


# static fields
.field public static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/e/q1;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/e/p1;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lc/d/a/b/i/e/o1;-><init>(Lc/d/a/b/i/e/p1;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p1, p2, p3}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lc/d/a/b/i/e/n1;

    if-eqz v1, :cond_0

    check-cast v0, Lc/d/a/b/i/e/n1;

    invoke-interface {v0}, Lc/d/a/b/i/e/n1;->g()Lc/d/a/b/i/e/n1;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Lc/d/a/b/i/e/q1;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p1, p2, p3, v0}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3, p4}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-static {p1, p3, p4}, Lc/d/a/b/i/e/m3;->t(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v1, v1, Lc/d/a/b/i/e/n1;

    if-eqz v1, :cond_0

    new-instance v1, Lc/d/a/b/i/e/m1;

    invoke-direct {v1, v0}, Lc/d/a/b/i/e/m1;-><init>(I)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1

    :cond_1
    sget-object v2, Lc/d/a/b/i/e/q1;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_2
    instance-of v2, v1, Lc/d/a/b/i/e/j3;

    if-eqz v2, :cond_3

    new-instance v2, Lc/d/a/b/i/e/m1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v2, v3}, Lc/d/a/b/i/e/m1;-><init>(I)V

    check-cast v1, Lc/d/a/b/i/e/j3;

    .line 5
    invoke-virtual {v2}, Lc/d/a/b/i/e/m1;->size()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lc/d/a/b/i/e/m1;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 6
    :goto_1
    invoke-static {p1, p3, p4, v1}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v0, :cond_4

    if-lez v2, :cond_4

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-lez v0, :cond_5

    move-object p2, v1

    :cond_5
    invoke-static {p1, p3, p4, p2}, Lc/d/a/b/i/e/m3;->f(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
