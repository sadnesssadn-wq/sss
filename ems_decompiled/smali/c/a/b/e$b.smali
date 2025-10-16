.class public Lc/a/b/e$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:Lc/a/b/j;

.field public final d:Lc/a/b/l;

.field public final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lc/a/b/j;Lc/a/b/l;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    iput-object p2, p0, Lc/a/b/e$b;->d:Lc/a/b/l;

    iput-object p3, p0, Lc/a/b/e$b;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    invoke-virtual {v0}, Lc/a/b/j;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lc/a/b/j;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/b/e$b;->d:Lc/a/b/l;

    .line 1
    iget-object v1, v0, Lc/a/b/l;->c:Lcom/android/volley/VolleyError;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 2
    iget-object v1, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    iget-object v0, v0, Lc/a/b/l;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lc/a/b/j;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    invoke-virtual {v0, v1}, Lc/a/b/j;->deliverError(Lcom/android/volley/VolleyError;)V

    :goto_1
    iget-object v0, p0, Lc/a/b/e$b;->d:Lc/a/b/l;

    iget-boolean v0, v0, Lc/a/b/l;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lc/a/b/j;->addMarker(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lc/a/b/e$b;->c:Lc/a/b/j;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lc/a/b/j;->finish(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lc/a/b/e$b;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method
