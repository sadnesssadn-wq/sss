.class public Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/k/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->updateLocationUI()V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 10

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$002(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$700(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lc/d/a/b/k/j/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/d/a/b/k/j/c;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    iget-wide v8, p1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    move-wide v1, v2

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v2}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$600(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$3;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$800(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)V

    return-void
.end method
