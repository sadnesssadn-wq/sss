.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4$1;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    const/16 v0, 0x12d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
