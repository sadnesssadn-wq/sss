.class public final Lcom/google/android/libraries/places/internal/zzie;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzif;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzhl;
    .locals 8

    new-instance v7, Lcom/google/android/libraries/places/internal/zzim;

    sget-object v5, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzim;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/logging/Level;Z)V

    return-object v7
.end method
