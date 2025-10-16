.class public final synthetic Lc/d/a/a/j/t/h/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/u/b$a;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/h/o;

.field public final synthetic b:Lc/d/a/a/j/q/g;

.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Lc/d/a/a/j/j;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/q/g;Ljava/lang/Iterable;Lc/d/a/a/j/j;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/d;->a:Lc/d/a/a/j/t/h/o;

    iput-object p2, p0, Lc/d/a/a/j/t/h/d;->b:Lc/d/a/a/j/q/g;

    iput-object p3, p0, Lc/d/a/a/j/t/h/d;->c:Ljava/lang/Iterable;

    iput-object p4, p0, Lc/d/a/a/j/t/h/d;->d:Lc/d/a/a/j/j;

    iput p5, p0, Lc/d/a/a/j/t/h/d;->e:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lc/d/a/a/j/t/h/d;->a:Lc/d/a/a/j/t/h/o;

    iget-object v1, p0, Lc/d/a/a/j/t/h/d;->b:Lc/d/a/a/j/q/g;

    iget-object v2, p0, Lc/d/a/a/j/t/h/d;->c:Ljava/lang/Iterable;

    iget-object v3, p0, Lc/d/a/a/j/t/h/d;->d:Lc/d/a/a/j/j;

    iget v4, p0, Lc/d/a/a/j/t/h/d;->e:I

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Lc/d/a/a/j/q/g;->c()Lc/d/a/a/j/q/g$a;

    move-result-object v5

    sget-object v6, Lc/d/a/a/j/q/g$a;->d:Lc/d/a/a/j/q/g$a;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    iget-object v1, v0, Lc/d/a/a/j/t/h/o;->c:Lc/d/a/a/j/t/i/s;

    invoke-interface {v1, v2}, Lc/d/a/a/j/t/i/s;->r(Ljava/lang/Iterable;)V

    iget-object v0, v0, Lc/d/a/a/j/t/h/o;->d:Lc/d/a/a/j/t/h/s;

    add-int/2addr v4, v7

    invoke-interface {v0, v3, v4}, Lc/d/a/a/j/t/h/s;->a(Lc/d/a/a/j/j;I)V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lc/d/a/a/j/t/h/o;->c:Lc/d/a/a/j/t/i/s;

    invoke-interface {v4, v2}, Lc/d/a/a/j/t/i/s;->b(Ljava/lang/Iterable;)V

    invoke-virtual {v1}, Lc/d/a/a/j/q/g;->c()Lc/d/a/a/j/q/g$a;

    move-result-object v2

    sget-object v4, Lc/d/a/a/j/q/g$a;->c:Lc/d/a/a/j/q/g$a;

    if-ne v2, v4, :cond_1

    iget-object v2, v0, Lc/d/a/a/j/t/h/o;->c:Lc/d/a/a/j/t/i/s;

    iget-object v4, v0, Lc/d/a/a/j/t/h/o;->g:Lc/d/a/a/j/v/a;

    invoke-interface {v4}, Lc/d/a/a/j/v/a;->a()J

    move-result-wide v4

    invoke-virtual {v1}, Lc/d/a/a/j/q/g;->b()J

    move-result-wide v8

    add-long/2addr v8, v4

    invoke-interface {v2, v3, v8, v9}, Lc/d/a/a/j/t/i/s;->h(Lc/d/a/a/j/j;J)V

    :cond_1
    iget-object v1, v0, Lc/d/a/a/j/t/h/o;->c:Lc/d/a/a/j/t/i/s;

    invoke-interface {v1, v3}, Lc/d/a/a/j/t/i/s;->q(Lc/d/a/a/j/j;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lc/d/a/a/j/t/h/o;->d:Lc/d/a/a/j/t/h/s;

    invoke-interface {v0, v3, v7, v7}, Lc/d/a/a/j/t/h/s;->b(Lc/d/a/a/j/j;IZ)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
