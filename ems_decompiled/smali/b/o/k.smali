.class public Lb/o/k;
.super Lb/o/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/o/k$a;
    }
.end annotation


# instance fields
.field public a:Lb/c/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/a/b/a<",
            "Lb/o/i;",
            "Lb/o/k$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/o/f$b;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lb/o/j;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/o/f$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z


# direct methods
.method public constructor <init>(Lb/o/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/o/f;-><init>()V

    new-instance v0, Lb/c/a/b/a;

    invoke-direct {v0}, Lb/c/a/b/a;-><init>()V

    iput-object v0, p0, Lb/o/k;->a:Lb/c/a/b/a;

    const/4 v0, 0x0

    iput v0, p0, Lb/o/k;->d:I

    iput-boolean v0, p0, Lb/o/k;->e:Z

    iput-boolean v0, p0, Lb/o/k;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/o/k;->c:Ljava/lang/ref/WeakReference;

    sget-object p1, Lb/o/f$b;->d:Lb/o/f$b;

    iput-object p1, p0, Lb/o/k;->b:Lb/o/f$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/o/k;->h:Z

    return-void
.end method

.method public static f(Lb/o/f$b;Lb/o/f$b;)Lb/o/f$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lb/o/i;)V
    .locals 5

    const-string v0, "addObserver"

    invoke-virtual {p0, v0}, Lb/o/k;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lb/o/k;->b:Lb/o/f$b;

    sget-object v1, Lb/o/f$b;->c:Lb/o/f$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lb/o/f$b;->d:Lb/o/f$b;

    :goto_0
    new-instance v0, Lb/o/k$a;

    invoke-direct {v0, p1, v1}, Lb/o/k$a;-><init>(Lb/o/i;Lb/o/f$b;)V

    iget-object v1, p0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {v1, p1, v0}, Lb/c/a/b/a;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/o/k$a;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lb/o/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/o/j;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Lb/o/k;->d:I

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lb/o/k;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0, p1}, Lb/o/k;->c(Lb/o/i;)Lb/o/f$b;

    move-result-object v3

    iget v4, p0, Lb/o/k;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lb/o/k;->d:I

    :goto_3
    iget-object v4, v0, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_6

    iget-object v3, p0, Lb/o/k;->a:Lb/c/a/b/a;

    .line 1
    iget-object v3, v3, Lb/c/a/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2
    iget-object v3, v0, Lb/o/k$a;->a:Lb/o/f$b;

    .line 3
    iget-object v4, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v3, v0, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-static {v3}, Lb/o/f$a;->d(Lb/o/f$b;)Lb/o/f$a;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v1, v3}, Lb/o/k$a;->a(Lb/o/j;Lb/o/f$a;)V

    invoke-virtual {p0}, Lb/o/k;->h()V

    invoke-virtual {p0, p1}, Lb/o/k;->c(Lb/o/i;)Lb/o/f$b;

    move-result-object v3

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p0}, Lb/o/k;->i()V

    :cond_7
    iget p1, p0, Lb/o/k;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lb/o/k;->d:I

    return-void
.end method

