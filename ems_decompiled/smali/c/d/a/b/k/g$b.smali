.class public final Lc/d/a/b/k/g$b;
.super Lc/d/a/b/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/f/a<",
        "Lc/d/a/b/k/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Landroidx/fragment/app/Fragment;

.field public f:Lc/d/a/b/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/f/e<",
            "Lc/d/a/b/k/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/app/Activity;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/k/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/f/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/k/g$b;->h:Ljava/util/List;

    iput-object p1, p0, Lc/d/a/b/k/g$b;->e:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/f/e<",
            "Lc/d/a/b/k/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/d/a/b/k/g$b;->f:Lc/d/a/b/f/e;

    invoke-virtual {p0}, Lc/d/a/b/k/g$b;->d()V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/k/g$b;->g:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lc/d/a/b/k/g$b;->f:Lc/d/a/b/f/e;

    if-eqz v1, :cond_2

    .line 1
    iget-object v1, p0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-nez v1, :cond_2

    .line 2
    :try_start_0
    invoke-static {v0}, Lc/d/a/b/k/b;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lc/d/a/b/k/g$b;->g:Landroid/app/Activity;

    invoke-static {v0}, Lc/d/a/b/k/i/s;->a(Landroid/content/Context;)Lc/d/a/b/k/i/t;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/k/g$b;->g:Landroid/app/Activity;

    .line 3
    new-instance v2, Lc/d/a/b/f/d;

    invoke-direct {v2, v1}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v0, v2}, Lc/d/a/b/k/i/t;->e0(Lc/d/a/b/f/b;)Lc/d/a/b/k/i/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lc/d/a/b/k/g$b;->f:Lc/d/a/b/f/e;

    new-instance v2, Lc/d/a/b/k/g$a;

    iget-object v3, p0, Lc/d/a/b/k/g$b;->e:Landroidx/fragment/app/Fragment;

    invoke-direct {v2, v3, v0}, Lc/d/a/b/k/g$a;-><init>(Landroidx/fragment/app/Fragment;Lc/d/a/b/k/i/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lc/d/a/b/e/f; {:try_start_0 .. :try_end_0} :catch_1

    check-cast v1, Lc/d/a/b/f/g;

    :try_start_1
    invoke-virtual {v1, v2}, Lc/d/a/b/f/g;->a(Lc/d/a/b/f/c;)V

    iget-object v0, p0, Lc/d/a/b/k/g$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/k/c;

    .line 5
    iget-object v2, p0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    .line 6
    check-cast v2, Lc/d/a/b/k/g$a;

    invoke-virtual {v2, v1}, Lc/d/a/b/k/g$a;->h(Lc/d/a/b/k/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/d/a/b/k/g$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc/d/a/b/e/f; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_1
    :cond_2
    return-void
.end method
