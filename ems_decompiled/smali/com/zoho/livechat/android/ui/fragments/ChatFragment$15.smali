.class public Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->makeAddVisitorRequest(Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

.field public final synthetic val$alert:Lb/b/k/g;

.field public final synthetic val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field public final synthetic val$deptListView:Landroid/widget/ListView;

.field public final synthetic val$hide_question:Z

.field public final synthetic val$question:Lcom/zoho/livechat/android/models/SalesIQMessage;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Landroid/widget/ListView;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;ZLb/b/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$deptListView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    iput-boolean p5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$hide_question:Z

    iput-object p6, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$alert:Lb/b/k/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$deptListView:Landroid/widget/ListView;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zoho/livechat/android/models/Department;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/Department;->getId()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p3, p2}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptid(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/models/Department;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zoho/livechat/android/models/SalesIQChat;->setDeptname(Ljava/lang/String;)V

    sget-object p1, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    invoke-virtual {p1, p2, p3}, Lcom/zoho/livechat/android/provider/CursorUtility;->syncConversation(Landroid/content/ContentResolver;Lcom/zoho/livechat/android/models/SalesIQChat;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->this$0:Lcom/zoho/livechat/android/ui/fragments/ChatFragment;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iget-object p3, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$question:Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getChatConsentConfig()I

    move-result p4

    iget-boolean p5, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$hide_question:Z

    invoke-static {p1, p2, p3, p4, p5}, Lcom/zoho/livechat/android/ui/fragments/ChatFragment;->access$2000(Lcom/zoho/livechat/android/ui/fragments/ChatFragment;Lcom/zoho/livechat/android/models/SalesIQChat;Lcom/zoho/livechat/android/models/SalesIQMessage;IZ)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ChatFragment$15;->val$alert:Lb/b/k/g;

    invoke-virtual {p1}, Lb/b/k/q;->dismiss()V

    return-void
.end method
