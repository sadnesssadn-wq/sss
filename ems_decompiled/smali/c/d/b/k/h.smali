.class public final synthetic Lc/d/b/k/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/util/Map$Entry;

.field public final synthetic d:Lc/d/b/o/a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;Lc/d/b/o/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/k/h;->c:Ljava/util/Map$Entry;

    iput-object p2, p0, Lc/d/b/k/h;->d:Lc/d/b/o/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/d/b/k/h;->c:Ljava/util/Map$Entry;

    iget-object v1, p0, Lc/d/b/k/h;->d:Lc/d/b/o/a;

    .line 1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/b/o/b;

    invoke-interface {v0, v1}, Lc/d/b/o/b;->a(Lc/d/b/o/a;)V

    return-void
.end method
