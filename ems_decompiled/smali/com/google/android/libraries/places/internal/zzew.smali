.class public final Lcom/google/android/libraries/places/internal/zzew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzev;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzdf;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzdj;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzdf;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzew;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzew;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzeu;)V
    .locals 5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzvw;->zza()Lcom/google/android/libraries/places/internal/zzvt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzz()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzg(Z)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzx()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzd(Z)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zze(Z)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzj(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzc(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzb(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zze()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzk(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzh(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzl(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzf(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzi(Z)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzf()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zza(I)Lcom/google/android/libraries/places/internal/zzvt;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzi()Lcom/google/android/libraries/places/internal/zzdv;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzdv;->zza:Lcom/google/android/libraries/places/internal/zzdv;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzvt;->zzn(I)Lcom/google/android/libraries/places/internal/zzvt;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzi()Lcom/google/android/libraries/places/internal/zzdv;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzdv;->zzb:Lcom/google/android/libraries/places/internal/zzdv;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzvt;->zzn(I)Lcom/google/android/libraries/places/internal/zzvt;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzvt;->zzn(I)Lcom/google/android/libraries/places/internal/zzvt;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzj()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->FULLSCREEN:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzvt;->zzm(I)Lcom/google/android/libraries/places/internal/zzvt;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzeu;->zzj()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object p1

    sget-object v1, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzvt;->zzm(I)Lcom/google/android/libraries/places/internal/zzvt;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzvw;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzew;->zza:Lcom/google/android/libraries/places/internal/zzdf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdk;->zzb(Lcom/google/android/libraries/places/internal/zzdf;)Lcom/google/android/libraries/places/internal/zzwc;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzwc;->zzl(I)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzwc;->zzc(Lcom/google/android/libraries/places/internal/zzvw;)Lcom/google/android/libraries/places/internal/zzwc;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzabp;->zzt()Lcom/google/android/libraries/places/internal/zzabs;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzwh;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Lcom/google/android/libraries/places/internal/zzwh;)Lcom/google/android/libraries/places/internal/zzjr;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzew;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzdj;->zza(Lcom/google/android/libraries/places/internal/zzjr;)V

    return-void
.end method
