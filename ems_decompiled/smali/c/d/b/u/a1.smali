.class public final synthetic Lc/d/b/u/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public synthetic a:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/a1;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 1

    iget-object p1, p0, Lc/d/b/u/a1;->a:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
