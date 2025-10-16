.class public final Lc/d/a/b/e/m/m/b0;
.super Lc/d/a/b/e/m/m/n0;
.source ""


# instance fields
.field public final synthetic b:Lc/d/a/b/e/a;

.field public final synthetic c:Lc/d/a/b/e/m/m/y;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/y;Lc/d/a/b/e/m/m/l0;Lc/d/a/b/e/a;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/b0;->c:Lc/d/a/b/e/m/m/y;

    iput-object p3, p0, Lc/d/a/b/e/m/m/b0;->b:Lc/d/a/b/e/a;

    invoke-direct {p0, p2}, Lc/d/a/b/e/m/m/n0;-><init>(Lc/d/a/b/e/m/m/l0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/b0;->c:Lc/d/a/b/e/m/m/y;

    iget-object v0, v0, Lc/d/a/b/e/m/m/y;->e:Lc/d/a/b/e/m/m/x;

    iget-object v1, p0, Lc/d/a/b/e/m/m/b0;->b:Lc/d/a/b/e/a;

    .line 1
    invoke-virtual {v0, v1}, Lc/d/a/b/e/m/m/x;->e(Lc/d/a/b/e/a;)V

    return-void
.end method
