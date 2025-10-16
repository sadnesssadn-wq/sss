.class public final synthetic Lc/b/h/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/activity/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/h/c;->c:Lcom/emsportal/activity/SplashActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/b/h/c;->c:Lcom/emsportal/activity/SplashActivity;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lb/u/a;->G()Ljava/lang/String;

    invoke-static {}, Lb/u/a;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Lcom/emsportal/user/activity/LogInActivity;

    goto :goto_0

    :cond_0
    const-class v1, Lcom/emsportal/MainActivity;

    :goto_0
    invoke-static {v0, v1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
