.class public Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object p1

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    invoke-direct {v0}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;-><init>()V

    new-instance v1, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1$1;

    invoke-direct {v1, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetCalenderDialogFragement$1;)V

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->setTimeZonePicker(Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;)V

    .line 1
    new-instance v1, Lb/m/d/a;

    invoke-direct {v1, p1}, Lb/m/d/a;-><init>(Lb/m/d/y;)V

    const p1, 0x1020002

    .line 2
    invoke-virtual {v1, p1, v0}, Lb/m/d/i0;->b(ILandroidx/fragment/app/Fragment;)Lb/m/d/i0;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lb/m/d/i0;->d(Ljava/lang/String;)Lb/m/d/i0;

    invoke-virtual {v1}, Lb/m/d/i0;->e()I

    return-void
.end method
