.class public Lc/d/a/b/l/a;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/l/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:[[B


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:[B

.field public final e:[[B

.field public final f:[[B

.field public final g:[[B

.field public final h:[[B

.field public final i:[I

.field public final j:[[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/l/c;

    invoke-direct {v0}, Lc/d/a/b/l/c;-><init>()V

    sput-object v0, Lc/d/a/b/l/a;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lc/d/a/b/l/a;->k:[[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/l/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lc/d/a/b/l/a;->d:[B

    iput-object p3, p0, Lc/d/a/b/l/a;->e:[[B

    iput-object p4, p0, Lc/d/a/b/l/a;->f:[[B

    iput-object p5, p0, Lc/d/a/b/l/a;->g:[[B

    iput-object p6, p0, Lc/d/a/b/l/a;->h:[[B

    iput-object p7, p0, Lc/d/a/b/l/a;->i:[I

    iput-object p8, p0, Lc/d/a/b/l/a;->j:[[B

    return-void
.end method

.method public static v([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static w([[B)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[B)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static x(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    goto :goto_1

    :cond_0
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p2, v2

    if-nez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string p1, ")"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lc/d/a/b/l/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lc/d/a/b/l/a;

    iget-object v0, p0, Lc/d/a/b/l/a;->c:Ljava/lang/String;

    iget-object v2, p1, Lc/d/a/b/l/a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->d:[B

    iget-object v2, p1, Lc/d/a/b/l/a;->d:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->e:[[B

    invoke-static {v0}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lc/d/a/b/l/a;->e:[[B

    invoke-static {v2}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->f:[[B

    invoke-static {v0}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lc/d/a/b/l/a;->f:[[B

    invoke-static {v2}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->g:[[B

    invoke-static {v0}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lc/d/a/b/l/a;->g:[[B

    invoke-static {v2}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->h:[[B

    invoke-static {v0}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lc/d/a/b/l/a;->h:[[B

    invoke-static {v2}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->i:[I

    invoke-static {v0}, Lc/d/a/b/l/a;->v([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, Lc/d/a/b/l/a;->i:[I

    invoke-static {v2}, Lc/d/a/b/l/a;->v([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/l/a;->j:[[B

    invoke-static {v0}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lc/d/a/b/l/a;->j:[[B

    invoke-static {p1}, Lc/d/a/b/l/a;->w([[B)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->N(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/d/a/b/l/a;->c:Ljava/lang/String;

    const-string v3, "null"

    const-string v4, "\'"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lc/d/a/b/l/a;->d:[B

    const-string v6, "direct"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/l/a;->e:[[B

    const-string v5, "GAIA"

    invoke-static {v0, v5, v4}, Lc/d/a/b/l/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/l/a;->f:[[B

    const-string v5, "PSEUDO"

    invoke-static {v0, v5, v4}, Lc/d/a/b/l/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/l/a;->g:[[B

    const-string v5, "ALWAYS"

    invoke-static {v0, v5, v4}, Lc/d/a/b/l/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/l/a;->h:[[B

    const-string v5, "OTHER"

    invoke-static {v0, v5, v4}, Lc/d/a/b/l/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/l/a;->i:[I

    const-string v5, "weak"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_4

    aget v8, v4, v7

    if-nez v6, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/l/a;->j:[[B

    const-string v2, "directs"

    invoke-static {v0, v2, v1}, Lc/d/a/b/l/a;->x(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result p2

    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lc/d/a/b/l/a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lc/d/a/b/l/a;->d:[B

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P0(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x4

    iget-object v1, p0, Lc/d/a/b/l/a;->e:[[B

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q0(Landroid/os/Parcel;I[[BZ)V

    const/4 v0, 0x5

    iget-object v1, p0, Lc/d/a/b/l/a;->f:[[B

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q0(Landroid/os/Parcel;I[[BZ)V

    const/4 v0, 0x6

    iget-object v1, p0, Lc/d/a/b/l/a;->g:[[B

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q0(Landroid/os/Parcel;I[[BZ)V

    const/4 v0, 0x7

    iget-object v1, p0, Lc/d/a/b/l/a;->h:[[B

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q0(Landroid/os/Parcel;I[[BZ)V

    const/16 v0, 0x8

    iget-object v1, p0, Lc/d/a/b/l/a;->i:[I

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T0(Landroid/os/Parcel;I[IZ)V

    const/16 v0, 0x9

    iget-object v1, p0, Lc/d/a/b/l/a;->j:[[B

    invoke-static {p1, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q0(Landroid/os/Parcel;I[[BZ)V

    .line 3
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
