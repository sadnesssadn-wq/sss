.class public final Lc/d/a/b/e/m/m/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/e$b;
.implements Lc/d/a/b/e/m/e$c;
.implements Lc/d/a/b/e/m/m/b2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/m/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/d/a/b/e/m/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lc/d/a/b/e/m/e$b;",
        "Lc/d/a/b/e/m/e$c;",
        "Lc/d/a/b/e/m/m/b2;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/d/a/b/e/m/m/p0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/b/e/m/a$f;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public final e:Lc/d/a/b/e/m/m/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final f:Lc/d/a/b/e/m/m/h2;

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/m/z1;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/e/m/m/j$a<",
            "*>;",
            "Lc/d/a/b/e/m/m/i1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:I

.field public final j:Lc/d/a/b/e/m/m/k1;

.field public k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/e/m/m/g$b;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lc/d/a/b/e/a;

.field public n:I

.field public final synthetic o:Lc/d/a/b/e/m/m/g;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/g;Lc/d/a/b/e/m/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/d<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->l:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->m:Lc/d/a/b/e/a;

    const/4 v1, 0x0

    iput v1, p0, Lc/d/a/b/e/m/m/g$a;->n:I

    .line 1
    iget-object v1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 3
    invoke-virtual {p2}, Lc/d/a/b/e/m/d;->a()Lc/d/a/b/e/p/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lc/d/a/b/e/p/d$a;->a()Lc/d/a/b/e/p/d;

    move-result-object v5

    iget-object v1, p2, Lc/d/a/b/e/m/d;->c:Lc/d/a/b/e/m/a;

    .line 4
    iget-object v2, v1, Lc/d/a/b/e/m/a;->a:Lc/d/a/b/e/m/a$a;

    const-string v1, "null reference"

    .line 5
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iget-object v3, p2, Lc/d/a/b/e/m/d;->a:Landroid/content/Context;

    iget-object v6, p2, Lc/d/a/b/e/m/d;->d:Lc/d/a/b/e/m/a$d;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lc/d/a/b/e/m/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Ljava/lang/Object;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)Lc/d/a/b/e/m/a$f;

    move-result-object v1

    .line 7
    iget-object v2, p2, Lc/d/a/b/e/m/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8
    instance-of v3, v1, Lc/d/a/b/e/p/b;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lc/d/a/b/e/p/b;

    .line 9
    iput-object v2, v3, Lc/d/a/b/e/p/b;->w:Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    .line 10
    instance-of v2, v1, Lc/d/a/b/e/m/m/l;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lc/d/a/b/e/m/m/l;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    iput-object v1, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    .line 13
    iget-object v2, p2, Lc/d/a/b/e/m/d;->e:Lc/d/a/b/e/m/m/b;

    .line 14
    iput-object v2, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    new-instance v2, Lc/d/a/b/e/m/m/h2;

    invoke-direct {v2}, Lc/d/a/b/e/m/m/h2;-><init>()V

    iput-object v2, p0, Lc/d/a/b/e/m/m/g$a;->f:Lc/d/a/b/e/m/m/h2;

    .line 15
    iget v2, p2, Lc/d/a/b/e/m/d;->g:I

    .line 16
    iput v2, p0, Lc/d/a/b/e/m/m/g$a;->i:I

    invoke-interface {v1}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    iget-object v0, p1, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    .line 18
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 19
    new-instance v1, Lc/d/a/b/e/m/m/k1;

    invoke-virtual {p2}, Lc/d/a/b/e/m/d;->a()Lc/d/a/b/e/p/d$a;

    move-result-object p2

    invoke-virtual {p2}, Lc/d/a/b/e/p/d$a;->a()Lc/d/a/b/e/p/d;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lc/d/a/b/e/m/m/k1;-><init>(Landroid/content/Context;Landroid/os/Handler;Lc/d/a/b/e/p/d;)V

    .line 20
    iput-object v1, p0, Lc/d/a/b/e/m/m/g$a;->j:Lc/d/a/b/e/m/m/k1;

    return-void

    :cond_2
    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->j:Lc/d/a/b/e/m/m/k1;

    return-void
.end method


