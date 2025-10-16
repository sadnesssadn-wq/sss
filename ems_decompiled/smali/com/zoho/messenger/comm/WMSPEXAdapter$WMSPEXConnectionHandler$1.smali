.class public Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler$1;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;


# direct methods
.method public constructor <init>(Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler$1;->this$0:Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$700()V

    sget v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zoho/messenger/comm/WMSPEXAdapter;->recvar:I

    :cond_0
    invoke-static {}, Lcom/zoho/messenger/comm/WMSPEXAdapter;->access$200()Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    move-result-object v0

    sget-object v1, Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;->CONNECTED:Lcom/zoho/messenger/comm/WMSPEXAdapter$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler$1;->this$0:Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;

    invoke-virtual {v0}, Lcom/zoho/messenger/comm/WMSPEXAdapter$WMSPEXConnectionHandler;->schedule()V

    :cond_1
    return-void
.end method
