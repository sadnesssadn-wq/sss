.class public Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;
.super Lb/m/d/g0;
.source ""


# instance fields
.field private articleBaseFragment:Lcom/zoho/livechat/android/ui/fragments/ArticleBaseFragment;

.field private canShowArticles:Z

.field private canShowConversation:Z

.field private conversationFragment:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;


# direct methods
.method public constructor <init>(Lb/m/d/y;ZZ)V
    .locals 0

    invoke-direct {p0, p1}, Lb/m/d/g0;-><init>(Lb/m/d/y;)V

    iput-boolean p3, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowArticles:Z

    iput-boolean p2, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation:Z

    if-eqz p2, :cond_0

    new-instance p1, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    invoke-direct {p1}, Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->conversationFragment:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    :cond_0
    if-eqz p3, :cond_1

    new-instance p1, Lcom/zoho/livechat/android/ui/fragments/ArticleBaseFragment;

    invoke-direct {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleBaseFragment;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->articleBaseFragment:Lcom/zoho/livechat/android/ui/fragments/ArticleBaseFragment;

    :cond_1
    return-void
.end method


# virtual methods
.method public canShowArticles()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowArticles:Z

    return v0
.end method

.method public canShowConversation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation:Z

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowArticles:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->canShowConversation:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->conversationFragment:Lcom/zoho/livechat/android/ui/fragments/ConversationFragment;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/SalesIQPagerAdapter;->articleBaseFragment:Lcom/zoho/livechat/android/ui/fragments/ArticleBaseFragment;

    return-object p1
.end method
