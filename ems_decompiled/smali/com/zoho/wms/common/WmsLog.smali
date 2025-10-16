.class public Lcom/zoho/wms/common/WmsLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public static enable(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p0

    sput-object p0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static fine(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static finer(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static finest(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/zoho/wms/common/WmsLog;->logger:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
