.class public Lc/b/q/d/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/b/q/d/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coupon_code:Ljava/lang/String;

.field private details:Ljava/lang/String;

.field private from_address:Ljava/lang/String;

.field private is_tsp:I

.field private latitude:D
    .annotation runtime Lc/d/c/v/c;
        value = "from_latitude"
    .end annotation
.end field

.field private listStopPoints:Ljava/util/List;
    .annotation runtime Lc/d/c/v/c;
        value = "deliveries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/q/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private longitude:D
    .annotation runtime Lc/d/c/v/c;
        value = "from_longitude"
    .end annotation
.end field

.field private payment_mode:Ljava/lang/String;

.field private phone_no:Ljava/lang/String;

.field private sender_name:Ljava/lang/String;
    .annotation runtime Lc/d/c/v/c;
        value = "name"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/b/q/d/a$a;

    invoke-direct {v0}, Lc/b/q/d/a$a;-><init>()V

    sput-object v0, Lc/b/q/d/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/b/q/d/a;->is_tsp:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/b/q/d/a;->is_tsp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->details:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->from_address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->phone_no:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->sender_name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->payment_mode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->coupon_code:Ljava/lang/String;

    sget-object v0, Lc/b/q/d/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lc/b/q/d/a;->listStopPoints:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lc/b/q/d/a;->is_tsp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/q/d/a;->latitude:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lc/b/q/d/a;->longitude:D

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lc/b/q/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/b/q/d/d;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lc/b/q/d/a;"
        }
    .end annotation

    new-instance v0, Lc/b/q/d/a;

    invoke-direct {v0}, Lc/b/q/d/a;-><init>()V

    iput-object p0, v0, Lc/b/q/d/a;->details:Ljava/lang/String;

    iput-object p1, v0, Lc/b/q/d/a;->from_address:Ljava/lang/String;

    iput-object p2, v0, Lc/b/q/d/a;->phone_no:Ljava/lang/String;

    iput-object p3, v0, Lc/b/q/d/a;->sender_name:Ljava/lang/String;

    iput-object p4, v0, Lc/b/q/d/a;->payment_mode:Ljava/lang/String;

    iput-object p5, v0, Lc/b/q/d/a;->listStopPoints:Ljava/util/List;

    iput-object p6, v0, Lc/b/q/d/a;->coupon_code:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/a;->details:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/q/d/a;->payment_mode:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/a;->details:Ljava/lang/String;

    return-void
.end method

.method public h(D)V
    .locals 0

    iput-wide p1, p0, Lc/b/q/d/a;->latitude:D

    return-void
.end method

.method public i(D)V
    .locals 0

    iput-wide p1, p0, Lc/b/q/d/a;->longitude:D

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/d/a;->payment_mode:Ljava/lang/String;

    return-void
.end method

.method public n()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lc/d/c/e;

    invoke-direct {v0}, Lc/d/c/e;-><init>()V

    invoke-virtual {v0}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lc/b/q/d/a;->details:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/a;->from_address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/a;->phone_no:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/a;->sender_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/a;->payment_mode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/a;->coupon_code:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lc/b/q/d/a;->listStopPoints:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lc/b/q/d/a;->is_tsp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lc/b/q/d/a;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lc/b/q/d/a;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
