.class public final Lc/d/a/b/e/m/m/i2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/p/f<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/b/p/m;

.field public final synthetic b:Lc/d/a/b/e/m/m/h2;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/h2;Lc/d/a/b/p/m;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/i2;->b:Lc/d/a/b/e/m/m/h2;

    iput-object p2, p0, Lc/d/a/b/e/m/m/i2;->a:Lc/d/a/b/p/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/l<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lc/d/a/b/e/m/m/i2;->b:Lc/d/a/b/e/m/m/h2;

    .line 1
    iget-object p1, p1, Lc/d/a/b/e/m/m/h2;->b:Ljava/util/Map;

    .line 2
    iget-object v0, p0, Lc/d/a/b/e/m/m/i2;->a:Lc/d/a/b/p/m;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
