.class public Lc/b/m/d/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/m/d/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dateTimeOption:Lcom/emsportal/dialog/DateTimeOption;

.field private day:I

.field private endTime:Ljava/lang/String;

.field private isSelected:Z

.field private month:I

.field private orderBy:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private statusCod:Ljava/lang/String;

.field private tDay:I

.field private tMonth:I

.field private tYear:I

.field private title:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private year:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/m/d/m$a;

    invoke-direct {v0}, Lc/b/m/d/m$a;-><init>()V

    sput-object v0, Lc/b/m/d/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/m;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/m;->value:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lc/b/m/d/m;->isSelected:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/m;->startTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/d/m;->endTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/d/m;->statusCod:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/d/m;->title:Ljava/lang/String;

    iput-object p2, p0, Lc/b/m/d/m;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/d/m;->startTime:Ljava/lang/String;

    iput-object p2, p0, Lc/b/m/d/m;->endTime:Ljava/lang/String;

    iput-object p3, p0, Lc/b/m/d/m;->dateTimeOption:Lcom/emsportal/dialog/DateTimeOption;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/d/m;->title:Ljava/lang/String;

    iput-object p2, p0, Lc/b/m/d/m;->startTime:Ljava/lang/String;

    iput-object p3, p0, Lc/b/m/d/m;->endTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/m;->orderBy:Ljava/lang/String;

    return-void
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/b/m/d/m;->isSelected:Z

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/m;->startTime:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/m;->statusCod:Ljava/lang/String;

    return-void
.end method

.method public E(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/m;->year:I

    return-void
.end method

.method public F(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/m;->tDay:I

    return-void
.end method

.method public G(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/m;->tMonth:I

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/m;->tYear:I

    return-void
.end method

.method public a()Lcom/emsportal/dialog/DateTimeOption;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->dateTimeOption:Lcom/emsportal/dialog/DateTimeOption;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lc/b/m/d/m;->day:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lc/b/m/d/m;->month:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->orderBy:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->statusCod:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->title:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/m;->value:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lc/b/m/d/m;->year:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lc/b/m/d/m;->tDay:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lc/b/m/d/m;->tMonth:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lc/b/m/d/m;->tYear:I

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lc/b/m/d/m;->isSelected:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lc/b/m/d/m;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/m;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lc/b/m/d/m;->isSelected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lc/b/m/d/m;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/m;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/m/d/m;->statusCod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/m;->day:I

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/d/m;->endTime:Ljava/lang/String;

    return-void
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lc/b/m/d/m;->month:I

    return-void
.end method
