.class public final Lcom/google/android/libraries/places/internal/zzim;
.super Lcom/google/android/libraries/places/internal/zzid;
.source ""


# instance fields
.field private final zza:Ljava/util/logging/Level;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Z)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/zzid;-><init>(Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzim;->zza:Ljava/util/logging/Level;

    return-void
.end method
