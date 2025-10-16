.class public final Lc/d/a/b/e/m/m/v;
.super Lc/d/a/b/e/m/m/n0;
.source ""


# instance fields
.field public final synthetic b:Lc/d/a/b/e/m/m/t;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/t;Lc/d/a/b/e/m/m/l0;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/v;->b:Lc/d/a/b/e/m/m/t;

    invoke-direct {p0, p2}, Lc/d/a/b/e/m/m/n0;-><init>(Lc/d/a/b/e/m/m/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/v;->b:Lc/d/a/b/e/m/m/t;

    .line 1
    iget-object v1, v0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/d/a/b/e/m/m/o0;->g(Lc/d/a/b/e/a;)V

    iget-object v0, v0, Lc/d/a/b/e/m/m/t;->a:Lc/d/a/b/e/m/m/o0;

    iget-object v0, v0, Lc/d/a/b/e/m/m/o0;->p:Lc/d/a/b/e/m/m/d1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lc/d/a/b/e/m/m/d1;->a(IZ)V

    return-void
.end method
