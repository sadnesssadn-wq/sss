.class public Lcom/emsportal/base/BaseNavigationActivity$3;
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

    iput-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$3;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/emsportal/base/BaseNavigationActivity$3;->this$0:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
