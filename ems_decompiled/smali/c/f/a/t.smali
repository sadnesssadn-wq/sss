.class public Lc/f/a/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/t$d;,
        Lc/f/a/t$b;,
        Lc/f/a/t$e;,
        Lc/f/a/t$f;,
        Lc/f/a/t$c;
    }
.end annotation


# static fields
.field public static final o:Landroid/os/Handler;

.field public static volatile p:Lc/f/a/t;


# instance fields
.field public final a:Lc/f/a/t$c;

.field public final b:Lc/f/a/t$f;

.field public final c:Lc/f/a/t$b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/f/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Lc/f/a/i;

.field public final g:Lc/f/a/d;

.field public final h:Lc/f/a/a0;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lc/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Lc/f/a/h;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Landroid/graphics/Bitmap$Config;

.field public m:Z

.field public volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/f/a/t$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/f/a/t$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc/f/a/t;->o:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lc/f/a/t;->p:Lc/f/a/t;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/f/a/i;Lc/f/a/d;Lc/f/a/t$c;Lc/f/a/t$f;Ljava/util/List;Lc/f/a/a0;Landroid/graphics/Bitmap$Config;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/f/a/i;",
            "Lc/f/a/d;",
            "Lc/f/a/t$c;",
            "Lc/f/a/t$f;",
            "Ljava/util/List<",
            "Lc/f/a/y;",
            ">;",
            "Lc/f/a/a0;",
            "Landroid/graphics/Bitmap$Config;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/f/a/t;->e:Landroid/content/Context;

    iput-object p2, p0, Lc/f/a/t;->f:Lc/f/a/i;

    iput-object p3, p0, Lc/f/a/t;->g:Lc/f/a/d;

    const/4 p3, 0x0

    iput-object p3, p0, Lc/f/a/t;->a:Lc/f/a/t$c;

    iput-object p5, p0, Lc/f/a/t;->b:Lc/f/a/t$f;

    iput-object p3, p0, Lc/f/a/t;->l:Landroid/graphics/Bitmap$Config;

    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x7

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance p4, Lc/f/a/z;

    invoke-direct {p4, p1}, Lc/f/a/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lc/f/a/f;

    invoke-direct {p4, p1}, Lc/f/a/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lc/f/a/o;

    invoke-direct {p4, p1}, Lc/f/a/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lc/f/a/g;

    invoke-direct {p4, p1}, Lc/f/a/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lc/f/a/b;

    invoke-direct {p4, p1}, Lc/f/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p4, Lc/f/a/k;

    invoke-direct {p4, p1}, Lc/f/a/k;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lc/f/a/r;

    iget-object p2, p2, Lc/f/a/i;->d:Lc/f/a/j;

    invoke-direct {p1, p2, p7}, Lc/f/a/r;-><init>(Lc/f/a/j;Lc/f/a/a0;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/f/a/t;->d:Ljava/util/List;

    iput-object p7, p0, Lc/f/a/t;->h:Lc/f/a/a0;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lc/f/a/t;->i:Ljava/util/Map;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lc/f/a/t;->j:Ljava/util/Map;

    iput-boolean p9, p0, Lc/f/a/t;->m:Z

    iput-boolean p10, p0, Lc/f/a/t;->n:Z

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lc/f/a/t;->k:Ljava/lang/ref/ReferenceQueue;

    new-instance p2, Lc/f/a/t$b;

    sget-object p3, Lc/f/a/t;->o:Landroid/os/Handler;

    invoke-direct {p2, p1, p3}, Lc/f/a/t$b;-><init>(Ljava/lang/ref/ReferenceQueue;Landroid/os/Handler;)V

    iput-object p2, p0, Lc/f/a/t;->c:Lc/f/a/t$b;

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lc/f/a/f0;->b()V

    iget-object v0, p0, Lc/f/a/t;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/f/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/f/a/a;->a()V

    iget-object v1, p0, Lc/f/a/t;->f:Lc/f/a/i;

    .line 1
    iget-object v1, v1, Lc/f/a/i;->i:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lc/f/a/t;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/f/a/h;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lc/f/a/h;->e:Lc/f/a/e;

    iget-object v0, p1, Lc/f/a/h;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;Lc/f/a/t$d;Lc/f/a/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p3, Lc/f/a/a;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p3, Lc/f/a/a;->k:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/f/a/t;->i:Ljava/util/Map;

    invoke-virtual {p3}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "Main"

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p3, p1, p2}, Lc/f/a/a;->b(Landroid/graphics/Bitmap;Lc/f/a/t$d;)V

    iget-boolean p1, p0, Lc/f/a/t;->n:Z

    if-eqz p1, :cond_4

    iget-object p1, p3, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {p1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "completed"

    invoke-static {v0, p3, p1, p2}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "LoadedFrom cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p3}, Lc/f/a/a;->c()V

    iget-boolean p1, p0, Lc/f/a/t;->n:Z

    if-eqz p1, :cond_4

    iget-object p1, p3, Lc/f/a/a;->b:Lc/f/a/w;

    invoke-virtual {p1}, Lc/f/a/w;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errored"

    const-string p3, ""

    .line 4
    invoke-static {v0, p2, p1, p3}, Lc/f/a/f0;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Lc/f/a/a;)V
    .locals 2

    invoke-virtual {p1}, Lc/f/a/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lc/f/a/t;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0, v0}, Lc/f/a/t;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lc/f/a/t;->i:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :cond_0
    iget-object v0, p0, Lc/f/a/t;->f:Lc/f/a/i;

    .line 2
    iget-object v0, v0, Lc/f/a/i;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lc/f/a/t;->g:Lc/f/a/d;

    invoke-interface {v0, p1}, Lc/f/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lc/f/a/t;->h:Lc/f/a/a0;

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, v0, Lc/f/a/a0;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, v0, Lc/f/a/a0;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-object p1
.end method
