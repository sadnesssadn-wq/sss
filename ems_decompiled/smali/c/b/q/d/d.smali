.class public Lc/b/q/d/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/q/d/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/lang/String;

.field private collect_money:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "cod"
    .end annotation
.end field

.field private info:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "notes"
    .end annotation
.end field

.field private latitude:D
    .annotation runtime Lc/d/c/v/c;
        alternate = {
            "latitude"
        }
        value = "to_latitude"
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lc/d/c/v/c;
        alternate = {
            "longitude"
        }
        value = "to_longitude"
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "phone_no"
    .end annotation
.end field

.field private status_name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/q/d/d$a;

    invoke-direct {v0}, Lc/b/q/d/d$a;-><init>()V

    sput-object v0, Lc/b/q/d/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/d;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/d;->status_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/q/d/d;->latitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/q/d/d;->longitude:D

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/d;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/d;->status_name:Ljava/lang/String;

    return-object v0
.end method

.method public l()Z
    .locals 8

    iget-object v0, p0, Lc/b/q/d/d;->name:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    iput-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->q(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3

    const-wide v6, 0x408f400000000000L    # 1000.0

    rem-double v6, v2, v6

    cmpl-double v0, v6, v4

    if-eqz v0, :cond_3

    .line 1
    sget-object v0, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    const v2, 0x7f1002d1

    .line 2
    :goto_0
    invoke-static {v0, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return v1

    :cond_3
    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    const-wide v4, 0x40c3880000000000L    # 10000.0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_5

    .line 3
    :cond_4
    sget-object v0, Lcom/emsportal/AppController;->c:Lcom/emsportal/AppController;

    const v2, 0x7f1002d0

    goto :goto_0

    .line 4
    :cond_5
    :goto_1
    iget-object v0, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    return-void
.end method

.method public r(D)V
    .locals 0

    iput-wide p1, p0, Lc/b/q/d/d;->latitude:D

    return-void
.end method

.method public u(D)V
    .locals 0

    iput-wide p1, p0, Lc/b/q/d/d;->longitude:D

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/d;->name:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lc/b/q/d/d;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/d;->phone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/d;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/d;->collect_money:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/d;->info:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/d;->status_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lc/b/q/d/d;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lc/b/q/d/d;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
