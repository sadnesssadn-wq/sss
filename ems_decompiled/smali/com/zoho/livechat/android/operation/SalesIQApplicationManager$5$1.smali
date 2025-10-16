.class public Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5$1;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5$1;->this$1:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;

    iget-object v0, v0, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager$5;->this$0:Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->access$702(Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;Z)Z

    return-void
.end method
