.class public final Lc/d/a/b/i/e/p4$b$a;
.super Lc/d/a/b/i/e/y0$a;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/f2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/e/p4$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/e/y0$a<",
        "Lc/d/a/b/i/e/p4$b;",
        "Lc/d/a/b/i/e/p4$b$a;",
        ">;",
        "Lc/d/a/b/i/e/f2;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lc/d/a/b/i/e/p4$b;->x()Lc/d/a/b/i/e/p4$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/d/a/b/i/e/y0$a;-><init>(Lc/d/a/b/i/e/y0;)V

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/e/q4;)V
    .locals 0

    .line 1
    invoke-static {}, Lc/d/a/b/i/e/p4$b;->x()Lc/d/a/b/i/e/p4$b;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d/a/b/i/e/y0$a;-><init>(Lc/d/a/b/i/e/y0;)V

    return-void
.end method
