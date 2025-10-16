.class public Lc/b/r/c/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/r/c/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation

    .annotation runtime Lc/d/c/v/c;
        value = "description"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation

    .annotation runtime Lc/d/c/v/c;
        value = "description_eng"
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation

    .annotation runtime Lc/d/c/v/c;
        value = "amount"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation

    .annotation runtime Lc/d/c/v/c;
        value = "currency_code"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation

    .annotation runtime Lc/d/c/v/c;
        value = "hscode"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/a;
    .end annotation

    .annotation runtime Lc/d/c/v/c;
        value = "country_of_manufacture"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/r/c/f$a;

    invoke-direct {v0}, Lc/b/r/c/f$a;-><init>()V

    sput-object v0, Lc/b/r/c/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/r/c/f;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/r/c/f;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/c/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lc/b/r/c/f;->d:Ljava/lang/String;

    iput-object p3, p0, Lc/b/r/c/f;->e:Ljava/lang/String;

    iput-object p4, p0, Lc/b/r/c/f;->f:Ljava/lang/String;

    iput-object p5, p0, Lc/b/r/c/f;->g:Ljava/lang/String;

    iput-object p6, p0, Lc/b/r/c/f;->h:Ljava/lang/String;

    iput-object p8, p0, Lc/b/r/c/f;->k:Ljava/lang/String;

    iput-object p7, p0, Lc/b/r/c/f;->j:Ljava/lang/String;

    const-string p1, "USD"

    iput-object p1, p0, Lc/b/r/c/f;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/r/c/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/c/f;->k:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/c/f;->d:Ljava/lang/String;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/c/f;->c:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/c/f;->j:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/c/f;->g:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lc/b/r/c/f;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/r/c/f;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
