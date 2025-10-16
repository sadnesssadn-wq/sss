.class public Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$a0;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->access$000(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$a0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->access$100(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;I)V

    :cond_0
    return-void
.end method
