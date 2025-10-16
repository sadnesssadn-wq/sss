.class public final synthetic Lcom/google/android/libraries/places/internal/zzab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/b/l$b;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzae;

.field public final synthetic zzb:Ljava/lang/Class;

.field public final synthetic zzc:Lc/d/a/b/p/m;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzae;Ljava/lang/Class;Lc/d/a/b/p/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzab;->zza:Lcom/google/android/libraries/places/internal/zzae;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzab;->zzb:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzab;->zzc:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzab;->zza:Lcom/google/android/libraries/places/internal/zzae;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzab;->zzb:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzab;->zzc:Lc/d/a/b/p/m;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/zzae;->zzb(Ljava/lang/Class;Lc/d/a/b/p/m;Lorg/json/JSONObject;)V

    return-void
.end method
