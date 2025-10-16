.class public final Lcom/google/android/libraries/places/internal/zzu;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic zza:I

.field private static final zzb:J


# instance fields
.field private final zzc:Landroid/net/wifi/WifiManager;

.field private final zzd:Lcom/google/android/libraries/places/internal/zza;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzu;->zzb:J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Lcom/google/android/libraries/places/internal/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzu;->zzc:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzu;->zzd:Lcom/google/android/libraries/places/internal/zza;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzge;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzge<",
            "Lcom/google/android/libraries/places/internal/zzs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzu;->zzc:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzu;->zzc:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lcom/google/android/libraries/places/internal/zzt;->zza:Lcom/google/android/libraries/places/internal/zzt;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzgo;->zza(Ljava/util/Comparator;)Lcom/google/android/libraries/places/internal/zzgo;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzge;->zzp(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzu;->zzc:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    if-eqz v6, :cond_7

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzu;->zzd:Lcom/google/android/libraries/places/internal/zza;

    invoke-interface {v7}, Lcom/google/android/libraries/places/internal/zza;->zza()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    iget-wide v9, v6, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long/2addr v7, v9

    sget-wide v9, Lcom/google/android/libraries/places/internal/zzu;->zzb:J

    iget-object v11, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v11, :cond_6

    const/16 v12, 0x5f

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, 0x1

    if-gez v12, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_nomap"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "_optout"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_5
    :goto_1
    cmp-long v11, v7, v9

    if-gtz v11, :cond_7

    if-nez v13, :cond_7

    new-instance v7, Lcom/google/android/libraries/places/internal/zzs;

    invoke-direct {v7, v2, v6}, Lcom/google/android/libraries/places/internal/zzs;-><init>(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null SSID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzge;->zzk(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzge;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzge;->zzm()Lcom/google/android/libraries/places/internal/zzge;

    move-result-object v0

    return-object v0

    :cond_a
    :goto_4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzge;->zzm()Lcom/google/android/libraries/places/internal/zzge;

    move-result-object v0

    return-object v0
.end method
