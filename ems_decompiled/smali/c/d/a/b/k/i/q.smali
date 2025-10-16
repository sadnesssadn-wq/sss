.class public final Lc/d/a/b/k/i/q;
.super Lc/d/a/b/i/k/a;
.source ""

# interfaces
.implements Lc/d/a/b/k/i/g;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-direct {p0, p1, v0}, Lc/d/a/b/i/k/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final t(Z)V
    .locals 2

    invoke-virtual {p0}, Lc/d/a/b/i/k/a;->n()Landroid/os/Parcel;

    move-result-object v0

    .line 1
    sget v1, Lc/d/a/b/i/k/c;->a:I

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1, v0}, Lc/d/a/b/i/k/a;->j0(ILandroid/os/Parcel;)V

    return-void
.end method
