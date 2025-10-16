.class public final Lc/d/a/b/i/j/a0;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/i/j/a0;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/e/p/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lc/d/a/b/j/k;


# instance fields
.field public c:Lc/d/a/b/j/k;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/e/p/c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc/d/a/b/i/j/a0;->f:Ljava/util/List;

    new-instance v0, Lc/d/a/b/j/k;

    invoke-direct {v0}, Lc/d/a/b/j/k;-><init>()V

    sput-object v0, Lc/d/a/b/i/j/a0;->g:Lc/d/a/b/j/k;

    new-instance v0, Lc/d/a/b/i/j/b0;

    invoke-direct {v0}, Lc/d/a/b/i/j/b0;-><init>()V

    sput-object v0, Lc/d/a/b/i/j/a0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/j/k;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/j/k;",
            "Ljava/util/List<",
            "Lc/d/a/b/e/p/c;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/j/a0;->c:Lc/d/a/b/j/k;

    iput-object p2, p0, Lc/d/a/b/i/j/a0;->d:Ljava/util/List;

    iput-object p3, p0, Lc/d/a/b/i/j/a0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lc/d/a/b/i/j/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lc/d/a/b/i/j/a0;

    iget-object v0, p0, Lc/d/a/b/i/j/a0;->c:Lc/d/a/b/j/k;

    iget-object v2, p1, Lc/d/a/b/i/j/a0;->c:Lc/d/a/b/j/k;

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/i/j/a0;->d:Ljava/util/List;

    iget-object v2, p1, Lc/d/a/b/i/j/a0;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/i/j/a0;->e:Ljava/lang/String;

    iget-object p1, p1, Lc/d/a/b/i/j/a0;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/j/a0;->c:Lc/d/a/b/j/k;

    invoke-virtual {v0}, Lc/d/a/b/j/k;->hashCode()I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    iget-object v2, p0, Lc/d/a/b/i/j/a0;->c:Lc/d/a/b/j/k;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    iget-object v1, p0, Lc/d/a/b/i/j/a0;->d:Ljava/util/List;

    invoke-static {p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Y0(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x3

    iget-object v1, p0, Lc/d/a/b/i/j/a0;->e:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 3
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
