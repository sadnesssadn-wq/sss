.class public final Lc/d/a/b/e/m/m/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/p/f0;


# instance fields
.field public final synthetic a:Lc/d/a/b/e/m/m/j0;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/j0;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/i0;->a:Lc/d/a/b/e/m/m/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/i0;->a:Lc/d/a/b/e/m/m/j0;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/j0;->d:Lc/d/a/b/e/m/m/e1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/b/e/m/m/e1;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
