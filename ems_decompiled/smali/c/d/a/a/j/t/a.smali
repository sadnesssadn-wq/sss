.class public final synthetic Lc/d/a/a/j/t/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/a/j/t/c;

.field public final synthetic d:Lc/d/a/a/j/j;

.field public final synthetic e:Lc/d/a/a/h;

.field public final synthetic f:Lc/d/a/a/j/g;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/c;Lc/d/a/a/j/j;Lc/d/a/a/h;Lc/d/a/a/j/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/a;->c:Lc/d/a/a/j/t/c;

    iput-object p2, p0, Lc/d/a/a/j/t/a;->d:Lc/d/a/a/j/j;

    iput-object p3, p0, Lc/d/a/a/j/t/a;->e:Lc/d/a/a/h;

    iput-object p4, p0, Lc/d/a/a/j/t/a;->f:Lc/d/a/a/j/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lc/d/a/a/j/t/a;->c:Lc/d/a/a/j/t/c;

    iget-object v1, p0, Lc/d/a/a/j/t/a;->d:Lc/d/a/a/j/j;

    iget-object v2, p0, Lc/d/a/a/j/t/a;->e:Lc/d/a/a/h;

    iget-object v3, p0, Lc/d/a/a/j/t/a;->f:Lc/d/a/a/j/g;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object v4, v0, Lc/d/a/a/j/t/c;->c:Lc/d/a/a/j/q/e;

    invoke-virtual {v1}, Lc/d/a/a/j/j;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lc/d/a/a/j/q/e;->a(Ljava/lang/String;)Lc/d/a/a/j/q/m;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "Transport backend \'%s\' is not registered"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lc/d/a/a/j/j;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lc/d/a/a/j/t/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v4, v3}, Lc/d/a/a/j/q/m;->a(Lc/d/a/a/j/g;)Lc/d/a/a/j/g;

    move-result-object v3

    iget-object v4, v0, Lc/d/a/a/j/t/c;->e:Lc/d/a/a/j/u/b;

    new-instance v5, Lc/d/a/a/j/t/b;

    invoke-direct {v5, v0, v1, v3}, Lc/d/a/a/j/t/b;-><init>(Lc/d/a/a/j/t/c;Lc/d/a/a/j/j;Lc/d/a/a/j/g;)V

    invoke-interface {v4, v5}, Lc/d/a/a/j/u/b;->c(Lc/d/a/a/j/u/b$a;)Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    check-cast v0, Lc/d/a/a/j/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lc/d/a/a/j/t/c;->f:Ljava/util/logging/Logger;

    const-string v3, "Error scheduling event "

    invoke-static {v3}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    check-cast v2, Lc/d/a/a/j/a;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
