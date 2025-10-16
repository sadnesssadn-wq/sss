.class public Lc/f/a/i$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/f/a/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lc/f/a/i;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lc/f/a/i$a;->a:Lc/f/a/i;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "canceled"

    const-string v6, ""

    const-string v7, "Dispatcher"

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lc/f/a/t;->o:Landroid/os/Handler;

    new-instance v3, Lc/f/a/i$a$a;

    invoke-direct {v3, v0, v1}, Lc/f/a/i$a$a;-><init>(Lc/f/a/i$a;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_13

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 1
    iget-object v4, v2, Lc/f/a/i;->h:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_13

    :cond_0
    iget-object v4, v2, Lc/f/a/i;->g:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/f/a/a;

    .line 2
    iget-object v6, v5, Lc/f/a/a;->j:Ljava/lang/Object;

    .line 3
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_28

    iget-object v1, v2, Lc/f/a/i;->j:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_13

    .line 4
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 5
    iget-object v3, v2, Lc/f/a/i;->h:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_13

    :cond_4
    iget-object v3, v2, Lc/f/a/i;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f/a/c;

    .line 6
    iget-object v6, v4, Lc/f/a/c;->d:Lc/f/a/t;

    .line 7
    iget-boolean v6, v6, Lc/f/a/t;->n:Z

    .line 8
    iget-object v10, v4, Lc/f/a/c;->m:Lc/f/a/a;

    .line 9
    iget-object v11, v4, Lc/f/a/c;->n:Ljava/util/List;

    if-eqz v11, :cond_6

    .line 10
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x0

    :goto_2
    if-nez v10, :cond_7

    if-nez v12, :cond_7

    goto :goto_1

    :cond_7
    const-string v13, "\' was paused"

    const-string v14, "because tag \'"

    const-string v15, "paused"

    if-eqz v10, :cond_8

    .line 11
    iget-object v9, v10, Lc/f/a/a;->j:Ljava/lang/Object;

    .line 12
    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v4, v10}, Lc/f/a/c;->d(Lc/f/a/a;)V

    iget-object v9, v2, Lc/f/a/i;->g:Ljava/util/Map;

    invoke-virtual {v10}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_8

    iget-object v8, v10, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {v8}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v15, v8, v9}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_3
    if-ltz v8, :cond_b

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/f/a/a;

    .line 13
    iget-object v10, v9, Lc/f/a/a;->j:Ljava/lang/Object;

    .line 14
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v4, v9}, Lc/f/a/c;->d(Lc/f/a/a;)V

    iget-object v10, v2, Lc/f/a/i;->g:Ljava/util/Map;

    invoke-virtual {v9}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_a

    iget-object v9, v9, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {v9}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v15, v9, v10}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v4}, Lc/f/a/c;->b()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    if-eqz v6, :cond_5

    invoke-static {v4}, Lc/f/a/f0;->f(Lc/f/a/c;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "all actions paused"

    invoke-static {v7, v5, v4, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 15
    :pswitch_3
    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c

    const/4 v8, 0x1

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    .line 16
    :goto_5
    iput-boolean v8, v2, Lc/f/a/i;->p:Z

    goto/16 :goto_13

    .line 17
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 18
    iget-object v3, v2, Lc/f/a/i;->c:Ljava/util/concurrent/ExecutorService;

    instance-of v5, v3, Lc/f/a/v;

    if-eqz v5, :cond_12

    check-cast v3, Lc/f/a/v;

    .line 19
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eqz v8, :cond_f

    const/4 v9, 0x1

    if-eq v8, v9, :cond_e

    const/4 v4, 0x6

    if-eq v8, v4, :cond_e

    const/16 v4, 0x9

    if-eq v8, v4, :cond_e

    goto :goto_6

    :cond_e
    const/4 v4, 0x4

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v8

    packed-switch v8, :pswitch_data_1

    const/16 v9, 0xc

    if-eq v8, v9, :cond_11

    goto :goto_6

    :pswitch_5
    const/4 v5, 0x1

    .line 20
    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    goto :goto_8

    :cond_10
    :goto_6
    const/4 v4, 0x3

    :cond_11
    :goto_7
    :pswitch_6
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    :cond_12
    :goto_8
    if-eqz v1, :cond_28

    .line 21
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 22
    iget-object v1, v2, Lc/f/a/i;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v2, Lc/f/a/i;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/f/a/a;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 23
    iget-object v4, v3, Lc/f/a/a;->a:Lc/f/a/t;

    .line 24
    iget-boolean v4, v4, Lc/f/a/t;->n:Z

    if-eqz v4, :cond_13

    .line 25
    iget-object v4, v3, Lc/f/a/a;->b:Lc/f/a/w;

    .line 26
    invoke-virtual {v4}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "replaying"

    .line 27
    invoke-static {v7, v5, v4, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const/4 v4, 0x0

    .line 28
    invoke-virtual {v2, v3, v4}, Lc/f/a/i;->f(Lc/f/a/a;Z)V

    goto :goto_9

    .line 29
    :pswitch_7
    iget-object v1, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 30
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lc/f/a/i;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lc/f/a/i;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v1, v1, Lc/f/a/i;->j:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 31
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_13

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/f/a/c;

    .line 32
    iget-object v1, v1, Lc/f/a/c;->d:Lc/f/a/t;

    .line 33
    iget-boolean v1, v1, Lc/f/a/t;->n:Z

    if-eqz v1, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/f/a/c;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_15

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-static {v3}, Lc/f/a/f0;->f(Lc/f/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivered"

    .line 34
    invoke-static {v7, v2, v1, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 35
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/f/a/c;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lc/f/a/i;->e(Lc/f/a/c;Z)V

    goto/16 :goto_13

    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/f/a/c;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 36
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v4, v1, Lc/f/a/c;->p:Ljava/util/concurrent/Future;

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_18

    goto/16 :goto_13

    .line 38
    :cond_18
    iget-object v4, v2, Lc/f/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_19

    invoke-virtual {v2, v1, v5}, Lc/f/a/i;->e(Lc/f/a/c;Z)V

    goto/16 :goto_13

    :cond_19
    iget-boolean v4, v2, Lc/f/a/i;->o:Z

    if-eqz v4, :cond_1a

    iget-object v3, v2, Lc/f/a/i;->b:Landroid/content/Context;

    .line 39
    sget-object v4, Lc/f/a/f0;->a:Ljava/lang/StringBuilder;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 40
    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    :cond_1a
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_c

    :cond_1b
    const/4 v4, 0x0

    :goto_c
    iget-boolean v8, v2, Lc/f/a/i;->p:Z

    .line 41
    iget v9, v1, Lc/f/a/c;->t:I

    if-lez v9, :cond_1c

    const/4 v10, 0x1

    goto :goto_d

    :cond_1c
    const/4 v10, 0x0

    :goto_d
    if-nez v10, :cond_1d

    const/4 v3, 0x0

    goto :goto_e

    :cond_1d
    const/4 v10, 0x1

    sub-int/2addr v9, v10

    iput v9, v1, Lc/f/a/c;->t:I

    iget-object v9, v1, Lc/f/a/c;->l:Lc/f/a/y;

    invoke-virtual {v9, v8, v3}, Lc/f/a/y;->g(ZLandroid/net/NetworkInfo;)Z

    move-result v3

    .line 42
    :goto_e
    iget-object v8, v1, Lc/f/a/c;->l:Lc/f/a/y;

    invoke-virtual {v8}, Lc/f/a/y;->h()Z

    move-result v8

    if-nez v3, :cond_1f

    .line 43
    iget-boolean v3, v2, Lc/f/a/i;->o:Z

    if-eqz v3, :cond_1e

    if-eqz v8, :cond_1e

    const/4 v8, 0x1

    goto :goto_f

    :cond_1e
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v2, v1, v8}, Lc/f/a/i;->e(Lc/f/a/c;Z)V

    if-eqz v8, :cond_28

    :goto_10
    invoke-virtual {v2, v1}, Lc/f/a/i;->d(Lc/f/a/c;)V

    goto/16 :goto_13

    :cond_1f
    iget-boolean v3, v2, Lc/f/a/i;->o:Z

    if-eqz v3, :cond_21

    if-eqz v4, :cond_20

    goto :goto_11

    :cond_20
    invoke-virtual {v2, v1, v8}, Lc/f/a/i;->e(Lc/f/a/c;Z)V

    if-eqz v8, :cond_28

    goto :goto_10

    .line 44
    :cond_21
    :goto_11
    iget-object v3, v1, Lc/f/a/c;->d:Lc/f/a/t;

    .line 45
    iget-boolean v3, v3, Lc/f/a/t;->n:Z

    if-eqz v3, :cond_22

    invoke-static {v1}, Lc/f/a/f0;->f(Lc/f/a/c;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "retrying"

    .line 46
    invoke-static {v7, v4, v3, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_22
    iget-object v3, v1, Lc/f/a/c;->r:Ljava/lang/Exception;

    .line 48
    instance-of v3, v3, Lc/f/a/r$a;

    if-eqz v3, :cond_23

    iget v3, v1, Lc/f/a/c;->k:I

    const/4 v4, 0x1

    or-int/2addr v3, v4

    iput v3, v1, Lc/f/a/c;->k:I

    :cond_23
    iget-object v2, v2, Lc/f/a/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v1, Lc/f/a/c;->p:Ljava/util/concurrent/Future;

    goto/16 :goto_13

    :pswitch_a
    const/4 v5, 0x0

    .line 49
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/f/a/c;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 50
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget v3, v1, Lc/f/a/c;->j:I

    and-int/2addr v3, v4

    if-nez v3, :cond_24

    const/4 v8, 0x1

    goto :goto_12

    :cond_24
    const/4 v8, 0x0

    :goto_12
    if-eqz v8, :cond_25

    .line 52
    iget-object v3, v2, Lc/f/a/i;->k:Lc/f/a/d;

    .line 53
    iget-object v4, v1, Lc/f/a/c;->h:Ljava/lang/String;

    .line 54
    iget-object v5, v1, Lc/f/a/c;->o:Landroid/graphics/Bitmap;

    .line 55
    invoke-interface {v3, v4, v5}, Lc/f/a/d;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_25
    iget-object v3, v2, Lc/f/a/i;->e:Ljava/util/Map;

    .line 56
    iget-object v4, v1, Lc/f/a/c;->h:Ljava/lang/String;

    .line 57
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lc/f/a/i;->a(Lc/f/a/c;)V

    .line 58
    iget-object v2, v1, Lc/f/a/c;->d:Lc/f/a/t;

    .line 59
    iget-boolean v2, v2, Lc/f/a/t;->n:Z

    if-eqz v2, :cond_28

    invoke-static {v1}, Lc/f/a/f0;->f(Lc/f/a/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batched"

    const-string v3, "for completion"

    invoke-static {v7, v2, v1, v3}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 60
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/f/a/a;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    .line 61
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, v1, Lc/f/a/a;->i:Ljava/lang/String;

    .line 63
    iget-object v4, v2, Lc/f/a/i;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/f/a/c;

    if-eqz v4, :cond_26

    invoke-virtual {v4, v1}, Lc/f/a/c;->d(Lc/f/a/a;)V

    invoke-virtual {v4}, Lc/f/a/c;->b()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v2, Lc/f/a/i;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, v1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 65
    iget-boolean v3, v3, Lc/f/a/t;->n:Z

    if-eqz v3, :cond_26

    .line 66
    iget-object v3, v1, Lc/f/a/a;->b:Lc/f/a/w;

    .line 67
    invoke-virtual {v3}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {v7, v5, v3, v6}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_26
    iget-object v3, v2, Lc/f/a/i;->h:Ljava/util/Set;

    .line 70
    iget-object v4, v1, Lc/f/a/a;->j:Ljava/lang/Object;

    .line 71
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v2, Lc/f/a/i;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v3, v1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 73
    iget-boolean v3, v3, Lc/f/a/t;->n:Z

    if-eqz v3, :cond_27

    .line 74
    iget-object v3, v1, Lc/f/a/a;->b:Lc/f/a/w;

    .line 75
    invoke-virtual {v3}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "because paused request got canceled"

    invoke-static {v7, v5, v3, v4}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    iget-object v2, v2, Lc/f/a/i;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/f/a/a;

    if-eqz v1, :cond_28

    .line 76
    iget-object v2, v1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 77
    iget-boolean v2, v2, Lc/f/a/t;->n:Z

    if-eqz v2, :cond_28

    .line 78
    iget-object v1, v1, Lc/f/a/a;->b:Lc/f/a/w;

    .line 79
    invoke-virtual {v1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from replaying"

    invoke-static {v7, v5, v1, v2}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 80
    :pswitch_c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc/f/a/a;

    iget-object v2, v0, Lc/f/a/i$a;->a:Lc/f/a/i;

    const/4 v3, 0x1

    .line 81
    invoke-virtual {v2, v1, v3}, Lc/f/a/i;->f(Lc/f/a/a;Z)V

    :cond_28
    :goto_13
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