# virtual methods
.method public final a([Lc/d/a/b/e/c;)Lc/d/a/b/e/c;
    .locals 9

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->n()[Lc/d/a/b/e/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Lc/d/a/b/e/c;

    :cond_1
    new-instance v2, Lb/f/a;

    array-length v3, v0

    invoke-direct {v2, v3}, Lb/f/a;-><init>(I)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 1
    iget-object v6, v5, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v5}, Lc/d/a/b/e/c;->v()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 3
    iget-object v4, v3, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v4}, Lb/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lc/d/a/b/e/c;->v()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    sget-object v0, Lc/d/a/b/e/m/m/g;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 4
    iget-object v1, v1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 5
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 6
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->f:Lc/d/a/b/e/m/m/h2;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lc/d/a/b/e/m/m/h2;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 8
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lc/d/a/b/e/m/m/j$a;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/e/m/m/j$a;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lc/d/a/b/e/m/m/x1;

    new-instance v5, Lc/d/a/b/p/m;

    invoke-direct {v5}, Lc/d/a/b/p/m;-><init>()V

    invoke-direct {v4, v3, v5}, Lc/d/a/b/e/m/m/x1;-><init>(Lc/d/a/b/e/m/m/j$a;Lc/d/a/b/p/m;)V

    invoke-virtual {p0, v4}, Lc/d/a/b/e/m/m/g$a;->f(Lc/d/a/b/e/m/m/p0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lc/d/a/b/e/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc/d/a/b/e/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/g$a;->j(Lc/d/a/b/e/a;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    new-instance v1, Lc/d/a/b/e/m/m/w0;

    invoke-direct {v1, p0}, Lc/d/a/b/e/m/m/w0;-><init>(Lc/d/a/b/e/m/m/g$a;)V

    invoke-interface {v0, v1}, Lc/d/a/b/e/m/a$f;->c(Lc/d/a/b/e/p/b$e;)V

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 5

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/g$a;->k:Z

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->f:Lc/d/a/b/e/m/m/h2;

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v2}, Lc/d/a/b/e/m/a$f;->p()Ljava/lang/String;

    move-result-object v2

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection to Google Play services was lost"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v0, :cond_0

    const-string p1, " due to service disconnection."

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    const-string p1, " due to dead object exception."

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x14

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lc/d/a/b/e/m/m/h2;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 2
    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 4
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x1388

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 7
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v0, 0xb

    .line 8
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v1, 0x1d4c0

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 11
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->g:Lc/d/a/b/e/p/e0;

    .line 12
    iget-object p1, p1, Lc/d/a/b/e/p/e0;->a:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 13
    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/i1;

    iget-object v0, v0, Lc/d/a/b/e/m/m/i1;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V
    .locals 5

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->j:Lc/d/a/b/e/m/m/k1;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->s()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->l()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 5
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->g:Lc/d/a/b/e/p/e0;

    .line 6
    iget-object v0, v0, Lc/d/a/b/e/p/e0;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->j(Lc/d/a/b/e/a;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    instance-of v0, v0, Lc/d/a/b/e/p/s/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 8
    iput-boolean v1, v0, Lc/d/a/b/e/m/m/g;->b:Z

    .line 9
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v2, 0x13

    .line 10
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 11
    :cond_1
    iget v0, p1, Lc/d/a/b/e/a;->d:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    .line 12
    sget-object p1, Lc/d/a/b/e/m/m/g;->o:Lcom/google/android/gms/common/api/Status;

    sget-object p1, Lc/d/a/b/e/m/m/g;->p:Lcom/google/android/gms/common/api/Status;

    .line 13
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 14
    iget-object p2, p2, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 15
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v4, v3}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lc/d/a/b/e/m/m/g$a;->m:Lc/d/a/b/e/a;

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 17
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 18
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {p0, v4, p2, v3}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 19
    iget-boolean p2, p2, Lc/d/a/b/e/m/m/g;->n:Z

    if-nez p2, :cond_5

    .line 20
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    .line 21
    invoke-static {p2, p1}, Lc/d/a/b/e/m/m/g;->d(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 23
    iget-object p2, p2, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 24
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v4, v3}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    .line 25
    :cond_5
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    .line 26
    invoke-static {p2, p1}, Lc/d/a/b/e/m/m/g;->d(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 27
    invoke-virtual {p0, p2, v4, v1}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->h(Lc/d/a/b/e/a;)Z

    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    iget v0, p0, Lc/d/a/b/e/m/m/g$a;->i:I

    invoke-virtual {p2, p1, v0}, Lc/d/a/b/e/m/m/g;->c(Lc/d/a/b/e/a;I)Z

    move-result p2

    if-nez p2, :cond_9

    .line 28
    iget p2, p1, Lc/d/a/b/e/a;->d:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_7

    .line 29
    iput-boolean v1, p0, Lc/d/a/b/e/m/m/g$a;->k:Z

    :cond_7
    iget-boolean p2, p0, Lc/d/a/b/e/m/m/g$a;->k:Z

    if-eqz p2, :cond_8

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 30
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 p2, 0x9

    .line 31
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-static {p1, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x1388

    .line 33
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 34
    :cond_8
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    .line 35
    invoke-static {p2, p1}, Lc/d/a/b/e/m/m/g;->d(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 37
    iget-object p2, p2, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 38
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    invoke-virtual {p0, p1, v4, v3}, Lc/d/a/b/e/m/m/g$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    :cond_9
    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/m/p0;

    if-eqz p3, :cond_3

    iget v2, v1, Lc/d/a/b/e/m/m/p0;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v1, p1}, Lc/d/a/b/e/m/m/p0;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, p2}, Lc/d/a/b/e/m/m/p0;->e(Ljava/lang/Exception;)V

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final f(Lc/d/a/b/e/m/m/p0;)V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->i(Lc/d/a/b/e/m/m/p0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->s()V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->m:Lc/d/a/b/e/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/d/a/b/e/a;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->m:Lc/d/a/b/e/a;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->m()V

    return-void
.end method

.method public final g(Z)Z
    .locals 4

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->f:Lc/d/a/b/e/m/m/h2;

    .line 3
    iget-object v2, v0, Lc/d/a/b/e/m/m/h2;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lc/d/a/b/e/m/m/h2;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->s()V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    const-string v0, "Timing out service connection."

    invoke-interface {p1, v0}, Lc/d/a/b/e/m/a$f;->i(Ljava/lang/String;)V

    return v3

    :cond_4
    return v1
.end method

.method public final h(Lc/d/a/b/e/a;)Z
    .locals 1

    sget-object p1, Lc/d/a/b/e/m/m/g;->o:Lcom/google/android/gms/common/api/Status;

    sget-object p1, Lc/d/a/b/e/m/m/g;->q:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i(Lc/d/a/b/e/m/m/p0;)Z
    .locals 8

    instance-of v0, p1, Lc/d/a/b/e/m/m/u1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->k(Lc/d/a/b/e/m/m/p0;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lc/d/a/b/e/m/m/u1;

    invoke-virtual {v0, p0}, Lc/d/a/b/e/m/m/u1;->f(Lc/d/a/b/e/m/m/g$a;)[Lc/d/a/b/e/c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/d/a/b/e/m/m/g$a;->a([Lc/d/a/b/e/c;)Lc/d/a/b/e/c;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->k(Lc/d/a/b/e/m/m/p0;)V

    return v1

    :cond_1
    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v3, v2, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v2}, Lc/d/a/b/e/c;->v()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4d

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "GoogleApiManager"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-boolean p1, p1, Lc/d/a/b/e/m/m/g;->n:Z

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {v0, p0}, Lc/d/a/b/e/m/m/u1;->g(Lc/d/a/b/e/m/m/g$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lc/d/a/b/e/m/m/g$b;

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v2, v1}, Lc/d/a/b/e/m/m/g$b;-><init>(Lc/d/a/b/e/m/m/b;Lc/d/a/b/e/c;Lc/d/a/b/e/m/m/t0;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-wide/16 v2, 0x1388

    const/16 v4, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/e/m/m/g$b;

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 5
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 6
    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 7
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 8
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 11
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 12
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 13
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 15
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 16
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    .line 18
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Lc/d/a/b/e/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v1}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->h(Lc/d/a/b/e/a;)Z

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    iget v1, p0, Lc/d/a/b/e/m/m/g$a;->i:I

    invoke-virtual {v0, p1, v1}, Lc/d/a/b/e/m/m/g;->c(Lc/d/a/b/e/a;I)Z

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    new-instance p1, Lc/d/a/b/e/m/l;

    invoke-direct {p1, v2}, Lc/d/a/b/e/m/l;-><init>(Lc/d/a/b/e/c;)V

    invoke-virtual {v0, p1}, Lc/d/a/b/e/m/m/p0;->e(Ljava/lang/Exception;)V

    return v1
.end method

.method public final j(Lc/d/a/b/e/a;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/e/m/m/z1;

    sget-object v1, Lc/d/a/b/e/a;->g:Lc/d/a/b/e/a;

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {p1}, Lc/d/a/b/e/m/a$f;->o()Ljava/lang/String;

    .line 1
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    .line 2
    :cond_1
    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final k(Lc/d/a/b/e/m/m/p0;)V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->f:Lc/d/a/b/e/m/m/h2;

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->o()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/e/m/m/p0;->d(Lc/d/a/b/e/m/m/h2;Z)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p0}, Lc/d/a/b/e/m/m/p0;->c(Lc/d/a/b/e/m/m/g$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Error in GoogleApi implementation for client %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/g$a;->onConnectionSuspended(I)V

    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    invoke-interface {p1, v0}, Lc/d/a/b/e/m/a$f;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/g$a;->m:Lc/d/a/b/e/a;

    return-void
.end method

.method public final m()V
    .locals 10

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-object v2, v1, Lc/d/a/b/e/m/m/g;->g:Lc/d/a/b/e/p/e0;

    .line 4
    iget-object v1, v1, Lc/d/a/b/e/m/m/g;->e:Landroid/content/Context;

    .line 5
    iget-object v3, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-virtual {v2, v1, v3}, Lc/d/a/b/e/p/e0;->a(Landroid/content/Context;Lc/d/a/b/e/m/a$f;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lc/d/a/b/e/a;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lc/d/a/b/e/a;-><init>(ILandroid/app/PendingIntent;)V

    const-string v1, "GoogleApiManager"

    iget-object v4, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "The service for "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0, v2, v3}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 7
    :cond_1
    new-instance v1, Lc/d/a/b/e/m/m/g$c;

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    iget-object v3, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    iget-object v4, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-direct {v1, v2, v3, v4}, Lc/d/a/b/e/m/m/g$c;-><init>(Lc/d/a/b/e/m/m/g;Lc/d/a/b/e/m/a$f;Lc/d/a/b/e/m/m/b;)V

    invoke-interface {v3}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->j:Lc/d/a/b/e/m/m/k1;

    const-string v3, "null reference"

    .line 8
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v3, v2, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lc/d/a/b/e/m/a$f;->s()V

    :cond_2
    iget-object v3, v2, Lc/d/a/b/e/m/m/k1;->g:Lc/d/a/b/e/p/d;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 10
    iput-object v4, v3, Lc/d/a/b/e/p/d;->h:Ljava/lang/Integer;

    .line 11
    iget-object v3, v2, Lc/d/a/b/e/m/m/k1;->e:Lc/d/a/b/e/m/a$a;

    iget-object v4, v2, Lc/d/a/b/e/m/m/k1;->c:Landroid/content/Context;

    iget-object v5, v2, Lc/d/a/b/e/m/m/k1;->d:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, v2, Lc/d/a/b/e/m/m/k1;->g:Lc/d/a/b/e/p/d;

    .line 12
    iget-object v7, v6, Lc/d/a/b/e/p/d;->g:Lc/d/a/b/n/a;

    move-object v8, v2

    move-object v9, v2

    .line 13
    invoke-virtual/range {v3 .. v9}, Lc/d/a/b/e/m/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lc/d/a/b/e/p/d;Ljava/lang/Object;Lc/d/a/b/e/m/e$b;Lc/d/a/b/e/m/e$c;)Lc/d/a/b/e/m/a$f;

    move-result-object v3

    check-cast v3, Lc/d/a/b/n/g;

    iput-object v3, v2, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    iput-object v1, v2, Lc/d/a/b/e/m/m/k1;->i:Lc/d/a/b/e/m/m/n1;

    iget-object v3, v2, Lc/d/a/b/e/m/m/k1;->f:Ljava/util/Set;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, v2, Lc/d/a/b/e/m/m/k1;->h:Lc/d/a/b/n/g;

    invoke-interface {v2}, Lc/d/a/b/n/g;->k()V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v3, v2, Lc/d/a/b/e/m/m/k1;->d:Landroid/os/Handler;

    new-instance v4, Lc/d/a/b/e/m/m/m1;

    invoke-direct {v4, v2}, Lc/d/a/b/e/m/m/m1;-><init>(Lc/d/a/b/e/m/m/k1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_5
    :goto_1
    :try_start_1
    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v2, v1}, Lc/d/a/b/e/m/a$f;->r(Lc/d/a/b/e/p/b$c;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Lc/d/a/b/e/a;

    invoke-direct {v2, v0}, Lc/d/a/b/e/a;-><init>(I)V

    :goto_2
    invoke-virtual {p0, v2, v1}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v1

    new-instance v2, Lc/d/a/b/e/a;

    invoke-direct {v2, v0}, Lc/d/a/b/e/a;-><init>(I)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public final n(Lc/d/a/b/e/a;Lc/d/a/b/e/m/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/a;",
            "Lc/d/a/b/e/m/a<",
            "*>;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object p3, p3, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    iget-object p2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 5
    iget-object p2, p2, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 6
    new-instance p3, Lc/d/a/b/e/m/m/x0;

    invoke-direct {p3, p0, p1}, Lc/d/a/b/e/m/m/x0;-><init>(Lc/d/a/b/e/m/m/g$a;Lc/d/a/b/e/a;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v0}, Lc/d/a/b/e/m/a$f;->u()Z

    move-result v0

    return v0
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->p()V

    return-void

    :cond_0
    iget-object p1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-object p1, p1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 4
    new-instance v0, Lc/d/a/b/e/m/m/v0;

    invoke-direct {v0, p0}, Lc/d/a/b/e/m/m/v0;-><init>(Lc/d/a/b/e/m/m/g$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lc/d/a/b/e/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v1, v1, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/g$a;->c(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 4
    new-instance v1, Lc/d/a/b/e/m/m/u0;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/e/m/m/u0;-><init>(Lc/d/a/b/e/m/m/g$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p()V
    .locals 4

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->l()V

    sget-object v0, Lc/d/a/b/e/a;->g:Lc/d/a/b/e/a;

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/g$a;->j(Lc/d/a/b/e/a;)V

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->r()V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/e/m/m/i1;

    iget-object v2, v1, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    .line 1
    iget-object v2, v2, Lc/d/a/b/e/m/m/n;->b:[Lc/d/a/b/e/c;

    .line 2
    invoke-virtual {p0, v2}, Lc/d/a/b/e/m/m/g$a;->a([Lc/d/a/b/e/c;)Lc/d/a/b/e/c;

    move-result-object v2

    if-eqz v2, :cond_0

    :catch_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, v1, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    new-instance v3, Lc/d/a/b/p/m;

    invoke-direct {v3}, Lc/d/a/b/p/m;-><init>()V

    invoke-virtual {v1, v2, v3}, Lc/d/a/b/e/m/m/n;->a(Lc/d/a/b/e/m/a$b;Lc/d/a/b/p/m;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lc/d/a/b/e/m/m/g$a;->onConnectionSuspended(I)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    const-string v1, "DeadObjectException thrown while calling register listener method."

    invoke-interface {v0, v1}, Lc/d/a/b/e/m/a$f;->i(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->q()V

    invoke-virtual {p0}, Lc/d/a/b/e/m/m/g$a;->s()V

    return-void
.end method

.method public final q()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lc/d/a/b/e/m/m/p0;

    iget-object v4, p0, Lc/d/a/b/e/m/m/g$a;->d:Lc/d/a/b/e/m/a$f;

    invoke-interface {v4}, Lc/d/a/b/e/m/a$f;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lc/d/a/b/e/m/m/g$a;->i(Lc/d/a/b/e/m/m/p0;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc/d/a/b/e/m/m/g$a;->c:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final r()V
    .locals 3

    iget-boolean v0, p0, Lc/d/a/b/e/m/m/g$a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2
    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 4
    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/e/m/m/g$a;->k:Z

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 3
    iget-object v0, v0, Lc/d/a/b/e/m/m/g;->m:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lc/d/a/b/e/m/m/g$a;->e:Lc/d/a/b/e/m/m/b;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/e/m/m/g$a;->o:Lc/d/a/b/e/m/m/g;

    .line 5
    iget-wide v2, v2, Lc/d/a/b/e/m/m/g;->a:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
