.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {v0}, Lb/b/k/h;->supportInvalidateOptionsMenu()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$000(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 2
    sget v2, Lcom/zoho/livechat/android/R$id;->siq_tab_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 4
    sget v3, Lcom/zoho/livechat/android/R$id;->siq_tab_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {v4}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const-string v1, "#6f7c8e"

    if-nez p1, :cond_1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversationTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {p1}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getConversationTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/ActionBar;->x(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {p1}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_conversation_title:I

    invoke-virtual {p1, v4}, Landroidx/appcompat/app/ActionBar;->w(I)V

    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$000(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p1

    .line 5
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 7
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$000(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->g(I)Lcom/google/android/material/tabs/TabLayout$g;

    move-result-object p1

    .line 9
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 11
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->e:Landroid/view/View;

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$2;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->updateArticleViewTitle()V

    :cond_2
    :goto_1
    return-void
.end method
