.class public final Lc/f/a/t$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "Main"

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_e

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/f/a/a;

    iget-object v4, v1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 1
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v1, Lc/f/a/a;->e:I

    invoke-static {v5}, Lc/f/a/p;->a(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2
    iget-object v5, v1, Lc/f/a/a;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {v4, v5}, Lc/f/a/t;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    sget-object v6, Lc/f/a/t$d;->d:Lc/f/a/t$d;

    invoke-virtual {v4, v5, v6, v1}, Lc/f/a/t;->b(Landroid/graphics/Bitmap;Lc/f/a/t$d;Lc/f/a/a;)V

    iget-boolean v4, v4, Lc/f/a/t;->n:Z

    if-eqz v4, :cond_2

    iget-object v1, v1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {v1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "completed"

    invoke-static {v2, v5, v1, v4}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v1}, Lc/f/a/t;->c(Lc/f/a/a;)V

    iget-boolean v4, v4, Lc/f/a/t;->n:Z

    if-eqz v4, :cond_2

    iget-object v1, v1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {v1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "resumed"

    const-string v5, ""

    .line 4
    invoke-static {v2, v4, v1, v5}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown handler message received: "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_e

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/f/a/c;

    iget-object v3, v2, Lc/f/a/c;->d:Lc/f/a/t;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v4, v2, Lc/f/a/c;->m:Lc/f/a/a;

    .line 8
    iget-object v5, v2, Lc/f/a/c;->n:Ljava/util/List;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-nez v4, :cond_7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_5
    if-nez v6, :cond_8

    goto :goto_7

    .line 10
    :cond_8
    iget-object v6, v2, Lc/f/a/c;->i:Lc/f/a/w;

    .line 11
    iget-object v6, v6, Lc/f/a/w;->d:Landroid/net/Uri;

    .line 12
    iget-object v8, v2, Lc/f/a/c;->r:Ljava/lang/Exception;

    .line 13
    iget-object v9, v2, Lc/f/a/c;->o:Landroid/graphics/Bitmap;

    .line 14
    iget-object v2, v2, Lc/f/a/c;->q:Lc/f/a/t$d;

    if-eqz v4, :cond_9

    .line 15
    invoke-virtual {v3, v9, v2, v4}, Lc/f/a/t;->b(Landroid/graphics/Bitmap;Lc/f/a/t$d;Lc/f/a/a;)V

    :cond_9
    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v4, :cond_a

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/f/a/a;

    invoke-virtual {v3, v9, v2, v10}, Lc/f/a/t;->b(Landroid/graphics/Bitmap;Lc/f/a/t$d;Lc/f/a/a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    iget-object v2, v3, Lc/f/a/t;->a:Lc/f/a/t$c;

    if-eqz v2, :cond_b

    if-eqz v8, :cond_b

    invoke-interface {v2, v3, v6, v8}, Lc/f/a/t$c;->a(Lc/f/a/t;Landroid/net/Uri;Ljava/lang/Exception;)V

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 16
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/f/a/a;

    .line 17
    iget-object v0, p1, Lc/f/a/a;->a:Lc/f/a/t;

    .line 18
    iget-boolean v0, v0, Lc/f/a/t;->n:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {v0}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v2, v1, v0, v3}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, p1, Lc/f/a/a;->a:Lc/f/a/t;

    invoke-virtual {p1}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lc/f/a/t;->a(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method
