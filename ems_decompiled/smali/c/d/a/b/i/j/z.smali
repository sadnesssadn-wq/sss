.class public final Lc/d/a/b/i/j/z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/i/j/z<",
        "Lc/d/a/b/i/j/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/b/i/j/y;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/j/y;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/i/j/z;->a:Lc/d/a/b/i/j/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/i/j/z;->a:Lc/d/a/b/i/j/y;

    .line 1
    invoke-virtual {v0}, Lc/d/a/b/e/p/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/j/z;->a:Lc/d/a/b/i/j/y;

    invoke-virtual {v0}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/j/i;

    return-object v0
.end method
