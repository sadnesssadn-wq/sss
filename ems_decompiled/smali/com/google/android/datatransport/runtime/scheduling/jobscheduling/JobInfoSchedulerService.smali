.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc/d/a/a/j/n;->c(Landroid/content/Context;)V

    invoke-static {}, Lc/d/a/a/j/j;->a()Lc/d/a/a/j/j$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lc/d/a/a/j/j$a;->b(Ljava/lang/String;)Lc/d/a/a/j/j$a;

    invoke-static {v2}, Lc/d/a/a/j/w/a;->b(I)Lc/d/a/a/d;

    move-result-object v0

    invoke-virtual {v4, v0}, Lc/d/a/a/j/j$a;->c(Lc/d/a/a/d;)Lc/d/a/a/j/j$a;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    move-object v1, v4

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
    invoke-virtual {v4}, Lc/d/a/a/j/j$a;->a()Lc/d/a/a/j/j;

    move-result-object v1

    new-instance v2, Lc/d/a/a/j/t/h/c;

    invoke-direct {v2, p0, p1}, Lc/d/a/a/j/t/h/c;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V

    .line 5
    iget-object p1, v0, Lc/d/a/a/j/t/h/o;->e:Ljava/util/concurrent/Executor;

    new-instance v4, Lc/d/a/a/j/t/h/e;

    invoke-direct {v4, v0, v1, v3, v2}, Lc/d/a/a/j/t/h/e;-><init>(Lc/d/a/a/j/t/h/o;Lc/d/a/a/j/j;ILjava/lang/Runnable;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
