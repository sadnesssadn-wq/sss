.class public final Lc/d/a/b/k/j/d;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/k/j/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/google/android/gms/maps/model/LatLng;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lc/d/a/b/k/j/a;

.field public g:F

.field public h:F

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/k/j/m;

    invoke-direct {v0}, Lc/d/a/b/k/j/m;-><init>()V

    sput-object v0, Lc/d/a/b/k/j/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lc/d/a/b/k/j/d;->g:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lc/d/a/b/k/j/d;->h:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lc/d/a/b/k/j/d;->j:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lc/d/a/b/k/j/d;->k:Z

    const/4 v2, 0x0

    iput v2, p0, Lc/d/a/b/k/j/d;->l:F

    iput v0, p0, Lc/d/a/b/k/j/d;->m:F

    iput v2, p0, Lc/d/a/b/k/j/d;->n:F

    iput v1, p0, Lc/d/a/b/k/j/d;->o:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 4

    move-object v0, p0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lc/d/a/b/k/j/d;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lc/d/a/b/k/j/d;->h:F

    const/4 v3, 0x1

    iput-boolean v3, v0, Lc/d/a/b/k/j/d;->j:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lc/d/a/b/k/j/d;->k:Z

    const/4 v3, 0x0

    iput v3, v0, Lc/d/a/b/k/j/d;->l:F

    iput v1, v0, Lc/d/a/b/k/j/d;->m:F

    iput v3, v0, Lc/d/a/b/k/j/d;->n:F

    iput v2, v0, Lc/d/a/b/k/j/d;->o:F

    move-object v1, p1

    iput-object v1, v0, Lc/d/a/b/k/j/d;->c:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p2

    iput-object v1, v0, Lc/d/a/b/k/j/d;->d:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lc/d/a/b/k/j/d;->e:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lc/d/a/b/k/j/a;

    invoke-static {p4}, Lc/d/a/b/f/b$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/f/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lc/d/a/b/k/j/a;-><init>(Lc/d/a/b/f/b;)V

    :goto_0
    iput-object v1, v0, Lc/d/a/b/k/j/d;->f:Lc/d/a/b/k/j/a;

    move v1, p5

    iput v1, v0, Lc/d/a/b/k/j/d;->g:F

    move v1, p6

    iput v1, v0, Lc/d/a/b/k/j/d;->h:F

    move v1, p7

    iput-boolean v1, v0, Lc/d/a/b/k/j/d;->i:Z

    move v1, p8

    iput-boolean v1, v0, Lc/d/a/b/k/j/d;->j:Z

    move v1, p9

    iput-boolean v1, v0, Lc/d/a/b/k/j/d;->k:Z

    move v1, p10

    iput v1, v0, Lc/d/a/b/k/j/d;->l:F

    move v1, p11

    iput v1, v0, Lc/d/a/b/k/j/d;->m:F

    move/from16 v1, p12

    iput v1, v0, Lc/d/a/b/k/j/d;->n:F

    move/from16 v1, p13

    iput v1, v0, Lc/d/a/b/k/j/d;->o:F

    move/from16 v1, p14

    iput v1, v0, Lc/d/a/b/k/j/d;->p:F

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lc/d/a/b/k/j/d;->c:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 4
    iget-object v1, p0, Lc/d/a/b/k/j/d;->d:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-object p2, p0, Lc/d/a/b/k/j/d;->e:Ljava/lang/String;

    const/4 v1, 0x4

    .line 7
    invoke-static {p1, v1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x5

    iget-object v2, p0, Lc/d/a/b/k/j/d;->f:Lc/d/a/b/k/j/a;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v2, Lc/d/a/b/k/j/a;->a:Lc/d/a/b/f/b;

    .line 9
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-static {p1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    .line 10
    iget v2, p0, Lc/d/a/b/k/j/d;->g:F

    .line 11
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 p2, 0x7

    .line 12
    iget v2, p0, Lc/d/a/b/k/j/d;->h:F

    .line 13
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0x8

    .line 14
    iget-boolean v2, p0, Lc/d/a/b/k/j/d;->i:Z

    .line 15
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0x9

    .line 16
    iget-boolean v2, p0, Lc/d/a/b/k/j/d;->j:Z

    .line 17
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    .line 18
    iget-boolean v2, p0, Lc/d/a/b/k/j/d;->k:Z

    .line 19
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xb

    .line 20
    iget v2, p0, Lc/d/a/b/k/j/d;->l:F

    .line 21
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0xc

    .line 22
    iget v2, p0, Lc/d/a/b/k/j/d;->m:F

    .line 23
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0xd

    .line 24
    iget v2, p0, Lc/d/a/b/k/j/d;->n:F

    .line 25
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0xe

    .line 26
    iget v2, p0, Lc/d/a/b/k/j/d;->o:F

    .line 27
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    const/16 p2, 0xf

    .line 28
    iget v2, p0, Lc/d/a/b/k/j/d;->p:F

    .line 29
    invoke-static {p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 30
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
