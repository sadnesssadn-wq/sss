.class public Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;


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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSuggestionClick(Lcom/zoho/livechat/android/models/LocationSuggestion;)V
    .locals 5

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$400(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/zoho/livechat/android/ui/listener/LocationWidgetPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/LocationSuggestion;->getLat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDouble(Ljava/lang/Object;)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/LocationSuggestion;->getLng()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getDouble(Ljava/lang/Object;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/LocationSuggestion;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$500(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
