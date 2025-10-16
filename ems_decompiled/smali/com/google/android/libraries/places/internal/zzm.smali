.class public final synthetic Lcom/google/android/libraries/places/internal/zzm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzp;

.field public final synthetic zzb:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzp;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzm;->zza:Lcom/google/android/libraries/places/internal/zzp;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzm;->zzb:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzm;->zzb:Lc/d/a/b/p/m;

    invoke-virtual {p1}, Lc/d/a/b/p/l;->n()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/p/l;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lc/d/a/b/e/m/b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x10

    const-string v4, "Location request was cancelled. Please try again."

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    invoke-virtual {v0, v1}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/p/l;->o()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lc/d/a/b/e/m/b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-virtual {p1}, Lc/d/a/b/p/l;->j()Ljava/lang/Exception;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lc/d/a/b/e/m/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method
