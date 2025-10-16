.class public final Lc/d/a/b/f/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/f/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/f/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/b/f/a;


# direct methods
.method public constructor <init>(Lc/d/a/b/f/a;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/f/g;->a:Lc/d/a/b/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/f/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/f/g;->a:Lc/d/a/b/f/a;

    .line 1
    iput-object p1, v0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    .line 2
    iget-object p1, v0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    .line 3
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/f/a$a;

    iget-object v1, p0, Lc/d/a/b/f/g;->a:Lc/d/a/b/f/a;

    .line 4
    iget-object v1, v1, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    .line 5
    invoke-interface {v0, v1}, Lc/d/a/b/f/a$a;->b(Lc/d/a/b/f/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d/a/b/f/g;->a:Lc/d/a/b/f/a;

    .line 6
    iget-object p1, p1, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lc/d/a/b/f/g;->a:Lc/d/a/b/f/a;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, Lc/d/a/b/f/a;->b:Landroid/os/Bundle;

    return-void
.end method
