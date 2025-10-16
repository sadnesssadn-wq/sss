.class public abstract Lcom/google/android/libraries/places/internal/zzaai;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzacy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzaaj<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/zzaai<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/zzacy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaai;->zzo()Lcom/google/android/libraries/places/internal/zzaai;

    move-result-object v0

    return-object v0
.end method

.method public abstract zzo()Lcom/google/android/libraries/places/internal/zzaai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation
.end method

.method public abstract zzp(Lcom/google/android/libraries/places/internal/zzaaj;)Lcom/google/android/libraries/places/internal/zzaai;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public final bridge synthetic zzq(Lcom/google/android/libraries/places/internal/zzacz;)Lcom/google/android/libraries/places/internal/zzacy;
    .locals 1

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzada;->zzw()Lcom/google/android/libraries/places/internal/zzacz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaaj;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzaai;->zzp(Lcom/google/android/libraries/places/internal/zzaaj;)Lcom/google/android/libraries/places/internal/zzaai;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
