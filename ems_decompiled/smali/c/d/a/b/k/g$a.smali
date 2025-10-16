.class public final Lc/d/a/b/k/g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/k/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/fragment/app/Fragment;

.field public final b:Lc/d/a/b/k/i/c;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lc/d/a/b/k/i/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p2, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    const-string p2, "null reference"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/d/a/b/k/g$a;->a:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v1, v0}, Lc/d/a/b/k/i/c;->d(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final f()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "MapOptions"

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v1}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v2, p0, Lc/d/a/b/k/g$a;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lc/d/a/b/k/i/r;->c(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0, v1}, Lc/d/a/b/k/i/c;->g(Landroid/os/Bundle;)V

    invoke-static {v1, p1}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final h(Lc/d/a/b/k/c;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    new-instance v1, Lc/d/a/b/k/o;

    invoke-direct {v1, p1}, Lc/d/a/b/k/o;-><init>(Lc/d/a/b/k/c;)V

    invoke-interface {v0, v1}, Lc/d/a/b/k/i/c;->l(Lc/d/a/b/k/i/j;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final m()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->m()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final n(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MapOptions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/maps/GoogleMapOptions;

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v0}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    .line 1
    new-instance v2, Lc/d/a/b/f/d;

    invoke-direct {v2, p1}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-interface {v1, v2, p2, v0}, Lc/d/a/b/k/i/c;->T(Lc/d/a/b/f/b;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V

    invoke-static {v0, p3}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lc/d/a/b/k/j/f;

    invoke-direct {p2, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final o(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p3, v0}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    .line 1
    new-instance v2, Lc/d/a/b/f/d;

    invoke-direct {v2, p1}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lc/d/a/b/f/d;

    invoke-direct {p1, p2}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 2
    invoke-interface {v1, v2, p1, v0}, Lc/d/a/b/k/i/c;->a0(Lc/d/a/b/f/b;Lc/d/a/b/f/b;Landroid/os/Bundle;)Lc/d/a/b/f/b;

    move-result-object p1

    invoke-static {v0, p3}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lc/d/a/b/f/d;->j0(Lc/d/a/b/f/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lc/d/a/b/k/j/f;

    invoke-direct {p2, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw p2
.end method

.method public final onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc/d/a/b/k/g$a;->b:Lc/d/a/b/k/i/c;

    invoke-interface {v0}, Lc/d/a/b/k/i/c;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
