.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->endChatConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$dialog:Lb/b/k/g;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lb/b/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->val$dialog:Lb/b/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->val$dialog:Lb/b/k/g;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->val$dialog:Lb/b/k/g;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v2

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->val$dialog:Lb/b/k/g;

    invoke-virtual {p1, v0}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$32;->val$dialog:Lb/b/k/g;

    invoke-virtual {p1, v1}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
