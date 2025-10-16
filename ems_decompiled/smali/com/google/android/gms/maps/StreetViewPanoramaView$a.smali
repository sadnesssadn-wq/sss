.class public final Lcom/google/android/gms/maps/StreetViewPanoramaView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lc/d/a/b/k/i/f;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lc/d/a/b/k/i/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null reference"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v0}, Lc/d/a/b/k/i/f;->a()V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v0}, Lc/d/a/b/k/i/f;->b()V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v0}, Lc/d/a/b/k/i/f;->c()V
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

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v1, v0}, Lc/d/a/b/k/i/f;->d(Landroid/os/Bundle;)V

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
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v0}, Lc/d/a/b/k/i/f;->e()V
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
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v0}, Lc/d/a/b/k/i/f;->f()V
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
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v1, v0}, Lc/d/a/b/k/i/f;->g(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lc/d/a/b/k/i/r;->b(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {p1}, Lc/d/a/b/k/i/f;->k()Lc/d/a/b/f/b;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/f/d;->j0(Lc/d/a/b/f/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->c:Landroid/view/View;

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0
.end method

.method public final h(Lc/d/a/b/k/d;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    new-instance v1, Lc/d/a/b/k/n;

    invoke-direct {v1, p1}, Lc/d/a/b/k/n;-><init>(Lc/d/a/b/k/d;)V

    invoke-interface {v0, v1}, Lc/d/a/b/k/i/f;->z(Lc/d/a/b/k/i/m;)V
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

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onDestroyView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onInflate not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "onCreateView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lc/d/a/b/k/i/f;

    invoke-interface {v0}, Lc/d/a/b/k/i/f;->onLowMemory()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lc/d/a/b/k/j/f;

    invoke-direct {v1, v0}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
