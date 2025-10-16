.class public final Lc/d/a/b/j/m;
.super Lc/d/a/b/e/m/m/r;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/m/r<",
        "Lc/d/a/b/i/j/r;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/m/m/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/e/m/a$b;Lc/d/a/b/p/m;)V
    .locals 1

    check-cast p1, Lc/d/a/b/i/j/r;

    .line 1
    iget-object p1, p1, Lc/d/a/b/i/j/r;->H:Lc/d/a/b/i/j/k;

    .line 2
    iget-object v0, p1, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v0}, Lc/d/a/b/i/j/z;->a()V

    iget-object v0, p1, Lc/d/a/b/i/j/k;->a:Lc/d/a/b/i/j/z;

    invoke-virtual {v0}, Lc/d/a/b/i/j/z;->b()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/j/i;

    iget-object p1, p1, Lc/d/a/b/i/j/k;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/d/a/b/i/j/i;->zza(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 3
    iget-object p2, p2, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {p2, p1}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    return-void
.end method
