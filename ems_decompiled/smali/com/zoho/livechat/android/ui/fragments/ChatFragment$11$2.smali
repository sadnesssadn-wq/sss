.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$2;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11$2;->this$1:Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$11;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->onEmailTranscriptClick()V

    return-void
.end method
