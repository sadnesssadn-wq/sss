.class public final Lc/d/a/b/n/b/j;
.super Lc/d/a/b/e/p/r/a;
.source ""

# interfaces
.implements Lc/d/a/b/e/m/j;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/n/b/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/n/b/i;

    invoke-direct {v0}, Lc/d/a/b/n/b/i;-><init>()V

    sput-object v0, Lc/d/a/b/n/b/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/n/b/j;->c:Ljava/util/List;

    iput-object p2, p0, Lc/d/a/b/n/b/j;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final l()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/n/b/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->l:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lc/d/a/b/n/b/j;->c:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v0, 0x2

    .line 4
    iget-object v1, p0, Lc/d/a/b/n/b/j;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
