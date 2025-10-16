.class public final Lc/d/a/b/c/f;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/c/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Lc/d/a/b/i/e/e5;

.field public d:[B

.field public e:[I

.field public f:[Ljava/lang/String;

.field public g:[I

.field public h:[[B

.field public i:[Lc/d/a/b/l/a;

.field public j:Z

.field public final k:Lc/d/a/b/i/e/u4;

.field public final l:Lc/d/a/b/c/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/c/g;

    invoke-direct {v0}, Lc/d/a/b/c/g;-><init>()V

    sput-object v0, Lc/d/a/b/c/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/e/e5;Lc/d/a/b/i/e/u4;Lc/d/a/b/c/a$c;[I[IZ)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    iput-object p2, p0, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    iput-object p1, p0, Lc/d/a/b/c/f;->e:[I

    iput-object p1, p0, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    iput-object p1, p0, Lc/d/a/b/c/f;->g:[I

    iput-object p1, p0, Lc/d/a/b/c/f;->h:[[B

    iput-object p1, p0, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    iput-boolean p6, p0, Lc/d/a/b/c/f;->j:Z

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/i/e/e5;[B[I[Ljava/lang/String;[I[[BZ[Lc/d/a/b/l/a;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput-object p1, p0, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    iput-object p2, p0, Lc/d/a/b/c/f;->d:[B

    iput-object p3, p0, Lc/d/a/b/c/f;->e:[I

    iput-object p4, p0, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    iput-object p1, p0, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    iput-object p5, p0, Lc/d/a/b/c/f;->g:[I

    iput-object p6, p0, Lc/d/a/b/c/f;->h:[[B

    iput-object p8, p0, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    iput-boolean p7, p0, Lc/d/a/b/c/f;->j:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/b/c/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/d/a/b/c/f;

    iget-object v1, p0, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    iget-object v3, p1, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->d:[B

    iget-object v3, p1, Lc/d/a/b/c/f;->d:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->e:[I

    iget-object v3, p1, Lc/d/a/b/c/f;->e:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    iget-object v3, p1, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    iget-object v3, p1, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    iget-object v3, p1, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->g:[I

    iget-object v3, p1, Lc/d/a/b/c/f;->g:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->h:[[B

    iget-object v3, p1, Lc/d/a/b/c/f;->h:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    iget-object v3, p1, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lc/d/a/b/c/f;->j:Z

    iget-boolean p1, p1, Lc/d/a/b/c/f;->j:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->d:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->e:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->g:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->h:[[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lc/d/a/b/c/f;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->d:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lc/d/a/b/c/f;->d:[B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->e:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->g:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->h:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/d/a/b/c/f;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lc/d/a/b/c/f;->c:Lc/d/a/b/i/e/e5;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lc/d/a/b/c/f;->d:[B

    invoke-static {p1, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->P0(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lc/d/a/b/c/f;->e:[I

    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T0(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x5

    iget-object v4, p0, Lc/d/a/b/c/f;->f:[Ljava/lang/String;

    invoke-static {p1, v1, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->W0(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v4, p0, Lc/d/a/b/c/f;->g:[I

    invoke-static {p1, v1, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->T0(Landroid/os/Parcel;I[IZ)V

    const/4 v1, 0x7

    iget-object v4, p0, Lc/d/a/b/c/f;->h:[[B

    invoke-static {p1, v1, v4, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q0(Landroid/os/Parcel;I[[BZ)V

    const/16 v1, 0x8

    iget-boolean v4, p0, Lc/d/a/b/c/f;->j:Z

    .line 3
    invoke-static {p1, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x9

    .line 4
    iget-object v2, p0, Lc/d/a/b/c/f;->i:[Lc/d/a/b/l/a;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
