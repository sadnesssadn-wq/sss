.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$4;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$4;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$100(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$4;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$100(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;Z)V

    return v0
.end method
