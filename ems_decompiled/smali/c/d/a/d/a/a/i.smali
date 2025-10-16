.class public final Lc/d/a/d/a/a/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/d/a/a/d/c;


# instance fields
.field public final a:Lc/d/a/d/a/a/d/c;

.field public final b:Lc/d/a/d/a/a/d/c;

.field public final c:Lc/d/a/d/a/a/d/c;


# direct methods
.method public constructor <init>(Lc/d/a/d/a/a/d/c;Lc/d/a/d/a/a/d/c;Lc/d/a/d/a/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/a/d/a/a/i;->a:Lc/d/a/d/a/a/d/c;

    iput-object p2, p0, Lc/d/a/d/a/a/i;->b:Lc/d/a/d/a/a/d/c;

    iput-object p3, p0, Lc/d/a/d/a/a/i;->c:Lc/d/a/d/a/a/d/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc/d/a/d/a/a/i;->a:Lc/d/a/d/a/a/d/c;

    invoke-interface {v0}, Lc/d/a/d/a/a/d/c;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/d/a/a/i;->b:Lc/d/a/d/a/a/d/c;

    invoke-interface {v1}, Lc/d/a/d/a/a/d/c;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/d/a/a/f;

    iget-object v2, p0, Lc/d/a/d/a/a/i;->c:Lc/d/a/d/a/a/d/c;

    check-cast v2, Lc/d/a/d/a/a/l;

    invoke-virtual {v2}, Lc/d/a/d/a/a/l;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lc/d/a/d/a/a/h;

    check-cast v0, Lc/d/a/d/a/a/p;

    invoke-direct {v3, v0, v1, v2}, Lc/d/a/d/a/a/h;-><init>(Lc/d/a/d/a/a/p;Lc/d/a/d/a/a/f;Landroid/content/Context;)V

    return-object v3
.end method
