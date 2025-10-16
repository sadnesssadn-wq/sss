.class public final Lc/d/a/b/p/p;
.super Lc/d/a/b/p/a;
.source ""


# instance fields
.field public final a:Lc/d/a/b/p/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/j0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/p/a;-><init>()V

    new-instance v0, Lc/d/a/b/p/j0;

    invoke-direct {v0}, Lc/d/a/b/p/j0;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/p;->a:Lc/d/a/b/p/j0;

    return-void
.end method
