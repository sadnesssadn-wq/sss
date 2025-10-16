.class public final Lcom/google/android/gms/maps/model/LatLngBounds$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/LatLngBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->b:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->d:D

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$a;
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->a:D

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->b:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->c:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->b:D

    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->d:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    iget-wide v4, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->d:D

    const/4 p1, 0x0

    const/4 v6, 0x1

    cmpg-double v7, v2, v4

    if-gtz v7, :cond_1

    cmpg-double v7, v2, v0

    if-gtz v7, :cond_3

    cmpg-double v7, v0, v4

    if-gtz v7, :cond_3

    goto :goto_0

    :cond_1
    cmpg-double v7, v2, v0

    if-lez v7, :cond_2

    cmpg-double v7, v0, v4

    if-gtz v7, :cond_3

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :cond_3
    if-nez p1, :cond_5

    sub-double/2addr v2, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v6

    rem-double/2addr v2, v6

    sub-double v4, v0, v4

    add-double/2addr v4, v6

    rem-double/2addr v4, v6

    cmpg-double p1, v2, v4

    if-gez p1, :cond_4

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->c:D

    goto :goto_2

    :cond_4
    :goto_1
    iput-wide v0, p0, Lcom/google/android/gms/maps/model/LatLngBounds$a;->d:D

    :cond_5
    :goto_2
    return-object p0
.end method
