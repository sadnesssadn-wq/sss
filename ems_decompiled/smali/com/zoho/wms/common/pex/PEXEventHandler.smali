.class public interface abstract Lcom/zoho/wms/common/pex/PEXEventHandler;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onBeforeSend(Lcom/zoho/wms/common/pex/PEXEvent;)V
.end method

.method public abstract onComplete(Lcom/zoho/wms/common/pex/PEXResponse;Z)V
.end method

.method public abstract onFailure(Lcom/zoho/wms/common/pex/PEXError;)V
.end method

.method public abstract onProgress(Lcom/zoho/wms/common/pex/PEXResponse;)V
.end method

.method public abstract onSuccess(Lcom/zoho/wms/common/pex/PEXResponse;)V
.end method

.method public abstract onTimeOut(Lcom/zoho/wms/common/pex/PEXEvent;)V
.end method
