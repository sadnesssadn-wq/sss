.class public Lc/d/a/a/j/t/h/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/a/j/t/h/s;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/d/a/a/j/t/i/s;

.field public c:Landroid/app/AlarmManager;

.field public final d:Lc/d/a/a/j/t/h/n;

.field public final e:Lc/d/a/a/j/v/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/a/j/t/i/s;Lc/d/a/a/j/v/a;Lc/d/a/a/j/t/h/n;)V
    .locals 1

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/a/j/t/h/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/d/a/a/j/t/h/j;->b:Lc/d/a/a/j/t/i/s;

    iput-object v0, p0, Lc/d/a/a/j/t/h/j;->c:Landroid/app/AlarmManager;

    iput-object p3, p0, Lc/d/a/a/j/t/h/j;->e:Lc/d/a/a/j/v/a;

    iput-object p4, p0, Lc/d/a/a/j/t/h/j;->d:Lc/d/a/a/j/t/h/n;

    return-void
.end method


# virtual methods
.method public a(Lc/d/a/a/j/j;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc/d/a/a/j/t/h/j;->b(Lc/d/a/a/j/j;IZ)V

    return-void
.end method

.method public b(Lc/d/a/a/j/j;IZ)V
    .locals 8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lc/d/a/a/j/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backendName"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Lc/d/a/a/j/j;->d()Lc/d/a/a/d;

    move-result-object v1

    invoke-static {v1}, Lc/d/a/a/j/w/a;->a(Lc/d/a/a/d;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Lc/d/a/a/j/j;->c()[B

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/d/a/a/j/j;->c()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extras"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lc/d/a/a/j/t/h/j;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "attemptNumber"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v3, "AlarmManagerScheduler"

    if-nez p3, :cond_2

    .line 1
    iget-object p3, p0, Lc/d/a/a/j/t/h/j;->a:Landroid/content/Context;

    const/high16 v4, 0x20000000

    invoke-static {p3, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_2

    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 2
    invoke-static {v3, p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p3, p0, Lc/d/a/a/j/t/h/j;->b:Lc/d/a/a/j/t/i/s;

    invoke-interface {p3, p1}, Lc/d/a/a/j/t/i/s;->p(Lc/d/a/a/j/j;)J

    move-result-wide v4

    iget-object p3, p0, Lc/d/a/a/j/t/h/j;->d:Lc/d/a/a/j/t/h/n;

    invoke-virtual {p1}, Lc/d/a/a/j/j;->d()Lc/d/a/a/d;

    move-result-object v6

    invoke-virtual {p3, v6, v4, v5, p2}, Lc/d/a/a/j/t/h/n;->b(Lc/d/a/a/d;JI)J

    move-result-wide v6

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v0

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p3, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p3, p2

    const-string p1, "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d"

    invoke-static {v3, p1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->D(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lc/d/a/a/j/t/h/j;->a:Landroid/content/Context;

    invoke-static {p1, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p3, p0, Lc/d/a/a/j/t/h/j;->c:Landroid/app/AlarmManager;

    iget-object v0, p0, Lc/d/a/a/j/t/h/j;->e:Lc/d/a/a/j/v/a;

    invoke-interface {v0}, Lc/d/a/a/j/v/a;->a()J

    move-result-wide v0

    add-long/2addr v0, v6

    invoke-virtual {p3, p2, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
