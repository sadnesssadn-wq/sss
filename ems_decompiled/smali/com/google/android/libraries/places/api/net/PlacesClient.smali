.class public interface abstract Lcom/google/android/libraries/places/api/net/PlacesClient;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract fetchPhoto(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lc/d/a/b/p/l;
    .param p1    # Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lc/d/a/b/p/l;
    .param p1    # Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lc/d/a/b/p/l;
    .param p1    # Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lc/d/a/b/p/l;
    .param p1    # Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            ")",
            "Lc/d/a/b/p/l<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation
.end method
