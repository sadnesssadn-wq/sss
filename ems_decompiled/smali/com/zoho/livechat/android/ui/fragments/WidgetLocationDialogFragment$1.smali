.class public Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string p1, "operation"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "location"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_0
    const-string v1, "location_suggestions"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->d:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$300(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->d:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/SalesIQCache;->getLocationSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->updateData(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
