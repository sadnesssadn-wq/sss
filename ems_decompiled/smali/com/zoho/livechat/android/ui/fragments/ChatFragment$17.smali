.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$17;
.super Landroid/text/style/ClickableSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->checkChatConsentAndCallAddVisitor(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$policyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$17;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$17;->val$policyUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$17;->val$policyUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
