.class public final synthetic Lc/d/a/a/j/t/h/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/a/j/t/h/q;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/a/j/t/h/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/i;->c:Lc/d/a/a/j/t/h/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/a/j/t/h/i;->c:Lc/d/a/a/j/t/h/q;

    .line 1
    iget-object v1, v0, Lc/d/a/a/j/t/h/q;->d:Lc/d/a/a/j/u/b;

    new-instance v2, Lc/d/a/a/j/t/h/h;

    invoke-direct {v2, v0}, Lc/d/a/a/j/t/h/h;-><init>(Lc/d/a/a/j/t/h/q;)V

    invoke-interface {v1, v2}, Lc/d/a/a/j/u/b;->c(Lc/d/a/a/j/u/b$a;)Ljava/lang/Object;

    return-void
.end method
