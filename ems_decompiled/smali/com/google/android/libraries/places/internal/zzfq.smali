.class public final Lcom/google/android/libraries/places/internal/zzfq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzfc;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzfo;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzfo;[B)V
    .locals 0

    sget-object p2, Lcom/google/android/libraries/places/internal/zzfb;->zza:Lcom/google/android/libraries/places/internal/zzfb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfq;->zzb:Lcom/google/android/libraries/places/internal/zzfo;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzfq;->zza:Lcom/google/android/libraries/places/internal/zzfc;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/libraries/places/internal/zzfq;)Lcom/google/android/libraries/places/internal/zzfc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/libraries/places/internal/zzfq;->zza:Lcom/google/android/libraries/places/internal/zzfc;

    return-object p0
.end method

.method public static zzb(C)Lcom/google/android/libraries/places/internal/zzfq;
    .locals 2

    new-instance p0, Lcom/google/android/libraries/places/internal/zzez;

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzez;-><init>(C)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzfq;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzfo;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/places/internal/zzfo;-><init>(Lcom/google/android/libraries/places/internal/zzfc;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/android/libraries/places/internal/zzfq;-><init>(Lcom/google/android/libraries/places/internal/zzfo;[B)V

    return-object v0
.end method


# virtual methods
.method public final zzc(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzfq;->zzb:Lcom/google/android/libraries/places/internal/zzfo;

    new-instance v0, Lcom/google/android/libraries/places/internal/zzfn;

    const-string v1, "2.5.0"

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/libraries/places/internal/zzfn;-><init>(Lcom/google/android/libraries/places/internal/zzfo;Lcom/google/android/libraries/places/internal/zzfq;Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
