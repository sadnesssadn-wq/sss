.class public final synthetic Lc/d/a/b/e/p/s/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/o;


# instance fields
.field public final a:Lc/d/a/b/e/p/u;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/p/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/p/s/c;->a:Lc/d/a/b/e/p/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/p/s/c;->a:Lc/d/a/b/e/p/u;

    check-cast p1, Lc/d/a/b/e/p/s/e;

    check-cast p2, Lc/d/a/b/p/m;

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/p/s/b;

    invoke-interface {p1, v0}, Lc/d/a/b/e/p/s/b;->W(Lc/d/a/b/e/p/u;)V

    .line 2
    iget-object p1, p2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void
.end method
