.class public Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$ViewTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Landroidx/recyclerview/widget/RecyclerView$a0;",
        ">;"
    }
.end annotation


# instance fields
.field private chat:Lcom/zoho/livechat/android/models/SalesIQChat;

.field private currenttimeposition:I

.field private displayImageOptions:Lc/e/a/b/c;

.field private itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

.field private messagescursor:Landroid/database/Cursor;

.field private reverselayout:Z

.field private widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->currenttimeposition:I

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->reverselayout:Z

    new-instance p1, Lc/e/a/b/c$b;

    invoke-direct {p1}, Lc/e/a/b/c$b;-><init>()V

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lc/e/a/b/c$b;->h:Z

    .line 2
    iput-boolean p2, p1, Lc/e/a/b/c$b;->i:Z

    .line 3
    iput-boolean p2, p1, Lc/e/a/b/c$b;->m:Z

    .line 4
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, p2}, Lc/e/a/b/c$b;->a(Landroid/graphics/Bitmap$Config;)Lc/e/a/b/c$b;

    invoke-virtual {p1}, Lc/e/a/b/c$b;->b()Lc/e/a/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->displayImageOptions:Lc/e/a/b/c;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;)Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->showTime(I)V

    return-void
.end method

.method private showTime(I)V
    .locals 2

    iget v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->currenttimeposition:I

    iput p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->currenttimeposition:I

    const/4 v1, -0x1

    if-ne v0, p1, :cond_0

    iput v1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->currenttimeposition:I

    :cond_0
    if-eq p1, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->reverselayout:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    const-string v0, "TYPE"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    const-string v1, "SENDER"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :goto_0
    add-int/lit16 p1, p1, 0xc8

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x64

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 9

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->reverselayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-direct {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    invoke-virtual {p0}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v0, Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-direct {v0, v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v2, Lcom/zoho/livechat/android/models/SalesIQMessage;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-direct {v2, v3}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    instance-of v3, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;

    if-eqz v3, :cond_4

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;

    invoke-virtual {p1, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    goto/16 :goto_9

    :cond_4
    move-object v3, p1

    check-cast v3, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setAvatarVisibility(I)V

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->canShowOperatorImageInChat()Z

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->isLeft()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3, v6}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setAvatarVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v7}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setAvatarVisibility(I)V

    :cond_6
    :goto_1
    instance-of v5, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v3, v4}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setTimeVisibility(I)V

    goto :goto_3

    :cond_7
    iget v5, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->currenttimeposition:I

    if-ne v5, p2, :cond_9

    :cond_8
    invoke-virtual {v3, v7}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setTimeVisibility(I)V

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :goto_3
    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMsgParentView()Landroid/widget/RelativeLayout;

    move-result-object p2

    new-instance v5, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;

    invoke-direct {v5, p0, p1}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$1;-><init>(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;Landroidx/recyclerview/widget/RecyclerView$a0;)V

    invoke-virtual {p2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p2

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getSender()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result p2

    :cond_a
    invoke-virtual {v3, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setMarginBottom(I)V

    invoke-virtual {v3}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->getMsgParentView()Landroid/widget/RelativeLayout;

    move-result-object p2

    new-instance v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$2;

    invoke-direct {v0, p0, v2}, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter$2;-><init>(Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;Lcom/zoho/livechat/android/models/SalesIQMessage;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    if-eq p2, v1, :cond_21

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    goto/16 :goto_8

    :cond_b
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_c

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_c
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    if-ne p2, v6, :cond_d

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_e

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x18

    if-ne p2, v0, :cond_f

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesLocationViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesLocationViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_f
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x17

    if-ne p2, v0, :cond_10

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_10
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x19

    if-ne p2, v0, :cond_11

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x1a

    if-ne p2, v0, :cond_12

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_12
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_20

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0xd

    if-ne p2, v0, :cond_13

    goto/16 :goto_7

    :cond_13
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_14

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_14
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_15

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0xe

    if-eq p2, v0, :cond_1f

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_16

    goto/16 :goto_6

    :cond_16
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1e

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x12

    if-ne p2, v0, :cond_17

    goto/16 :goto_5

    :cond_17
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1d

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x15

    if-ne p2, v0, :cond_18

    goto :goto_4

    :cond_18
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0xf

    if-ne p2, v0, :cond_19

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetStarRatingViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetStarRatingViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_19
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x13

    if-ne p2, v0, :cond_1a

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1b

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_1b
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    if-ne p2, v4, :cond_1c

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_1c
    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getMtype()I

    move-result p2

    const/16 v0, 0x16

    if-ne p2, v0, :cond_22

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_1d
    :goto_4
    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_1e
    :goto_5
    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_1f
    :goto_6
    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetCalendarViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetCalendarViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_20
    :goto_7
    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    goto :goto_9

    :cond_21
    :goto_8
    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/MarkDownUtil;->isLineBreak(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setHideBackground(Z)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->messagescursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->isFirst()Z

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;->render(Lcom/zoho/livechat/android/models/SalesIQMessage;Z)V

    :cond_22
    :goto_9
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    sget v2, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_info:I

    invoke-virtual {v3, v2, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;

    invoke-direct {v2, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesInfoViewHolder;-><init>(Landroid/view/View;)V

    goto/16 :goto_8

    :cond_0
    div-int/lit8 v6, v2, 0x64

    rem-int/lit8 v12, v2, 0x64

    const/4 v2, 0x1

    if-ne v6, v2, :cond_1

    sget v7, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_base_left:I

    goto :goto_0

    :cond_1
    sget v7, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_base_right:I

    :goto_0
    invoke-virtual {v3, v7, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    move-object v14, v7

    sget v7, Lcom/zoho/livechat/android/R$id;->siq_msg_container:I

    invoke-virtual {v14, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eq v12, v4, :cond_15

    const/4 v4, 0x4

    if-eq v12, v4, :cond_13

    packed-switch v12, :pswitch_data_0

    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_text:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_2

    const/4 v5, 0x1

    :cond_2
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTextViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V

    goto/16 :goto_7

    :pswitch_0
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_requestlog:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesRequestLogViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V

    goto/16 :goto_7

    :pswitch_1
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_feedback:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-direct {v1, v14, v3, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesFeedbackViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    goto/16 :goto_7

    :pswitch_2
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_location:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesLocationViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-direct {v1, v14, v3, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesLocationViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    goto/16 :goto_7

    :pswitch_3
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_typing:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_6

    const/4 v5, 0x1

    :cond_6
    invoke-direct {v1, v14, v3, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    goto/16 :goto_7

    :pswitch_4
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_articles:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_7

    const/4 v5, 0x1

    :cond_7
    invoke-direct {v1, v14, v3, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetArticlesViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    goto/16 :goto_7

    :pswitch_5
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_slider:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;

    iget-object v9, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_8

    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    :goto_1
    iget-object v11, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-object v7, v1

    move-object v8, v14

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSliderViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V

    goto/16 :goto_7

    :pswitch_6
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_location:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;

    iget-object v9, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_9

    const/4 v10, 0x1

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_2
    iget-object v11, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-object v7, v1

    move-object v8, v14

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLocationViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V

    goto/16 :goto_7

    :pswitch_7
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_timeslot:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;

    iget-object v9, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_a

    const/4 v10, 0x1

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-object v7, v1

    move-object v8, v14

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetTimeslotViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V

    goto/16 :goto_7

    :pswitch_8
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_star_rating:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetStarRatingViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_b

    const/4 v5, 0x1

    :cond_b
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetStarRatingViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    goto/16 :goto_7

    :pswitch_9
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_calendar:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetCalendarViewHolder;

    iget-object v9, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_c

    const/4 v10, 0x1

    goto :goto_4

    :cond_c
    const/4 v10, 0x0

    :goto_4
    iget-object v11, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-object v7, v1

    move-object v8, v14

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetCalendarViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V

    goto/16 :goto_7

    :pswitch_a
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_like_rating:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_d

    const/4 v5, 0x1

    :cond_d
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLikeRatingViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    goto/16 :goto_7

    :pswitch_b
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_happiness_rating:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_e

    const/4 v5, 0x1

    :cond_e
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetHappinessRatingViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    goto/16 :goto_7

    :pswitch_c
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_links:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_f

    const/4 v5, 0x1

    :cond_f
    invoke-direct {v1, v14, v3, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetLinksViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    goto/16 :goto_7

    :pswitch_d
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_selection:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;

    iget-object v9, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_10

    const/4 v10, 0x1

    goto :goto_5

    :cond_10
    const/4 v10, 0x0

    :goto_5
    iget-object v11, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    move-object v7, v1

    move-object v8, v14

    invoke-direct/range {v7 .. v12}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetSelectionViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;I)V

    goto :goto_7

    :pswitch_e
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_widget_image:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_11

    const/4 v5, 0x1

    :cond_11
    invoke-direct {v1, v14, v3, v5}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;Z)V

    goto :goto_7

    :pswitch_f
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_audio:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_12

    const/4 v5, 0x1

    :cond_12
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAudioViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V

    goto :goto_7

    :cond_13
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_att:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_14

    const/4 v5, 0x1

    :cond_14
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    invoke-direct {v1, v14, v3, v5, v2}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesAttachmentViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V

    goto :goto_7

    :cond_15
    sget v4, Lcom/zoho/livechat/android/R$layout;->siq_item_msg_img:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;

    iget-object v15, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->chat:Lcom/zoho/livechat/android/models/SalesIQChat;

    if-ne v6, v2, :cond_16

    const/16 v16, 0x1

    goto :goto_6

    :cond_16
    const/16 v16, 0x0

    :goto_6
    iget-object v2, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->displayImageOptions:Lc/e/a/b/c;

    iget-object v3, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->itemClickListener:Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;

    move-object v13, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v13 .. v18}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesImageViewHolder;-><init>(Landroid/view/View;Lcom/zoho/livechat/android/models/SalesIQChat;ZLc/e/a/b/c;Lcom/zoho/livechat/android/ui/listener/MessagesItemClickListener;)V

    :goto_7
    move-object v2, v1

    iget-object v1, v0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesBaseViewHolder;->setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V

    :goto_8
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$a0;)V

    instance-of v0, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesTypingViewHolder;->clearAnimation()V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/adapters/viewholder/MessagesWidgetImageViewHolder;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWidgetListener(Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/MessagesAdapter;->widgetListener:Lcom/zoho/livechat/android/ui/listener/MessagesWidgetListener;

    return-void
.end method
