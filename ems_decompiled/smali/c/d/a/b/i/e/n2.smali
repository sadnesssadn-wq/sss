.class public final Lc/d/a/b/i/e/n2;
.super Lc/d/a/b/e/m/d;
.source ""

# interfaces
.implements Lc/d/a/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/d<",
        "Lc/d/a/b/e/m/a$d$c;",
        ">;",
        "Lc/d/a/b/c/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lc/d/a/b/c/a;->n:Lc/d/a/b/e/m/a;

    new-instance v1, Lc/d/a/b/e/m/m/a;

    invoke-direct {v1}, Lc/d/a/b/e/m/m/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lc/d/a/b/e/m/d;-><init>(Landroid/content/Context;Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/a$d;Lc/d/a/b/e/m/m/a;)V

    return-void
.end method
