.class public Lc/d/a/b/q/e/a;
.super Lc/d/a/b/e/p/r/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/q/e/a$e;,
        Lc/d/a/b/q/e/a$d;,
        Lc/d/a/b/q/e/a$a;,
        Lc/d/a/b/q/e/a$h;,
        Lc/d/a/b/q/e/a$c;,
        Lc/d/a/b/q/e/a$b;,
        Lc/d/a/b/q/e/a$g;,
        Lc/d/a/b/q/e/a$k;,
        Lc/d/a/b/q/e/a$l;,
        Lc/d/a/b/q/e/a$j;,
        Lc/d/a/b/q/e/a$i;,
        Lc/d/a/b/q/e/a$f;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/q/e/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:I

.field public d:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public f:I

.field public g:[Landroid/graphics/Point;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public h:Lc/d/a/b/q/e/a$f;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public i:Lc/d/a/b/q/e/a$i;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public j:Lc/d/a/b/q/e/a$j;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public k:Lc/d/a/b/q/e/a$l;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public l:Lc/d/a/b/q/e/a$k;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public m:Lc/d/a/b/q/e/a$g;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public n:Lc/d/a/b/q/e/a$c;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public o:Lc/d/a/b/q/e/a$d;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public p:Lc/d/a/b/q/e/a$e;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public q:[B
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public r:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/q/e/d;

    invoke-direct {v0}, Lc/d/a/b/q/e/d;-><init>()V

    sput-object v0, Lc/d/a/b/q/e/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I[Landroid/graphics/Point;Lc/d/a/b/q/e/a$f;Lc/d/a/b/q/e/a$i;Lc/d/a/b/q/e/a$j;Lc/d/a/b/q/e/a$l;Lc/d/a/b/q/e/a$k;Lc/d/a/b/q/e/a$g;Lc/d/a/b/q/e/a$c;Lc/d/a/b/q/e/a$d;Lc/d/a/b/q/e/a$e;[BZ)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p5    # [Landroid/graphics/Point;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p6    # Lc/d/a/b/q/e/a$f;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p7    # Lc/d/a/b/q/e/a$i;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p8    # Lc/d/a/b/q/e/a$j;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p9    # Lc/d/a/b/q/e/a$l;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p10    # Lc/d/a/b/q/e/a$k;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p11    # Lc/d/a/b/q/e/a$g;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p12    # Lc/d/a/b/q/e/a$c;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p13    # Lc/d/a/b/q/e/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p14    # Lc/d/a/b/q/e/a$e;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p15    # [B
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    move v1, p1

    iput v1, v0, Lc/d/a/b/q/e/a;->c:I

    move-object v1, p2

    iput-object v1, v0, Lc/d/a/b/q/e/a;->d:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lc/d/a/b/q/e/a;->q:[B

    move-object v1, p3

    iput-object v1, v0, Lc/d/a/b/q/e/a;->e:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lc/d/a/b/q/e/a;->f:I

    move-object v1, p5

    iput-object v1, v0, Lc/d/a/b/q/e/a;->g:[Landroid/graphics/Point;

    move/from16 v1, p16

    iput-boolean v1, v0, Lc/d/a/b/q/e/a;->r:Z

    move-object v1, p6

    iput-object v1, v0, Lc/d/a/b/q/e/a;->h:Lc/d/a/b/q/e/a$f;

    move-object v1, p7

    iput-object v1, v0, Lc/d/a/b/q/e/a;->i:Lc/d/a/b/q/e/a$i;

    move-object v1, p8

    iput-object v1, v0, Lc/d/a/b/q/e/a;->j:Lc/d/a/b/q/e/a$j;

    move-object v1, p9

    iput-object v1, v0, Lc/d/a/b/q/e/a;->k:Lc/d/a/b/q/e/a$l;

    move-object v1, p10

    iput-object v1, v0, Lc/d/a/b/q/e/a;->l:Lc/d/a/b/q/e/a$k;

    move-object v1, p11

    iput-object v1, v0, Lc/d/a/b/q/e/a;->m:Lc/d/a/b/q/e/a$g;

    move-object v1, p12

    iput-object v1, v0, Lc/d/a/b/q/e/a;->n:Lc/d/a/b/q/e/a$c;

    move-object v1, p13

    iput-object v1, v0, Lc/d/a/b/q/e/a;->o:Lc/d/a/b/q/e/a$d;

    move-object/from16 v1, p14

    iput-object v1, v0, Lc/d/a/b/q/e/a;->p:Lc/d/a/b/q/e/a$e;

    return-void
.end method


# virtual methods
.method public v()Landroid/graphics/Rect;
    .locals 7
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lc/d/a/b/q/e/a;->g:[Landroid/graphics/Point;

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v4

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v6, v5, Landroid/graphics/Point;->x:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v5, Landroid/graphics/Point;->y:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget v2, p0, Lc/d/a/b/q/e/a;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 4
    iget-object v2, p0, Lc/d/a/b/q/e/a;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lc/d/a/b/q/e/a;->e:Ljava/lang/String;

    invoke-static {p1, v3, v1, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget v2, p0, Lc/d/a/b/q/e/a;->f:I

    .line 5
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x6

    .line 6
    iget-object v2, p0, Lc/d/a/b/q/e/a;->g:[Landroid/graphics/Point;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lc/d/a/b/q/e/a;->h:Lc/d/a/b/q/e/a$f;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lc/d/a/b/q/e/a;->i:Lc/d/a/b/q/e/a$i;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lc/d/a/b/q/e/a;->j:Lc/d/a/b/q/e/a$j;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lc/d/a/b/q/e/a;->k:Lc/d/a/b/q/e/a$l;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lc/d/a/b/q/e/a;->l:Lc/d/a/b/q/e/a$k;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lc/d/a/b/q/e/a;->m:Lc/d/a/b/q/e/a$g;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xd

    iget-object v2, p0, Lc/d/a/b/q/e/a;->n:Lc/d/a/b/q/e/a$c;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xe

    iget-object v2, p0, Lc/d/a/b/q/e/a;->o:Lc/d/a/b/q/e/a$d;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xf

    iget-object v2, p0, Lc/d/a/b/q/e/a;->p:Lc/d/a/b/q/e/a$e;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x10

    iget-object v1, p0, Lc/d/a/b/q/e/a;->q:[B

    invoke-static {p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P0(Landroid/os/Parcel;I[BZ)V

    const/16 p2, 0x11

    iget-boolean v1, p0, Lc/d/a/b/q/e/a;->r:Z

    .line 7
    invoke-static {p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
