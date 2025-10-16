.class public final Lc/d/c/m;
.super Lc/d/c/j;
.source ""


# instance fields
.field public final a:Lc/d/c/w/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/c/w/r<",
            "Ljava/lang/String;",
            "Lc/d/c/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/c/j;-><init>()V

    new-instance v0, Lc/d/c/w/r;

    invoke-direct {v0}, Lc/d/c/w/r;-><init>()V

    iput-object v0, p0, Lc/d/c/m;->a:Lc/d/c/w/r;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lc/d/c/m;

    if-eqz v0, :cond_0

    check-cast p1, Lc/d/c/m;

    iget-object p1, p1, Lc/d/c/m;->a:Lc/d/c/w/r;

    iget-object v0, p0, Lc/d/c/m;->a:Lc/d/c/w/r;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lc/d/c/m;->a:Lc/d/c/w/r;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
