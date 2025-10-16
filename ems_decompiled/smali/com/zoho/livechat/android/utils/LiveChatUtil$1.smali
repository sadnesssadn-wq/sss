.class public final Lcom/zoho/livechat/android/utils/LiveChatUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/LiveChatUtil;->updateBadgeListener(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/zoho/livechat/android/utils/LiveChatUtil$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat$Notification;->getListener()Lcom/zoho/livechat/android/NotificationListener;

    move-result-object v0

    iget v1, p0, Lcom/zoho/livechat/android/utils/LiveChatUtil$1;->val$count:I

    invoke-interface {v0, v1}, Lcom/zoho/livechat/android/NotificationListener;->onBadgeChange(I)V

    return-void
.end method
