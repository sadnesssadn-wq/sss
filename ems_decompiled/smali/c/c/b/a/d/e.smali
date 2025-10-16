.class public abstract Lc/c/b/a/d/e;
.super Lc/c/b/a/d/n;
.source ""

# interfaces
.implements Lc/c/b/a/g/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/c/b/a/d/o;",
        ">",
        "Lc/c/b/a/d/n<",
        "TT;>;",
        "Lc/c/b/a/g/b/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public t:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/c/b/a/d/n;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0xff

    const/16 p2, 0xbb

    const/16 v0, 0x73

    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lc/c/b/a/d/e;->t:I

    return-void
.end method


# virtual methods
.method public n0()I
    .locals 1

    iget v0, p0, Lc/c/b/a/d/e;->t:I

    return v0
.end method
