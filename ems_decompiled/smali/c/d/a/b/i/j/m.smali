.class public final Lc/d/a/b/i/j/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/m/j$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/d/a/b/e/m/m/j$b<",
        "Lc/d/a/b/j/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/location/LocationResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/i/j/m;->a:Lcom/google/android/gms/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lc/d/a/b/j/b;

    iget-object v0, p0, Lc/d/a/b/i/j/m;->a:Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p1, v0}, Lc/d/a/b/j/b;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
