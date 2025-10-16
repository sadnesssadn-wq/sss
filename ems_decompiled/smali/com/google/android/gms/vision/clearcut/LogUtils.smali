.class public Lcom/google/android/gms/vision/clearcut/LogUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lc/d/a/b/i/n/h;
    .locals 4

    invoke-static {}, Lc/d/a/b/i/n/h;->p()Lc/d/a/b/i/n/h$a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1
    iget-boolean v2, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v3, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_0
    iget-object v2, v0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast v2, Lc/d/a/b/i/n/h;

    invoke-static {v2, v1}, Lc/d/a/b/i/n/h;->q(Lc/d/a/b/i/n/h;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/vision/clearcut/LogUtils;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    iget-boolean v1, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v3, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_1
    iget-object v1, v0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast v1, Lc/d/a/b/i/n/h;

    invoke-static {v1, p0}, Lc/d/a/b/i/n/h;->s(Lc/d/a/b/i/n/h;Ljava/lang/String;)V

    .line 4
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->m()Lc/d/a/b/i/n/c3;

    move-result-object p0

    check-cast p0, Lc/d/a/b/i/n/t1;

    check-cast p0, Lc/d/a/b/i/n/h;

    return-object p0
.end method

.method public static zza(JILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lc/d/a/b/i/n/e5;)Lc/d/a/b/i/n/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/d/a/b/i/n/u;",
            ">;",
            "Lc/d/a/b/i/n/e5;",
            ")",
            "Lc/d/a/b/i/n/v;"
        }
    .end annotation

    invoke-static {}, Lc/d/a/b/i/n/p;->p()Lc/d/a/b/i/n/p$a;

    move-result-object p3

    invoke-static {}, Lc/d/a/b/i/n/m;->p()Lc/d/a/b/i/n/m$b;

    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_0
    iget-object v1, v0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast v1, Lc/d/a/b/i/n/m;

    invoke-static {v1, p4}, Lc/d/a/b/i/n/m;->s(Lc/d/a/b/i/n/m;Ljava/lang/String;)V

    .line 6
    iget-boolean p4, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p4, :cond_1

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_1
    iget-object p4, v0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p4, Lc/d/a/b/i/n/m;

    invoke-static {p4, p0, p1}, Lc/d/a/b/i/n/m;->q(Lc/d/a/b/i/n/m;J)V

    int-to-long p0, p2

    .line 7
    iget-boolean p2, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_2
    iget-object p2, v0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p2, Lc/d/a/b/i/n/m;

    invoke-static {p2, p0, p1}, Lc/d/a/b/i/n/m;->u(Lc/d/a/b/i/n/m;J)V

    .line 8
    iget-boolean p0, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, v0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_3
    iget-object p0, v0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p0, Lc/d/a/b/i/n/m;

    invoke-static {p0, p5}, Lc/d/a/b/i/n/m;->r(Lc/d/a/b/i/n/m;Ljava/lang/Iterable;)V

    .line 9
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1$b;->m()Lc/d/a/b/i/n/c3;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/n/t1;

    check-cast p1, Lc/d/a/b/i/n/m;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-boolean p1, p3, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p3, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_4
    iget-object p1, p3, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p1, Lc/d/a/b/i/n/p;

    invoke-static {p1, p0}, Lc/d/a/b/i/n/p;->r(Lc/d/a/b/i/n/p;Ljava/lang/Iterable;)V

    .line 11
    invoke-static {}, Lc/d/a/b/i/n/q;->p()Lc/d/a/b/i/n/q$b;

    move-result-object p0

    iget p1, p6, Lc/d/a/b/i/n/e5;->d:I

    int-to-long p1, p1

    .line 12
    iget-boolean p4, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p4, :cond_5

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_5
    iget-object p4, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p4, Lc/d/a/b/i/n/q;

    invoke-static {p4, p1, p2}, Lc/d/a/b/i/n/q;->s(Lc/d/a/b/i/n/q;J)V

    .line 13
    iget p1, p6, Lc/d/a/b/i/n/e5;->c:I

    int-to-long p1, p1

    .line 14
    iget-boolean p4, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p4, :cond_6

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_6
    iget-object p4, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p4, Lc/d/a/b/i/n/q;

    invoke-static {p4, p1, p2}, Lc/d/a/b/i/n/q;->q(Lc/d/a/b/i/n/q;J)V

    .line 15
    iget p1, p6, Lc/d/a/b/i/n/e5;->e:I

    int-to-long p1, p1

    .line 16
    iget-boolean p4, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p4, :cond_7

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_7
    iget-object p4, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p4, Lc/d/a/b/i/n/q;

    invoke-static {p4, p1, p2}, Lc/d/a/b/i/n/q;->t(Lc/d/a/b/i/n/q;J)V

    .line 17
    iget-wide p1, p6, Lc/d/a/b/i/n/e5;->f:J

    .line 18
    iget-boolean p4, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p4, :cond_8

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_8
    iget-object p4, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p4, Lc/d/a/b/i/n/q;

    invoke-static {p4, p1, p2}, Lc/d/a/b/i/n/q;->u(Lc/d/a/b/i/n/q;J)V

    .line 19
    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->m()Lc/d/a/b/i/n/c3;

    move-result-object p0

    check-cast p0, Lc/d/a/b/i/n/t1;

    check-cast p0, Lc/d/a/b/i/n/q;

    .line 20
    iget-boolean p1, p3, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p1, :cond_9

    invoke-virtual {p3}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p3, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_9
    iget-object p1, p3, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p1, Lc/d/a/b/i/n/p;

    invoke-static {p1, p0}, Lc/d/a/b/i/n/p;->q(Lc/d/a/b/i/n/p;Lc/d/a/b/i/n/q;)V

    .line 21
    invoke-virtual {p3}, Lc/d/a/b/i/n/t1$b;->m()Lc/d/a/b/i/n/c3;

    move-result-object p0

    check-cast p0, Lc/d/a/b/i/n/t1;

    check-cast p0, Lc/d/a/b/i/n/p;

    invoke-static {}, Lc/d/a/b/i/n/v;->p()Lc/d/a/b/i/n/v$a;

    move-result-object p1

    .line 22
    iget-boolean p2, p1, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lc/d/a/b/i/n/t1$b;->k()V

    iput-boolean v2, p1, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_a
    iget-object p2, p1, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    check-cast p2, Lc/d/a/b/i/n/v;

    invoke-static {p2, p0}, Lc/d/a/b/i/n/v;->q(Lc/d/a/b/i/n/v;Lc/d/a/b/i/n/p;)V

    .line 23
    invoke-virtual {p1}, Lc/d/a/b/i/n/t1$b;->m()Lc/d/a/b/i/n/c3;

    move-result-object p0

    check-cast p0, Lc/d/a/b/i/n/t1;

    check-cast p0, Lc/d/a/b/i/n/v;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lc/d/a/b/e/u/b;->a(Landroid/content/Context;)Lc/d/a/b/e/u/a;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lc/d/a/b/e/u/a;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object p0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Unable to find calling package info for %s"

    invoke-static {v1, p0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->J(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method
