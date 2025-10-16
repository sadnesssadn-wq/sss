.class public Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->updateBottomHeader()V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;->access$500(Lcom/zoho/livechat/android/ui/fragments/WidgetLocationDialogFragment;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;)V

    return-void
.end method
