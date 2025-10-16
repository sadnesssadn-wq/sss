.class public final synthetic Lc/d/a/b/d/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/d/a;

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Z

.field public final synthetic g:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public synthetic constructor <init>(Lc/d/a/b/d/a;Landroid/content/Intent;Landroid/content/Context;ZLandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/d/h;->c:Lc/d/a/b/d/a;

    iput-object p2, p0, Lc/d/a/b/d/h;->d:Landroid/content/Intent;

    iput-object p3, p0, Lc/d/a/b/d/h;->e:Landroid/content/Context;

    iput-boolean p4, p0, Lc/d/a/b/d/h;->f:Z

    iput-object p5, p0, Lc/d/a/b/d/h;->g:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lc/d/a/b/d/h;->c:Lc/d/a/b/d/a;

    iget-object v1, p0, Lc/d/a/b/d/h;->d:Landroid/content/Intent;

    iget-object v2, p0, Lc/d/a/b/d/h;->e:Landroid/content/Context;

    iget-boolean v3, p0, Lc/d/a/b/d/h;->f:Z

    iget-object v4, p0, Lc/d/a/b/d/h;->g:Landroid/content/BroadcastReceiver$PendingResult;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v5, "wrapped_intent"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    instance-of v6, v5, Landroid/content/Intent;

    if-eqz v6, :cond_0

    check-cast v5, Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v0, v2, v5}, Lc/d/a/b/d/a;->b(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2, v1}, Lc/d/a/b/d/a;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v4, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw v0
.end method