.method public b(Lb/o/i;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Lb/o/k;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {v0, p1}, Lb/c/a/b/a;->n(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Lb/o/i;)Lb/o/f$b;
    .locals 3

    iget-object v0, p0, Lb/o/k;->a:Lb/c/a/b/a;

    .line 1
    iget-object v1, v0, Lb/c/a/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Lb/c/a/b/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/c/a/b/b$c;

    iget-object p1, p1, Lb/c/a/b/b$c;->f:Lb/c/a/b/b$c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lb/c/a/b/b$c;->d:Ljava/lang/Object;

    .line 4
    check-cast p1, Lb/o/k$a;

    iget-object p1, p1, Lb/o/k$a;->a:Lb/o/f$b;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb/o/f$b;

    :cond_2
    iget-object v0, p0, Lb/o/k;->b:Lb/o/f$b;

    invoke-static {v0, p1}, Lb/o/k;->f(Lb/o/f$b;Lb/o/f$b;)Lb/o/f$b;

    move-result-object p1

    invoke-static {p1, v2}, Lb/o/k;->f(Lb/o/f$b;Lb/o/f$b;)Lb/o/f$b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget-boolean v0, p0, Lb/o/k;->h:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lb/c/a/a/a;->c()Lb/c/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/c/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method "

    const-string v2, " must be called on the main thread"

    invoke-static {v1, p1, v2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lb/o/f$a;)V
    .locals 1

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Lb/o/k;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/o/f$a;->a()Lb/o/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/o/k;->g(Lb/o/f$b;)V

    return-void
.end method

.method public final g(Lb/o/f$b;)V
    .locals 1

    iget-object v0, p0, Lb/o/k;->b:Lb/o/f$b;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lb/o/k;->b:Lb/o/f$b;

    iget-boolean p1, p0, Lb/o/k;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lb/o/k;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lb/o/k;->e:Z

    invoke-virtual {p0}, Lb/o/k;->i()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/o/k;->e:Z

    return-void

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lb/o/k;->f:Z

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final i()V
    .locals 7

    iget-object v0, p0, Lb/o/k;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/o/j;

    if-eqz v0, :cond_c

    .line 1
    :cond_0
    iget-object v1, p0, Lb/o/k;->a:Lb/c/a/b/a;

    .line 2
    iget v2, v1, Lb/c/a/b/b;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v2, v1, Lb/c/a/b/b;->c:Lb/c/a/b/b$c;

    .line 4
    iget-object v2, v2, Lb/c/a/b/b$c;->d:Ljava/lang/Object;

    .line 5
    check-cast v2, Lb/o/k$a;

    iget-object v2, v2, Lb/o/k$a;->a:Lb/o/f$b;

    .line 6
    iget-object v5, v1, Lb/c/a/b/b;->d:Lb/c/a/b/b$c;

    .line 7
    iget-object v5, v5, Lb/c/a/b/b$c;->d:Ljava/lang/Object;

    .line 8
    check-cast v5, Lb/o/k$a;

    iget-object v5, v5, Lb/o/k$a;->a:Lb/o/f$b;

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lb/o/k;->b:Lb/o/f$b;

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 9
    :goto_0
    iput-boolean v4, p0, Lb/o/k;->f:Z

    if-nez v3, :cond_b

    iget-object v2, p0, Lb/o/k;->b:Lb/o/f$b;

    .line 10
    iget-object v1, v1, Lb/c/a/b/b;->c:Lb/c/a/b/b$c;

    .line 11
    iget-object v1, v1, Lb/c/a/b/b$c;->d:Ljava/lang/Object;

    .line 12
    check-cast v1, Lb/o/k$a;

    iget-object v1, v1, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_8

    .line 13
    iget-object v1, p0, Lb/o/k;->a:Lb/c/a/b/a;

    .line 14
    new-instance v2, Lb/c/a/b/b$b;

    iget-object v3, v1, Lb/c/a/b/b;->d:Lb/c/a/b/b$c;

    iget-object v4, v1, Lb/c/a/b/b;->c:Lb/c/a/b/b$c;

    invoke-direct {v2, v3, v4}, Lb/c/a/b/b$b;-><init>(Lb/c/a/b/b$c;Lb/c/a/b/b$c;)V

    iget-object v1, v1, Lb/c/a/b/b;->e:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_3
    invoke-virtual {v2}, Lb/c/a/b/b$e;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lb/o/k;->f:Z

    if-nez v1, :cond_8

    invoke-virtual {v2}, Lb/c/a/b/b$e;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/k$a;

    :goto_1
    iget-object v4, v3, Lb/o/k$a;->a:Lb/o/f$b;

    iget-object v5, p0, Lb/o/k;->b:Lb/o/f$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Lb/o/k;->f:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lb/o/k$a;->a:Lb/o/f$b;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    sget-object v4, Lb/o/f$a;->ON_PAUSE:Lb/o/f$a;

    goto :goto_2

    :cond_5
    sget-object v4, Lb/o/f$a;->ON_STOP:Lb/o/f$a;

    goto :goto_2

    :cond_6
    sget-object v4, Lb/o/f$a;->ON_DESTROY:Lb/o/f$a;

    :goto_2
    if-eqz v4, :cond_7

    .line 17
    invoke-virtual {v4}, Lb/o/f$a;->a()Lb/o/f$b;

    move-result-object v5

    .line 18
    iget-object v6, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v3, v0, v4}, Lb/o/k$a;->a(Lb/o/j;Lb/o/f$a;)V

    invoke-virtual {p0}, Lb/o/k;->h()V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event down from "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_8
    iget-object v1, p0, Lb/o/k;->a:Lb/c/a/b/a;

    .line 21
    iget-object v1, v1, Lb/c/a/b/b;->d:Lb/c/a/b/b$c;

    .line 22
    iget-boolean v2, p0, Lb/o/k;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lb/o/k;->b:Lb/o/f$b;

    .line 23
    iget-object v1, v1, Lb/c/a/b/b$c;->d:Ljava/lang/Object;

    .line 24
    check-cast v1, Lb/o/k$a;

    iget-object v1, v1, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    iget-object v1, p0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-virtual {v1}, Lb/c/a/b/b;->k()Lb/c/a/b/b$d;

    move-result-object v1

    :cond_9
    invoke-virtual {v1}, Lb/c/a/b/b$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lb/o/k;->f:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lb/c/a/b/b$d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/o/k$a;

    :goto_3
    iget-object v4, v3, Lb/o/k$a;->a:Lb/o/f$b;

    iget-object v5, p0, Lb/o/k;->b:Lb/o/f$b;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_9

    iget-boolean v4, p0, Lb/o/k;->f:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Lb/o/k;->a:Lb/c/a/b/a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/c/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v3, Lb/o/k$a;->a:Lb/o/f$b;

    .line 26
    iget-object v5, p0, Lb/o/k;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v4, v3, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-static {v4}, Lb/o/f$a;->d(Lb/o/f$b;)Lb/o/f$a;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3, v0, v4}, Lb/o/k$a;->a(Lb/o/j;Lb/o/f$a;)V

    invoke-virtual {p0}, Lb/o/k;->h()V

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no event up from "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lb/o/k$a;->a:Lb/o/f$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void

    .line 28
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
