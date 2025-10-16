.class public final Lc/d/a/d/a/a/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/d/a/a/d/c;


# instance fields
.field public final a:Lc/d/a/d/a/a/d/c;

.field public final b:Lc/d/a/d/a/a/d/c;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/c;Lc/d/a/d/a/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/d/a/a/q;->a:Lc/d/a/d/a/a/d/c;

    iput-object p2, p0, Lc/d/a/d/a/a/q;->b:Lc/d/a/d/a/a/d/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/d/a/d/a/a/q;->a:Lc/d/a/d/a/a/d/c;

    check-cast v0, Lc/d/a/d/a/a/l;

    invoke-virtual {v0}, Lc/d/a/d/a/a/l;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/d/a/a/q;->b:Lc/d/a/d/a/a/d/c;

    invoke-interface {v1}, Lc/d/a/d/a/a/d/c;->zza()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lc/d/a/d/a/a/p;

    check-cast v1, Lc/d/a/d/a/a/r;

    invoke-direct {v2, v0, v1}, Lc/d/a/d/a/a/p;-><init>(Landroid/content/Context;Lc/d/a/d/a/a/r;)V

    return-object v2
.end method
