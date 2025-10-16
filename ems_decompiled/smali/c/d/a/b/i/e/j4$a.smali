.class public final Lc/d/a/b/i/e/j4$a;
.super Lc/d/a/b/i/e/y0$a;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/f2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/e/j4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/e/y0$a<",
        "Lc/d/a/b/i/e/j4;",
        "Lc/d/a/b/i/e/j4$a;",
        ">;",
        "Lc/d/a/b/i/e/f2;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/m4;)V
    .locals 0

    .line 1
    invoke-static {}, Lc/d/a/b/i/e/j4;->o()Lc/d/a/b/i/e/j4;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d/a/b/i/e/y0$a;-><init>(Lc/d/a/b/i/e/y0;)V

    return-void
.end method
