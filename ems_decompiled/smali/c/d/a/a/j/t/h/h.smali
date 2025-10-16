.class public final synthetic Lc/d/a/a/j/t/h/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/u/b$a;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/h/q;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/h/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/h;->a:Lc/d/a/a/j/t/h/q;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lc/d/a/a/j/t/h/h;->a:Lc/d/a/a/j/t/h/q;

    .line 1
    iget-object v1, v0, Lc/d/a/a/j/t/h/q;->b:Lc/d/a/a/j/t/i/s;

    invoke-interface {v1}, Lc/d/a/a/j/t/i/s;->n()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/a/j/j;

    iget-object v3, v0, Lc/d/a/a/j/t/h/q;->c:Lc/d/a/a/j/t/h/s;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lc/d/a/a/j/t/h/s;->a(Lc/d/a/a/j/j;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
