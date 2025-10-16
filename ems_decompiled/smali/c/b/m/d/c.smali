.class public Lc/b/m/d/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private listDate:Ljava/util/List;
    .annotation runtime Lc/d/c/v/c;
        value = "list_date"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private total:I

.field private totalAmount:I
    .annotation runtime Lc/d/c/v/c;
        value = "total_amount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/m/d/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/m/d/c;->data:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/m/d/c;->data:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/m/d/c;->data:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/m/d/c;->listDate:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/m/d/c;->listDate:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/m/d/c;->listDate:Ljava/util/List;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/b/m/d/c;->total:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lc/b/m/d/c;->totalAmount:I

    return v0
.end method
