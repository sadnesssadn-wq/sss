.class public final synthetic Lcom/google/android/libraries/places/internal/zzcn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzcq;

.field public final synthetic zzb:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzcq;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcn;->zza:Lcom/google/android/libraries/places/internal/zzcq;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzcn;->zzb:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcn;->zzb:Lc/d/a/b/p/m;

    invoke-virtual {p1}, Lc/d/a/b/p/l;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object p1

    .line 1
    iget-object v1, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v1, p1}, Lc/d/a/b/p/j0;->t(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/p/l;->m()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object p1

    .line 3
    iget-object v1, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v1, p1}, Lc/d/a/b/p/j0;->s(Ljava/lang/Exception;)V

    .line 4
    :cond_1
    :goto_0
    iget-object p1, v0, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    return-object p1
.end method
