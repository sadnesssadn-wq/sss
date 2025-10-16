.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzq;
.super Lb/r/d/h$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/r/d/h$d<",
        "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/r/d/h$d;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/widget/internal/ui/zzp;)V
    .locals 0

    invoke-direct {p0}, Lb/r/d/h$d;-><init>()V

    return-void
.end method

.method public static final zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdh;->zzb(Ljava/lang/Throwable;)V

    throw p0
.end method


# virtual methods
.method public final bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiffUtilEquals"
        }
    .end annotation

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/widget/internal/ui/zzq;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Z

    move-result p1

    return p1
.end method
