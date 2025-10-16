.class public Lc/d/a/b/p/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lc/d/a/b/p/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/p/p;

    invoke-direct {v0}, Lc/d/a/b/p/p;-><init>()V

    iput-object v0, p0, Lc/d/a/b/p/b;->a:Lc/d/a/b/p/p;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/p/b;->a:Lc/d/a/b/p/p;

    .line 1
    iget-object v0, v0, Lc/d/a/b/p/p;->a:Lc/d/a/b/p/j0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/p/j0;->v(Ljava/lang/Object;)Z

    return-void
.end method
