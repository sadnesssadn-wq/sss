.class public final Lc/d/a/b/e/m/m/i1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/b/e/m/m/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/n<",
            "Lc/d/a/b/e/m/a$b;",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lc/d/a/b/e/m/m/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/s<",
            "Lc/d/a/b/e/m/a$b;",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/n;Lc/d/a/b/e/m/m/s;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/n<",
            "Lc/d/a/b/e/m/a$b;",
            "*>;",
            "Lc/d/a/b/e/m/m/s<",
            "Lc/d/a/b/e/m/a$b;",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/m/m/i1;->a:Lc/d/a/b/e/m/m/n;

    iput-object p2, p0, Lc/d/a/b/e/m/m/i1;->b:Lc/d/a/b/e/m/m/s;

    iput-object p3, p0, Lc/d/a/b/e/m/m/i1;->c:Ljava/lang/Runnable;

    return-void
.end method
