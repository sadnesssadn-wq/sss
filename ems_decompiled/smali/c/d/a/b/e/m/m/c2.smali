.class public final Lc/d/a/b/e/m/m/c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/e$b;
.implements Lc/d/a/b/e/m/e$c;


# instance fields
.field public final c:Lc/d/a/b/e/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Z

.field public e:Lc/d/a/b/e/m/m/b2;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/a<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/c2;->c:Lc/d/a/b/e/m/a;

    iput-boolean p2, p0, Lc/d/a/b/e/m/m/c2;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lc/d/a/b/e/m/m/b2;
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/c2;->e:Lc/d/a/b/e/m/m/b2;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/e/m/m/c2;->e:Lc/d/a/b/e/m/m/b2;

    return-object v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/c2;->a()Lc/d/a/b/e/m/m/b2;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/f;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionFailed(Lc/d/a/b/e/a;)V
    .locals 3

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/c2;->a()Lc/d/a/b/e/m/m/b2;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/c2;->c:Lc/d/a/b/e/m/a;

    iget-boolean v2, p0, Lc/d/a/b/e/m/m/c2;->d:Z

    invoke-interface {v0, p1, v1, v2}, Lc/d/a/b/e/m/m/b2;->n(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/c2;->a()Lc/d/a/b/e/m/m/b2;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/b/e/m/m/f;->onConnectionSuspended(I)V

    return-void
.end method
