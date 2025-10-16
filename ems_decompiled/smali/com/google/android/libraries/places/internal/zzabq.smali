.class public abstract Lcom/google/android/libraries/places/internal/zzabq;
.super Lcom/google/android/libraries/places/internal/zzabs;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzada;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzabq<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/zzabs<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/libraries/places/internal/zzada;"
    }
.end annotation


# instance fields
.field public final zzb:Lcom/google/android/libraries/places/internal/zzabm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzabs;-><init>()V

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzabm;->zza()Lcom/google/android/libraries/places/internal/zzabm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzabq;->zzb:Lcom/google/android/libraries/places/internal/zzabm;

    return-void
.end method
