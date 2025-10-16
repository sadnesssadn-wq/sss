.class public abstract Lcom/zoho/wms/common/TimeOutListener;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/wms/common/TimeOutListener$Tracker;
    }
.end annotation


# static fields
.field private static final PUT:Ljava/lang/Integer;

.field private static final REMOVE:Ljava/lang/Integer;

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private lru:Ljava/util/LinkedHashMap;

.field private queue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Lcom/zoho/wms/common/TimeOutListener$Tracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zoho/wms/common/TimeOutListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/zoho/wms/common/TimeOutListener;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/TimeOutListener;->PUT:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/TimeOutListener;->REMOVE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/zoho/wms/common/TimeOutListener;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    const-string v1, "-queue"

    invoke-static {p1, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/zoho/wms/common/TimeOutListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0x64

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v1, p0, Lcom/zoho/wms/common/TimeOutListener;->lru:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance v7, Lcom/zoho/wms/common/TimeOutListener$Tracker;

    const-string v1, "-tracker"

    invoke-static {p1, v1}, Lc/a/a/a/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/zoho/wms/common/TimeOutListener$Tracker;-><init>(Lcom/zoho/wms/common/TimeOutListener;Ljava/lang/String;JJ)V

    iput-object v7, p0, Lcom/zoho/wms/common/TimeOutListener;->tracker:Lcom/zoho/wms/common/TimeOutListener$Tracker;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/wms/common/TimeOutListener;)Ljava/util/LinkedHashMap;
    .locals 0

    iget-object p0, p0, Lcom/zoho/wms/common/TimeOutListener;->lru:Ljava/util/LinkedHashMap;

    return-object p0
.end method


# virtual methods
.method public abstract handleExpired(Ljava/util/ArrayList;)V
.end method

.method public abstract isExpired(Ljava/lang/Object;)Z
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "obj"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opr"

    sget-object v1, Lcom/zoho/wms/common/TimeOutListener;->REMOVE:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zoho/wms/common/TimeOutListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Lcom/zoho/wms/common/TimeOutListener;->logger:Ljava/util/logging/Logger;

    const-string v0, "Error queueing in TimeOutListener - remove"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/zoho/wms/common/TimeOutListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zoho/wms/common/TimeOutListener;->lru:Ljava/util/LinkedHashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "opr"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v3, Lcom/zoho/wms/common/TimeOutListener;->PUT:Ljava/lang/Integer;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/zoho/wms/common/TimeOutListener;->lru:Ljava/util/LinkedHashMap;

    const-string v3, "obj"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "obj"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/zoho/wms/common/TimeOutListener;->lru:Ljava/util/LinkedHashMap;

    const-string v3, "obj"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public touch(Ljava/lang/Object;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "obj"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "opr"

    sget-object v1, Lcom/zoho/wms/common/TimeOutListener;->PUT:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zoho/wms/common/TimeOutListener;->queue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/zoho/wms/common/TimeOutListener;->logger:Ljava/util/logging/Logger;

    const-string v0, "Error queueing in TimeOutListener - touch"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
