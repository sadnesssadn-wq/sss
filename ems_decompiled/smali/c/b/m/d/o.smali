.class public Lc/b/m/d/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private estimate:I

.field private id:I

.field private main_fee:Ljava/lang/String;

.field private nameService:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "service_name"
    .end annotation
.end field

.field private remote_fee:Ljava/lang/String;

.field private service_id:Ljava/lang/String;

.field private total_vas:Ljava/lang/String;

.field private valueFreight:Ljava/lang/String;

.field private valueTimeDeliver:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/o;->nameService:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/o;->service_id:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lc/b/m/d/o;->main_fee:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    iput-object v1, p0, Lc/b/m/d/o;->main_fee:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/m/d/o;->remote_fee:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lc/b/m/d/o;->remote_fee:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lc/b/m/d/o;->total_vas:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lc/b/m/d/o;->total_vas:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lc/b/m/d/o;->main_fee:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lc/b/m/d/o;->remote_fee:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, v0

    iget-object v0, p0, Lc/b/m/d/o;->total_vas:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lc/b/m/d/o;->estimate:I

    div-int/lit8 v1, v1, 0x18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ng\u00e0y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
