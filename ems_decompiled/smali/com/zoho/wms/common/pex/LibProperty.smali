.class public Lcom/zoho/wms/common/pex/LibProperty;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zoho/wms/common/pex/LibProperty;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zoho/wms/common/pex/LibProperty;->key:Ljava/lang/String;

    return-object v0
.end method
