.class public Lc/b/r/c/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "ordercode"
    .end annotation
.end field

.field private b:D
    .annotation runtime Lc/d/c/v/c;
        value = "main_freight"
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/o;",
            ">;"
        }
    .end annotation
.end field

.field private d:D
    .annotation runtime Lc/d/c/v/c;
        value = "total_weight"
    .end annotation
.end field

.field private e:D
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
.method public a()D
    .locals 2

    iget-wide v0, p0, Lc/b/r/c/d;->b:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lc/b/r/c/d;->e:D

    return-wide v0
.end method

.method public c()D
    .locals 2

    iget-wide v0, p0, Lc/b/r/c/d;->d:D

    return-wide v0
.end method
