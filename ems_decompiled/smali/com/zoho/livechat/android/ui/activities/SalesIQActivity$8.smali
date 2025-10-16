.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->setSearchViewVisibility(Z)V
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$8;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$8;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$400(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$SearchViewHolder;->searchContainerLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
