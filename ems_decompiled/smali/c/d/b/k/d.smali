.class public final synthetic Lc/d/b/k/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/r/b;


# instance fields
.field public final synthetic a:Lc/d/b/k/q;

.field public final synthetic b:Lc/d/b/k/m;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/k/q;Lc/d/b/k/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/k/d;->a:Lc/d/b/k/q;

    iput-object p2, p0, Lc/d/b/k/d;->b:Lc/d/b/k/m;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc/d/b/k/d;->a:Lc/d/b/k/q;

    iget-object v1, p0, Lc/d/b/k/d;->b:Lc/d/b/k/m;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v1, Lc/d/b/k/m;->e:Lc/d/b/k/o;

    .line 3
    new-instance v3, Lc/d/b/k/d0;

    invoke-direct {v3, v1, v0}, Lc/d/b/k/d0;-><init>(Lc/d/b/k/m;Lc/d/b/k/n;)V

    invoke-interface {v2, v3}, Lc/d/b/k/o;->a(Lc/d/b/k/n;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
