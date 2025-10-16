.class public final Lc/d/a/b/e/m/m/y;
.super Lc/d/a/b/e/m/m/h0;
.source ""


# instance fields
.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$f;",
            "Lc/d/a/b/e/m/m/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lc/d/a/b/e/m/m/x;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/x;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/a$f;",
            "Lc/d/a/b/e/m/m/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/d/a/b/e/m/m/h0;-><init>(Lc/d/a/b/e/m/m/x;Lc/d/a/b/e/m/m/w;)V

    iput-object p2, p0, Lc/d/a/b/e/m/m/y;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    new-instance v0, Lc/d/a/b/e/p/e0;

    iget-object v1, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 1
    iget-object v1, v1, Lc/d/a/b/e/m/m/x;->d:Lc/d/a/b/e/e;

    .line 2
    invoke-direct {v0, v1}, Lc/d/a/b/e/p/e0;-><init>(Lc/d/a/b/e/e;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lc/d/a/b/e/m/m/y;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/e/m/a$f;

    invoke-interface {v4}, Lc/d/a/b/e/m/a$f;->j()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lc/d/a/b/e/m/m/y;->d:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/e/m/m/z;

    .line 3
    iget-boolean v5, v5, Lc/d/a/b/e/m/m/z;->c:Z

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    if-ge v5, v1, :cond_5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lc/d/a/b/e/m/a$f;

    iget-object v4, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 5
    iget-object v4, v4, Lc/d/a/b/e/m/m/x;->c:Landroid/content/Context;

    .line 6
    invoke-virtual {v0, v4, v3}, Lc/d/a/b/e/p/e0;->a(Landroid/content/Context;Lc/d/a/b/e/m/a$f;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_4
    if-ge v5, v2, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    check-cast v3, Lc/d/a/b/e/m/a$f;

    iget-object v4, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 7
    iget-object v4, v4, Lc/d/a/b/e/m/m/x;->c:Landroid/content/Context;

    .line 8
    invoke-virtual {v0, v4, v3}, Lc/d/a/b/e/p/e0;->a(Landroid/content/Context;Lc/d/a/b/e/m/a$f;)I

    move-result v3

    if-eqz v3, :cond_4

    :cond_5
    :goto_1
    const/4 v1, 0x1

    if-eqz v3, :cond_6

    new-instance v0, Lc/d/a/b/e/a;

    const/4 v2, 0x0

    invoke-direct {v0, v3, v2}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v2, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 9
    iget-object v3, v2, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 10
    new-instance v4, Lc/d/a/b/e/m/m/b0;

    invoke-direct {v4, p0, v2, v0}, Lc/d/a/b/e/m/m/b0;-><init>(Lc/d/a/b/e/m/m/y;Lc/d/a/b/e/m/m/l0;Lc/d/a/b/e/a;)V

    .line 11
    iget-object v0, v3, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v0, v1, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v3, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 12
    :cond_6
    iget-object v2, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 13
    iget-boolean v3, v2, Lc/d/a/b/e/m/m/x;->m:Z

    if-eqz v3, :cond_7

    .line 14
    iget-object v2, v2, Lc/d/a/b/e/m/m/x;->k:Lc/d/a/b/n/g;

    if-eqz v2, :cond_7

    .line 15
    invoke-interface {v2}, Lc/d/a/b/n/g;->k()V

    :cond_7
    iget-object v2, p0, Lc/d/a/b/e/m/m/y;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/e/m/a$f;

    iget-object v4, p0, Lc/d/a/b/e/m/m/y;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/e/p/b$c;

    invoke-interface {v3}, Lc/d/a/b/e/m/a$f;->j()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 16
    iget-object v5, v5, Lc/d/a/b/e/m/m/x;->c:Landroid/content/Context;

    .line 17
    invoke-virtual {v0, v5, v3}, Lc/d/a/b/e/p/e0;->a(Landroid/content/Context;Lc/d/a/b/e/m/a$f;)I

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    .line 18
    iget-object v5, v3, Lc/d/a/b/e/m/m/x;->a:Lc/d/a/b/e/m/m/o0;

    .line 19
    new-instance v6, Lc/d/a/b/e/m/m/a0;

    invoke-direct {v6, v3, v4}, Lc/d/a/b/e/m/m/a0;-><init>(Lc/d/a/b/e/m/m/l0;Lc/d/a/b/e/p/b$c;)V

    .line 20
    iget-object v3, v5, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v3, v1, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v5, Lc/d/a/b/e/m/m/o0;->g:Lc/d/a/b/e/m/m/r0;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 21
    :cond_8
    invoke-interface {v3, v4}, Lc/d/a/b/e/m/a$f;->r(Lc/d/a/b/e/p/b$c;)V

    goto :goto_2

    :cond_9
    return-void
.end method
