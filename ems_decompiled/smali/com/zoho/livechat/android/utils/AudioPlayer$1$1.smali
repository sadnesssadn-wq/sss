.class public Lcom/zoho/livechat/android/utils/AudioPlayer$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/AudioPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/AudioPlayer$1;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/AudioPlayer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1$1;->this$0:Lcom/zoho/livechat/android/utils/AudioPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1$1;->this$0:Lcom/zoho/livechat/android/utils/AudioPlayer$1;

    iget v0, v0, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$starttime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/AudioPlayer$1$1;->this$0:Lcom/zoho/livechat/android/utils/AudioPlayer$1;

    iget-object p1, p1, Lcom/zoho/livechat/android/utils/AudioPlayer$1;->val$pkid:Ljava/lang/String;

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/zoho/livechat/android/utils/AudioPlayer;->access$300()V

    return-void
.end method
