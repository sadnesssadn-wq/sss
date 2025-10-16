.class public abstract Lc/d/c/w/r$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/c/w/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public c:Lc/d/c/w/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:Lc/d/c/w/r$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public e:I

.field public final synthetic f:Lc/d/c/w/r;


# direct methods
.method public constructor <init>(Lc/d/c/w/r;)V
    .locals 1

    iput-object p1, p0, Lc/d/c/w/r$d;->f:Lc/d/c/w/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lc/d/c/w/r;->g:Lc/d/c/w/r$e;

    iget-object v0, v0, Lc/d/c/w/r$e;->f:Lc/d/c/w/r$e;

    iput-object v0, p0, Lc/d/c/w/r$d;->c:Lc/d/c/w/r$e;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/c/w/r$d;->d:Lc/d/c/w/r$e;

    iget p1, p1, Lc/d/c/w/r;->f:I

    iput p1, p0, Lc/d/c/w/r$d;->e:I

    return-void
.end method


# virtual methods
.method public final a()Lc/d/c/w/r$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/c/w/r$e<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/c/w/r$d;->c:Lc/d/c/w/r$e;

    iget-object v1, p0, Lc/d/c/w/r$d;->f:Lc/d/c/w/r;

    iget-object v2, v1, Lc/d/c/w/r;->g:Lc/d/c/w/r$e;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lc/d/c/w/r;->f:I

    iget v2, p0, Lc/d/c/w/r$d;->e:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lc/d/c/w/r$e;->f:Lc/d/c/w/r$e;

    iput-object v1, p0, Lc/d/c/w/r$d;->c:Lc/d/c/w/r$e;

    iput-object v0, p0, Lc/d/c/w/r$d;->d:Lc/d/c/w/r$e;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lc/d/c/w/r$d;->c:Lc/d/c/w/r$e;

    iget-object v1, p0, Lc/d/c/w/r$d;->f:Lc/d/c/w/r;

    iget-object v1, v1, Lc/d/c/w/r;->g:Lc/d/c/w/r$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lc/d/c/w/r$d;->d:Lc/d/c/w/r$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/d/c/w/r$d;->f:Lc/d/c/w/r;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lc/d/c/w/r;->e(Lc/d/c/w/r$e;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/c/w/r$d;->d:Lc/d/c/w/r$e;

    iget-object v0, p0, Lc/d/c/w/r$d;->f:Lc/d/c/w/r;

    iget v0, v0, Lc/d/c/w/r;->f:I

    iput v0, p0, Lc/d/c/w/r$d;->e:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
