.class public Lc/b/r/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lc/b/r/c/e;
    .annotation runtime Lc/d/c/v/c;
        value = "order"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation runtime Lc/d/c/v/c;
        value = "order_detail"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation runtime Lc/d/c/v/c;
        value = "order_surcharge"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation runtime Lc/d/c/v/c;
        value = "status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation runtime Lc/d/c/v/c;
        value = "delivery"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/k;",
            ">;"
        }
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
            "Lc/b/r/c/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/r/b/c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/r/b/c;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/r/b/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/r/c/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/r/b/c;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/r/b/c;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/r/b/c;->e:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/r/c/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/r/b/c;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/r/b/c;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/b/r/b/c;->d:Ljava/util/List;

    return-object v0
.end method
