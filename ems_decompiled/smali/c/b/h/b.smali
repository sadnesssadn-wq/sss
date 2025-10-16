.class public final synthetic Lc/b/h/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/h;


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/SplashActivity;

.field public final synthetic b:Lc/d/a/d/a/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/activity/SplashActivity;Lc/d/a/d/a/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/h/b;->a:Lcom/emsportal/activity/SplashActivity;

    iput-object p2, p0, Lc/b/h/b;->b:Lc/d/a/d/a/a/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lc/b/h/b;->a:Lcom/emsportal/activity/SplashActivity;

    iget-object v1, p0, Lc/b/h/b;->b:Lc/d/a/d/a/a/b;

    check-cast p1, Lc/d/a/d/a/a/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v2, p1, Lc/d/a/d/a/a/a;->a:I

    const/4 v3, 0x2

    const/16 v4, 0x7b

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    .line 3
    invoke-static {v6}, Lc/d/a/d/a/a/c;->c(I)Lc/d/a/d/a/a/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc/d/a/d/a/a/a;->a(Lc/d/a/d/a/a/c;)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 4
    :try_start_0
    invoke-interface {v1, p1, v6, v0, v4}, Lc/d/a/d/a/a/b;->b(Lc/d/a/d/a/a/a;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 5
    invoke-static {v6}, Lc/d/a/d/a/a/c;->c(I)Lc/d/a/d/a/a/c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc/d/a/d/a/a/a;->a(Lc/d/a/d/a/a/c;)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    .line 6
    :try_start_1
    invoke-interface {v1, p1, v6, v0, v4}, Lc/d/a/d/a/a/b;->b(Lc/d/a/d/a/a/a;ILandroid/app/Activity;I)Z
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :cond_3
    :goto_2
    if-ne v2, v6, :cond_4

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, v0, Lcom/emsportal/activity/SplashActivity;->c:Landroid/os/Handler;

    new-instance v1, Lc/b/h/c;

    invoke-direct {v1, v0}, Lc/b/h/c;-><init>(Lcom/emsportal/activity/SplashActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
