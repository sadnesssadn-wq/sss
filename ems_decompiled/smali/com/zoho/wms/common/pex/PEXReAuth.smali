.class public Lcom/zoho/wms/common/pex/PEXReAuth;
.super Lcom/zoho/wms/common/pex/PEXEvent;
.source ""


# static fields
.field public static final REAUTH:Ljava/lang/String; = "pexreauth"


# instance fields
.field private operation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/zoho/wms/common/pex/PEXEvent;-><init>(ILjava/lang/Object;)V

    const-string p1, "pexreauth@PS:pexreauth"

    iput-object p1, p0, Lcom/zoho/wms/common/pex/PEXReAuth;->operation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "pexreauth"

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/PEXReAuth;->operation:Ljava/lang/String;

    return-object v0
.end method
