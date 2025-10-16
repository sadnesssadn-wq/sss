.class public final Lc/d/a/b/k/l;
.super Lc/d/a/b/k/i/k;
.source ""


# instance fields
.field public final synthetic c:Lc/d/a/b/k/c;


# direct methods
.method public constructor <init>(Lc/d/a/b/k/c;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/k/l;->c:Lc/d/a/b/k/c;

    invoke-direct {p0}, Lc/d/a/b/k/i/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final Q(Lc/d/a/b/k/i/b;)V
    .locals 2

    iget-object v0, p0, Lc/d/a/b/k/l;->c:Lc/d/a/b/k/c;

    new-instance v1, Lc/d/a/b/k/a;

    invoke-direct {v1, p1}, Lc/d/a/b/k/a;-><init>(Lc/d/a/b/k/i/b;)V

    invoke-interface {v0, v1}, Lc/d/a/b/k/c;->onMapReady(Lc/d/a/b/k/a;)V

    return-void
.end method
