.class public final Lcom/google/android/gms/maps/StreetViewPanoramaView$b;
.super Lc/d/a/b/f/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/f/a<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Landroid/view/ViewGroup;

.field public final f:Landroid/content/Context;

.field public g:Lc/d/a/b/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/f/e<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/k/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/f/a;-><init>()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->i:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    return-void
.end method


# virtual methods
.method public final a(Lc/d/a/b/f/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/f/e<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaView$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->g:Lc/d/a/b/f/e;

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    if-nez p1, :cond_1

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Landroid/content/Context;

    invoke-static {p1}, Lc/d/a/b/k/b;->a(Landroid/content/Context;)I

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Landroid/content/Context;

    invoke-static {p1}, Lc/d/a/b/k/i/s;->a(Landroid/content/Context;)Lc/d/a/b/k/i/t;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->f:Landroid/content/Context;

    .line 3
    new-instance v1, Lc/d/a/b/f/d;

    invoke-direct {v1, v0}, Lc/d/a/b/f/d;-><init>(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->h:Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-interface {p1, v1, v0}, Lc/d/a/b/k/i/t;->q(Lc/d/a/b/f/b;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lc/d/a/b/k/i/f;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->g:Lc/d/a/b/f/e;

    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->e:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;-><init>(Landroid/view/ViewGroup;Lc/d/a/b/k/i/f;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lc/d/a/b/e/f; {:try_start_0 .. :try_end_0} :catch_1

    check-cast v0, Lc/d/a/b/f/g;

    :try_start_1
    invoke-virtual {v0, v1}, Lc/d/a/b/f/g;->a(Lc/d/a/b/f/c;)V

    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/k/d;

    .line 5
    iget-object v1, p0, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    .line 6
    check-cast v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->h(Lc/d/a/b/k/d;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$b;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc/d/a/b/e/f; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lc/d/a/b/k/j/f;

    invoke-direct {v0, p1}, Lc/d/a/b/k/j/f;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :catch_1
    :cond_1
    return-void
.end method
