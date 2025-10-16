.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "attemptNumber"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Lc/d/a/a/j/n;->c(Landroid/content/Context;)V

    invoke-static {}, Lc/d/a/a/j/j;->a()Lc/d/a/a/j/j$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc/d/a/a/j/j$a;->b(Ljava/lang/String;)Lc/d/a/a/j/j$a;

    invoke-static {v2}, Lc/d/a/a/j/w/a;->b(I)Lc/d/a/a/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/d/a/a/j/j$a;->c(Lc/d/a/a/d;)Lc/d/a/a/j/j$a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lc/d/a/a/j/c$b;

    .line 1
    iput-object v0, v1, Lc/d/a/a/j/c$b;->b:[B

    .line 2
    :cond_0
    invoke-static {}, Lc/d/a/a/j/n;->a()Lc/d/a/a/j/n;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lc/d/a/a/j/n;->d:Lc/d/a/a/j/t/h/o;

    .line 4
    invoke-virtual {p1}, Lc/d/a/a/j/j$a;->a()Lc/d/a/a/j/j;

    move-result-object p1

    sget-object v1, Lc/d/a/a/j/t/h/a;->c:Lc/d/a/a/j/t/h/a;

    .line 5
    iget-object v2, v0, Lc/d/a/a/j/t/h/o;->e:Ljava/util/concurrent/Executor;

    new-instance v3, Lc/d/a/a/j/t/h/e;

    invoke-direct {v3, v0, p1, p2, v1}, Lc/d/a/a/j/t/h/e;-><init>(Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/j;ILjava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
