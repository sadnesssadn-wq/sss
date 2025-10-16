.class public final synthetic Lcom/google/android/libraries/places/internal/zzeg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzei;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzei;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:Lcom/google/android/libraries/places/internal/zzei;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzeg;->zza:Lcom/google/android/libraries/places/internal/zzei;

    sget v1, Lcom/google/android/libraries/places/internal/zzel;->zza:I

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzek;->zza()Lc/d/a/b/p/b;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lc/d/a/b/p/b;->a:Lc/d/a/b/p/p;

    .line 2
    iget-object v0, v0, Lc/d/a/b/p/p;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v0}, Lc/d/a/b/p/j0;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lc/d/a/b/p/j0;

    invoke-direct {p1}, Lc/d/a/b/p/j0;-><init>()V

    invoke-virtual {p1}, Lc/d/a/b/p/j0;->u()Z

    :cond_0
    return-object p1
.end method
