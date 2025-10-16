.class public Lc/d/a/b/e/c;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/e/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final e:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/e/w;

    invoke-direct {v0}, Lc/d/a/b/e/w;-><init>()V

    sput-object v0, Lc/d/a/b/e/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    iput p2, p0, Lc/d/a/b/e/c;->d:I

    iput-wide p3, p0, Lc/d/a/b/e/c;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    iput-wide p2, p0, Lc/d/a/b/e/c;->e:J

    const/4 p1, -0x1

    iput p1, p0, Lc/d/a/b/e/c;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lc/d/a/b/e/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lc/d/a/b/e/c;

    .line 1
    iget-object v0, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p1, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/d/a/b/e/c;->v()J

    move-result-wide v2

    invoke-virtual {p1}, Lc/d/a/b/e/c;->v()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0}, Lc/d/a/b/e/c;->v()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lc/d/a/b/e/p/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/b/e/p/n;-><init>(Ljava/lang/Object;Lc/d/a/b/e/p/h1;)V

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    const-string v2, "name"

    .line 3
    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    invoke-virtual {p0}, Lc/d/a/b/e/c;->v()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    invoke-virtual {v0}, Lc/d/a/b/e/p/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()J
    .locals 5

    iget-wide v0, p0, Lc/d/a/b/e/c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lc/d/a/b/e/c;->d:I

    int-to-long v0, v0

    :cond_0
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lc/d/a/b/e/c;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lc/d/a/b/e/c;->d:I

    const/4 v2, 0x4

    .line 4
    invoke-static {p1, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0}, Lc/d/a/b/e/c;->v()J

    move-result-wide v1

    const/16 v3, 0x8

    .line 6
    invoke-static {p1, v0, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
