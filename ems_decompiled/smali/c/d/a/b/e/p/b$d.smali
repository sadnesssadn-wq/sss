.class public Lc/d/a/b/e/p/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/p/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/b/e/p/b;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/p/b;)V
    .locals 0
    .param p1    # Lc/d/a/b/e/p/b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lc/d/a/b/e/p/b$d;->a:Lc/d/a/b/e/p/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/b/e/a;)V
    .locals 2
    .param p1    # Lc/d/a/b/e/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lc/d/a/b/e/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/d/a/b/e/p/b$d;->a:Lc/d/a/b/e/p/b;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lc/d/a/b/e/p/b;->A()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/e/p/b;->g(Lc/d/a/b/e/p/j;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/p/b$d;->a:Lc/d/a/b/e/p/b;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/p/b;->t:Lc/d/a/b/e/p/b$b;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lc/d/a/b/e/p/d0;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/p/d0;->a:Lc/d/a/b/e/m/m/m;

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/m;->onConnectionFailed(Lc/d/a/b/e/a;)V

    :cond_1
    return-void
.end method
