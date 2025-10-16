.class public Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$LinksViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;

.field public final synthetic val$link:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$1;->this$1:Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$1;->val$link:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder$LinksAdapter$1;->val$link:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->openUrl(Ljava/lang/String;)V

    return-void
.end method
