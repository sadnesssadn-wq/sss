.class public Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/j/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->onConnected(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$902(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Landroid/location/Location;)Landroid/location/Location;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$900(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$900(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v3}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$900(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$202(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$1000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$5;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$1100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lc/d/a/b/e/m/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/b/e/m/e;->e()V

    return-void
.end method
