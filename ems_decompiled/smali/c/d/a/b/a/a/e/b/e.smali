.class public final Lc/d/a/b/a/a/e/b/e;
.super Lb/p/b/a;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/p/b/a<",
        "Ljava/lang/Void;",
        ">;",
        "Lc/d/a/b/e/m/m/p;"
    }
.end annotation


# instance fields
.field public k:Ljava/util/concurrent/Semaphore;

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Lc/d/a/b/e/m/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/p/b/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lc/d/a/b/a/a/e/b/e;->k:Ljava/util/concurrent/Semaphore;

    iput-object p2, p0, Lc/d/a/b/a/a/e/b/e;->l:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc/d/a/b/a/a/e/b/e;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
