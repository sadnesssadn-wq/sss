.class public final Lc/d/a/b/e/m/m/m1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/e/m/m/k1;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/k1;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/m1;->c:Lc/d/a/b/e/m/m/k1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/m1;->c:Lc/d/a/b/e/m/m/k1;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/k1;->i:Lc/d/a/b/e/m/m/n1;

    .line 2
    new-instance v1, Lc/d/a/b/e/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc/d/a/b/e/a;-><init>(I)V

    check-cast v0, Lc/d/a/b/e/m/m/g$c;

    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/g$c;->b(Lc/d/a/b/e/a;)V

    return-void
.end method
