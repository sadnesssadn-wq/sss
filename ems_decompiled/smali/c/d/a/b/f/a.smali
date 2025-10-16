.class public abstract Lc/d/a/b/f/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/f/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/d/a/b/f/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lc/d/a/b/f/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Landroid/os/Bundle;

.field public c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lc/d/a/b/f/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/b/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/f/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/f/g;

    invoke-direct {v0, p0}, Lc/d/a/b/f/g;-><init>(Lc/d/a/b/f/a;)V

    iput-object v0, p0, Lc/d/a/b/f/a;->d:Lc/d/a/b/f/e;

    return-void
.end method


# virtual methods
.method public abstract a(Lc/d/a/b/f/e;)V
    .param p1    # Lc/d/a/b/f/e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/f/e<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 1

    :goto_0
    iget-object v0, p0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/f/a$a;

    invoke-interface {v0}, Lc/d/a/b/f/a$a;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Landroid/os/Bundle;Lc/d/a/b/f/a$a;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lc/d/a/b/f/a$a;->b(Lc/d/a/b/f/c;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    :cond_1
    iget-object v0, p0, Lc/d/a/b/f/a;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    iget-object p2, p0, Lc/d/a/b/f/a;->b:Landroid/os/Bundle;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lc/d/a/b/f/a;->b:Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lc/d/a/b/f/a;->d:Lc/d/a/b/f/e;

    invoke-virtual {p0, p1}, Lc/d/a/b/f/a;->a(Lc/d/a/b/f/e;)V

    return-void
.end method
