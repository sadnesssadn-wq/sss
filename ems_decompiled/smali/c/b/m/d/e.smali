.class public Lc/b/m/d/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/a0;",
            ">;"
        }
    .end annotation
.end field

.field private total:I


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
            "Lc/b/m/d/a0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/m/d/e;->data:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/m/d/e;->data:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/m/d/e;->data:Ljava/util/List;

    return-object v0
.end method

.method public b()I
    .locals 2

    iget v0, p0, Lc/b/m/d/e;->total:I

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    return v1
.end method
