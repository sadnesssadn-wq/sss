.class public Lcom/zoho/livechat/android/ui/EndChatTimer;
.super Landroid/os/CountDownTimer;
.source ""


# instance fields
.field public listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/EndChatTimer;->listeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/EndChatTimer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/EndChatTimer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;

    invoke-interface {v1}, Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;->onFinish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/EndChatTimer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Lcom/zoho/livechat/android/ui/listener/EndChatTimerListener;->onTick(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
