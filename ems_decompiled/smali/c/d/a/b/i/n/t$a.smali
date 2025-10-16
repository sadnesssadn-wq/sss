.class public final Lc/d/a/b/i/n/t$a;
.super Lc/d/a/b/i/n/t1$b;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/e3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/n/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/n/t1$b<",
        "Lc/d/a/b/i/n/t;",
        "Lc/d/a/b/i/n/t$a;",
        ">;",
        "Lc/d/a/b/i/n/e3;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/x;)V
    .locals 0

    .line 1
    invoke-static {}, Lc/d/a/b/i/n/t;->p()Lc/d/a/b/i/n/t;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d/a/b/i/n/t1$b;-><init>(Lc/d/a/b/i/n/t1;)V

    return-void
.end method
