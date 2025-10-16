.class public Lcom/emsportal/base/BaseNavigationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/base/BaseNavigationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/emsportal/base/BaseNavigationActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/base/BaseNavigationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$1;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-string v0, "ACTION_RESET_APP"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$1;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    .line 1
    sget-object p2, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class p2, Lcom/emsportal/user/activity/LogInActivity;

    const/16 v0, 0x7b

    invoke-static {p1, p2, v0}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    .line 3
    new-instance p2, Landroid/content/Intent;

    const-string v0, "finish activity"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
