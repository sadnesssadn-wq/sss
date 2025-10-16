.class public Lcom/zoho/wms/common/pex/PEXReadyState;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COMPLETED:Lcom/zoho/wms/common/pex/PEXReadyState;

.field public static final CONNECTED:Lcom/zoho/wms/common/pex/PEXReadyState;

.field public static final ERROR:Lcom/zoho/wms/common/pex/PEXReadyState;

.field public static final LOADED:Lcom/zoho/wms/common/pex/PEXReadyState;

.field public static final LOADING:Lcom/zoho/wms/common/pex/PEXReadyState;

.field public static final NOT_LOADED:Lcom/zoho/wms/common/pex/PEXReadyState;


# instance fields
.field private readystate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zoho/wms/common/pex/PEXReadyState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXReadyState;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->NOT_LOADED:Lcom/zoho/wms/common/pex/PEXReadyState;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXReadyState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXReadyState;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->LOADED:Lcom/zoho/wms/common/pex/PEXReadyState;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXReadyState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXReadyState;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->CONNECTED:Lcom/zoho/wms/common/pex/PEXReadyState;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXReadyState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXReadyState;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->LOADING:Lcom/zoho/wms/common/pex/PEXReadyState;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXReadyState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXReadyState;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->COMPLETED:Lcom/zoho/wms/common/pex/PEXReadyState;

    new-instance v0, Lcom/zoho/wms/common/pex/PEXReadyState;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/zoho/wms/common/pex/PEXReadyState;-><init>(I)V

    sput-object v0, Lcom/zoho/wms/common/pex/PEXReadyState;->ERROR:Lcom/zoho/wms/common/pex/PEXReadyState;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zoho/wms/common/pex/PEXReadyState;->readystate:I

    return-void
.end method


# virtual methods
.method public getReadyState()I
    .locals 1

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXReadyState;->readystate:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zoho/wms/common/pex/PEXReadyState;->readystate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
