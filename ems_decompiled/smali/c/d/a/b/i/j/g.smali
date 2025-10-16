.class public abstract Lc/d/a/b/i/j/g;
.super Lc/d/a/b/i/j/s;
.source ""

# interfaces
.implements Lc/d/a/b/i/j/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    invoke-direct {p0, v0}, Lc/d/a/b/i/j/s;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final n(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    sget-object p1, Lc/d/a/b/i/j/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lc/d/a/b/i/j/x;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/j/d;

    invoke-interface {p0, p1}, Lc/d/a/b/i/j/f;->D(Lc/d/a/b/i/j/d;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
