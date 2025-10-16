.class public Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "depts"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;->access$000(Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;)V

    :try_start_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment$4;->this$0:Lcom/zoho/livechat/android/ui/fragments/ArticleDepartmentsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Mobilisten"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
