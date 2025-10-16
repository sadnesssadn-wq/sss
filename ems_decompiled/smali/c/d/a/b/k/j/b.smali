.class public final Lc/d/a/b/k/j/b;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/k/j/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/google/android/gms/maps/model/LatLng;

.field public d:D

.field public e:F

.field public f:I

.field public g:I

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/k/j/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/k/j/j;

    invoke-direct {v0}, Lc/d/a/b/k/j/j;-><init>()V

    sput-object v0, Lc/d/a/b/k/j/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/k/j/b;->c:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lc/d/a/b/k/j/b;->d:D

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lc/d/a/b/k/j/b;->e:F

    const/high16 v1, -0x1000000

    iput v1, p0, Lc/d/a/b/k/j/b;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lc/d/a/b/k/j/b;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lc/d/a/b/k/j/b;->h:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/d/a/b/k/j/b;->i:Z

    iput-boolean v1, p0, Lc/d/a/b/k/j/b;->j:Z

    iput-object v0, p0, Lc/d/a/b/k/j/b;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "DFIIFZZ",
            "Ljava/util/List<",
            "Lc/d/a/b/k/j/e;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/k/j/b;->c:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lc/d/a/b/k/j/b;->d:D

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lc/d/a/b/k/j/b;->e:F

    const/high16 v1, -0x1000000

    iput v1, p0, Lc/d/a/b/k/j/b;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lc/d/a/b/k/j/b;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lc/d/a/b/k/j/b;->h:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/d/a/b/k/j/b;->i:Z

    iput-boolean v1, p0, Lc/d/a/b/k/j/b;->j:Z

    iput-object v0, p0, Lc/d/a/b/k/j/b;->k:Ljava/util/List;

    iput-object p1, p0, Lc/d/a/b/k/j/b;->c:Lcom/google/android/gms/maps/model/LatLng;

    iput-wide p2, p0, Lc/d/a/b/k/j/b;->d:D

    iput p4, p0, Lc/d/a/b/k/j/b;->e:F

    iput p5, p0, Lc/d/a/b/k/j/b;->f:I

    iput p6, p0, Lc/d/a/b/k/j/b;->g:I

    iput p7, p0, Lc/d/a/b/k/j/b;->h:F

    iput-boolean p8, p0, Lc/d/a/b/k/j/b;->i:Z

    iput-boolean p9, p0, Lc/d/a/b/k/j/b;->j:Z

    iput-object p10, p0, Lc/d/a/b/k/j/b;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lc/d/a/b/k/j/b;->c:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 4
    iget-wide v1, p0, Lc/d/a/b/k/j/b;->d:D

    const/16 v4, 0x8

    .line 5
    invoke-static {p1, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 6
    iget p2, p0, Lc/d/a/b/k/j/b;->e:F

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 p2, 0x5

    .line 8
    iget v2, p0, Lc/d/a/b/k/j/b;->f:I

    .line 9
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x6

    .line 10
    iget v2, p0, Lc/d/a/b/k/j/b;->g:I

    .line 11
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x7

    .line 12
    iget v2, p0, Lc/d/a/b/k/j/b;->h:F

    .line 13
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    iget-boolean p2, p0, Lc/d/a/b/k/j/b;->i:Z

    .line 15
    invoke-static {p1, v4, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x9

    .line 16
    iget-boolean v2, p0, Lc/d/a/b/k/j/b;->j:Z

    .line 17
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    .line 18
    iget-object v1, p0, Lc/d/a/b/k/j/b;->k:Ljava/util/List;

    .line 19
    invoke-static {p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Y0(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 20
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
