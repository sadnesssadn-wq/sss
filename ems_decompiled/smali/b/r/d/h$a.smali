.class public final Lb/r/d/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lb/r/d/h$g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lb/r/d/h$g;

    check-cast p2, Lb/r/d/h$g;

    .line 1
    iget v0, p1, Lb/r/d/h$g;->a:I

    iget v1, p2, Lb/r/d/h$g;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p1, p1, Lb/r/d/h$g;->b:I

    iget p2, p2, Lb/r/d/h$g;->b:I

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method
