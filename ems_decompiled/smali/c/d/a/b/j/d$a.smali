.class public abstract Lc/d/a/b/j/d$a;
.super Lc/d/a/b/e/m/m/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lc/d/a/b/e/m/j;",
        ">",
        "Lc/d/a/b/e/m/m/d<",
        "TR;",
        "Lc/d/a/b/i/j/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/e;)V
    .locals 1

    sget-object v0, Lc/d/a/b/j/d;->c:Lc/d/a/b/e/m/a;

    invoke-direct {p0, v0, p1}, Lc/d/a/b/e/m/m/d;-><init>(Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/e;)V

    return-void
.end method
