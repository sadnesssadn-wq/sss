.class public abstract Lc/d/a/b/j/u;
.super Lc/d/a/b/i/j/s;
.source ""

# interfaces
.implements Lc/d/a/b/j/t;


# static fields
.field public static final synthetic c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.ILocationCallback"

    invoke-direct {p0, v0}, Lc/d/a/b/i/j/s;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/4 p4, 0x2

    if-eq p1, p4, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/location/LocationAvailability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/d/a/b/i/j/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationAvailability;

    move-object p2, p0

    check-cast p2, Lc/d/a/b/i/j/l;

    .line 1
    iget-object p2, p2, Lc/d/a/b/i/j/l;->d:Lc/d/a/b/e/m/m/j;

    new-instance p4, Lc/d/a/b/i/j/n;

    invoke-direct {p4, p1}, Lc/d/a/b/i/j/n;-><init>(Lcom/google/android/gms/location/LocationAvailability;)V

    invoke-virtual {p2, p4}, Lc/d/a/b/e/m/m/j;->b(Lc/d/a/b/e/m/m/j$b;)V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lcom/google/android/gms/location/LocationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/d/a/b/i/j/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationResult;

    move-object p2, p0

    check-cast p2, Lc/d/a/b/i/j/l;

    .line 3
    iget-object p2, p2, Lc/d/a/b/i/j/l;->d:Lc/d/a/b/e/m/m/j;

    new-instance p4, Lc/d/a/b/i/j/m;

    invoke-direct {p4, p1}, Lc/d/a/b/i/j/m;-><init>(Lcom/google/android/gms/location/LocationResult;)V

    invoke-virtual {p2, p4}, Lc/d/a/b/e/m/m/j;->b(Lc/d/a/b/e/m/m/j$b;)V

    :goto_0
    return p3
.end method
