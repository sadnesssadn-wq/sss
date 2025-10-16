.class public final synthetic Lc/d/a/a/j/t/h/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/u/b$a;


# instance fields
.field public final synthetic a:Lc/d/a/a/j/t/h/o;

.field public final synthetic b:Lc/d/a/a/j/j;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/f;->a:Lc/d/a/a/j/t/h/o;

    iput-object p2, p0, Lc/d/a/a/j/t/h/f;->b:Lc/d/a/a/j/j;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/d/a/a/j/t/h/f;->a:Lc/d/a/a/j/t/h/o;

    iget-object v1, p0, Lc/d/a/a/j/t/h/f;->b:Lc/d/a/a/j/j;

    .line 1
    iget-object v0, v0, Lc/d/a/a/j/t/h/o;->c:Lc/d/a/a/j/t/i/s;

    invoke-interface {v0, v1}, Lc/d/a/a/j/t/i/s;->f(Lc/d/a/a/j/j;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
