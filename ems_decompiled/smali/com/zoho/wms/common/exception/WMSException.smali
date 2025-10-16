.class public Lcom/zoho/wms/common/exception/WMSException;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field private formatString:Ljava/lang/String;

.field private isFormated:Z

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zoho/wms/common/exception/WMSException;->formatString:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zoho/wms/common/exception/WMSException;->isFormated:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/exception/WMSException;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/exception/WMSException;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/zoho/wms/common/exception/WMSException;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/zoho/wms/common/exception/WMSException;->formatString:Ljava/lang/String;

    iput-object p2, p0, Lcom/zoho/wms/common/exception/WMSException;->values:[Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zoho/wms/common/exception/WMSException;->isFormated:Z

    return-void
.end method


# virtual methods
.method public getLocalizedMessage()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/zoho/wms/common/exception/WMSException;->isFormated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/wms/common/exception/WMSException;->formatString:Ljava/lang/String;

    iget-object v1, p0, Lcom/zoho/wms/common/exception/WMSException;->values:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zoho/wms/common/exception/WMSException;->formatString:Ljava/lang/String;

    return-object v0
.end method
