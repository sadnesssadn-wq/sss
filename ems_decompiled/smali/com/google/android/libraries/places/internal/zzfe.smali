.class public final Lcom/google/android/libraries/places/internal/zzfe;
.super Lcom/google/android/libraries/places/internal/zzfh;
.source ""


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzfh;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzfh;Lcom/google/android/libraries/places/internal/zzfh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfe;->zza:Lcom/google/android/libraries/places/internal/zzfh;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/libraries/places/internal/zzfh;-><init>(Lcom/google/android/libraries/places/internal/zzfh;Lcom/google/android/libraries/places/internal/zzfg;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Appendable;Ljava/util/Iterator;)Ljava/lang/Appendable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/util/Iterator;",
            ")TA;"
        }
    .end annotation

    const-string v0, "parts"

    invoke-static {p2, v0}, Lcom/google/android/libraries/places/internal/zzfm;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzfh;->zzf(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzfe;->zza:Lcom/google/android/libraries/places/internal/zzfh;

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzfh;->zzd(Lcom/google/android/libraries/places/internal/zzfh;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    :cond_3
    return-object p1
.end method
