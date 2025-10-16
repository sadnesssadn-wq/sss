.class public Lcom/zoho/wms/common/TimeOutListener$Tracker;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/wms/common/TimeOutListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tracker"
.end annotation


# instance fields
.field private interval:J

.field private startdelay:J

.field public final synthetic this$0:Lcom/zoho/wms/common/TimeOutListener;


# direct methods
.method public constructor <init>(Lcom/zoho/wms/common/TimeOutListener;Ljava/lang/String;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->this$0:Lcom/zoho/wms/common/TimeOutListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->interval:J

    iput-wide p1, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->startdelay:J

    iput-wide p3, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->interval:J

    iput-wide p5, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->startdelay:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-wide v0, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->startdelay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->this$0:Lcom/zoho/wms/common/TimeOutListener;

    invoke-static {v1}, Lcom/zoho/wms/common/TimeOutListener;->access$000(Lcom/zoho/wms/common/TimeOutListener;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v2, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->this$0:Lcom/zoho/wms/common/TimeOutListener;

    invoke-static {v2}, Lcom/zoho/wms/common/TimeOutListener;->access$000(Lcom/zoho/wms/common/TimeOutListener;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->this$0:Lcom/zoho/wms/common/TimeOutListener;

    invoke-virtual {v4, v3}, Lcom/zoho/wms/common/TimeOutListener;->isExpired(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->this$0:Lcom/zoho/wms/common/TimeOutListener;

    invoke-virtual {v1, v0}, Lcom/zoho/wms/common/TimeOutListener;->handleExpired(Ljava/util/ArrayList;)V

    :cond_1
    iget-wide v0, p0, Lcom/zoho/wms/common/TimeOutListener$Tracker;->interval:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
