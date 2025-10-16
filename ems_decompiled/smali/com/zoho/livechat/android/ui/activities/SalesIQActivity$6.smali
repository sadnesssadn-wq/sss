.class public Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$6;
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

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$6;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity$6;->this$0:Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;->access$300(Lcom/zoho/livechat/android/ui/activities/SalesIQActivity;)Lcom/zoho/livechat/android/ui/customviews/CustomViewPager;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
