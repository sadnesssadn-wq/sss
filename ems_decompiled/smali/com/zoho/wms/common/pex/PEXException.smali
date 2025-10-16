.class public Lcom/zoho/wms/common/pex/PEXException;
.super Ljava/lang/Throwable;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    iput p1, p0, Lcom/zoho/wms/common/pex/PEXException;->code:I

    iput-object p2, p0, Lcom/zoho/wms/common/pex/PEXException;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/zoho/wms/common/pex/PEXException;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXException;->msg:Ljava/lang/String;

    return-object v0
.end method
