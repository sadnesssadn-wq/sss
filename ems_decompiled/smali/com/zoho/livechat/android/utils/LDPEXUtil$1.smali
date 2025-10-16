.class public Lcom/zoho/livechat/android/utils/LDPEXUtil$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/utils/LDPEXUtil;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/utils/LDPEXUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$1;->this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget-object p1, p0, Lcom/zoho/livechat/android/utils/LDPEXUtil$1;->this$0:Lcom/zoho/livechat/android/utils/LDPEXUtil;

    invoke-virtual {p1}, Lcom/zoho/livechat/android/utils/LDPEXUtil;->connectToWMS()V

    return-void
.end method
