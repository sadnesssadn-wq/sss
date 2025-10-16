.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;

.field public final synthetic val$dialog:Lb/b/k/g;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;Lb/b/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;->val$dialog:Lb/b/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;->val$dialog:Lb/b/k/g;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;

    iget-object v0, v0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$1;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
