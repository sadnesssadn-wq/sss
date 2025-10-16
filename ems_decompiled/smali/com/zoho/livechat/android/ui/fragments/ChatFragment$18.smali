.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field public final synthetic val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field public final synthetic val$hide_question:Z

.field public final synthetic val$question:Lcom/zoho/livechat/android/models/SalesIQMessage;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->val$question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->val$hide_question:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "chat_consent"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->val$question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$18;->val$hide_question:Z

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2000(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V

    return-void
.end method
