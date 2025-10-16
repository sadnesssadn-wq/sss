.class public final Lc/d/a/b/e/m/m/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lc/d/a/b/e/a;

.field public final synthetic d:Lc/d/a/b/e/m/m/g$a;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/g$a;Lc/d/a/b/e/a;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/x0;->d:Lc/d/a/b/e/m/m/g$a;

    iput-object p2, p0, Lc/d/a/b/e/m/m/x0;->c:Lc/d/a/b/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/e/m/m/x0;->d:Lc/d/a/b/e/m/m/g$a;

    iget-object v1, p0, Lc/d/a/b/e/m/m/x0;->c:Lc/d/a/b/e/a;

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2}, Lc/d/a/b/e/m/m/g$a;->d(Lc/d/a/b/e/a;Ljava/lang/Exception;)V

    return-void
.end method
