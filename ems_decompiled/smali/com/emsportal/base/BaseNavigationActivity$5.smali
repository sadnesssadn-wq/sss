.class public Lcom/emsportal/base/BaseNavigationActivity$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/base/BaseNavigationActivity;->t()V
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

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$5;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$5;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    const-class v0, Lcom/emsportal/user/activity/LogInActivity;

    const/16 v1, 0x17

    invoke-static {p1, v0, v1}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$5;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-static {p1}, Lcom/emsportal/base/BaseNavigationActivity;->n(Lcom/emsportal/base/BaseNavigationActivity;)Lb/b/k/g;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$5;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "finish activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
