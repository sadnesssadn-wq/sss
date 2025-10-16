.class public final Lc/d/a/a/j/t/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lc/d/a/a/j/t/h/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lf/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a<",
            "Lc/d/a/a/j/v/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/f;->a:Lf/a/a;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lc/d/a/a/j/t/f;->a:Lf/a/a;

    invoke-interface {v0}, Lf/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/j/v/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Lc/d/a/a/d;->c:Lc/d/a/a/d;

    invoke-static {}, Lc/d/a/a/j/t/h/n$a;->a()Lc/d/a/a/j/t/h/n$a$a;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Lc/d/a/a/j/t/h/n$a$a;->b(J)Lc/d/a/a/j/t/h/n$a$a;

    const-wide/32 v4, 0x5265c00

    invoke-virtual {v3, v4, v5}, Lc/d/a/a/j/t/h/n$a$a;->c(J)Lc/d/a/a/j/t/h/n$a$a;

    invoke-virtual {v3}, Lc/d/a/a/j/t/h/n$a$a;->a()Lc/d/a/a/j/t/h/n$a;

    move-result-object v3

    .line 4
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v2, Lc/d/a/a/d;->e:Lc/d/a/a/d;

    invoke-static {}, Lc/d/a/a/j/t/h/n$a;->a()Lc/d/a/a/j/t/h/n$a$a;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Lc/d/a/a/j/t/h/n$a$a;->b(J)Lc/d/a/a/j/t/h/n$a$a;

    invoke-virtual {v3, v4, v5}, Lc/d/a/a/j/t/h/n$a$a;->c(J)Lc/d/a/a/j/t/h/n$a$a;

    invoke-virtual {v3}, Lc/d/a/a/j/t/h/n$a$a;->a()Lc/d/a/a/j/t/h/n$a;

    move-result-object v3

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Lc/d/a/a/d;->d:Lc/d/a/a/d;

    invoke-static {}, Lc/d/a/a/j/t/h/n$a;->a()Lc/d/a/a/j/t/h/n$a$a;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lc/d/a/a/j/t/h/n$a$a;->b(J)Lc/d/a/a/j/t/h/n$a$a;

    invoke-virtual {v3, v4, v5}, Lc/d/a/a/j/t/h/n$a$a;->c(J)Lc/d/a/a/j/t/h/n$a$a;

    const/4 v4, 0x2

    new-array v4, v4, [Lc/d/a/a/j/t/h/n$b;

    const/4 v5, 0x0

    sget-object v6, Lc/d/a/a/j/t/h/n$b;->c:Lc/d/a/a/j/t/h/n$b;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lc/d/a/a/j/t/h/n$b;->d:Lc/d/a/a/j/t/h/n$b;

    aput-object v6, v4, v5

    .line 8
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 9
    check-cast v3, Lc/d/a/a/j/t/h/l$b;

    const-string v5, "Null flags"

    .line 10
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v4, v3, Lc/d/a/a/j/t/h/l$b;->c:Ljava/util/Set;

    .line 11
    invoke-virtual {v3}, Lc/d/a/a/j/t/h/l$b;->a()Lc/d/a/a/j/t/h/n$a;

    move-result-object v3

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "missing required property: clock"

    .line 13
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {}, Lc/d/a/a/d;->values()[Lc/d/a/a/d;

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    new-instance v2, Lc/d/a/a/j/t/h/k;

    invoke-direct {v2, v0, v1}, Lc/d/a/a/j/t/h/k;-><init>(Lc/d/a/a/j/v/a;Ljava/util/Map;)V

    return-object v2

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not all priorities have been configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
