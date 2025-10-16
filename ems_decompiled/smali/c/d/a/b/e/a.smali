.class public final Lc/d/a/b/e/a;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lc/d/a/b/e/a;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Landroid/app/PendingIntent;

.field public final f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/d/a/b/e/a;-><init>(I)V

    sput-object v0, Lc/d/a/b/e/a;->g:Lc/d/a/b/e/a;

    new-instance v0, Lc/d/a/b/e/v;

    invoke-direct {v0}, Lc/d/a/b/e/v;-><init>()V

    sput-object v0, Lc/d/a/b/e/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/d/a/b/e/a;->c:I

    iput p1, p0, Lc/d/a/b/e/a;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    iput-object p1, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/e/a;->c:I

    iput p2, p0, Lc/d/a/b/e/a;->d:I

    iput-object p3, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    iput-object p4, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lc/d/a/b/e/a;->c:I

    iput p1, p0, Lc/d/a/b/e/a;->d:I

    iput-object p2, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static x(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x63

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5dc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "API_DISABLED"

    return-object p0

    :pswitch_1
    const-string p0, "RESOLUTION_ACTIVITY_NOT_FOUND"

    return-object p0

    :pswitch_2
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_3
    const-string p0, "RESTRICTED_PROFILE"

    return-object p0

    :pswitch_4
    const-string p0, "SERVICE_MISSING_PERMISSION"

    return-object p0

    :pswitch_5
    const-string p0, "SERVICE_UPDATING"

    return-object p0

    :pswitch_6
    const-string p0, "SIGN_IN_FAILED"

    return-object p0

    :pswitch_7
    const-string p0, "API_UNAVAILABLE"

    return-object p0

    :pswitch_8
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_9
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_a
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_b
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :pswitch_c
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_d
    const-string p0, "SERVICE_INVALID"

    return-object p0

    :pswitch_e
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_f
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_10
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_11
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_12
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_13
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_14
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_15
    const-string p0, "SERVICE_MISSING"

    return-object p0

    :pswitch_16
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_17
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    return-object p0

    :cond_1
    const-string p0, "UNFINISHED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc/d/a/b/e/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc/d/a/b/e/a;

    iget v1, p0, Lc/d/a/b/e/a;->d:I

    iget v3, p1, Lc/d/a/b/e/a;->d:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    iget-object v3, p1, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    iget-object p1, p1, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->M(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lc/d/a/b/e/a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    new-instance v0, Lc/d/a/b/e/p/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d/a/b/e/p/n;-><init>(Ljava/lang/Object;Lc/d/a/b/e/p/h1;)V

    .line 2
    iget v1, p0, Lc/d/a/b/e/a;->d:I

    invoke-static {v1}, Lc/d/a/b/e/a;->x(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    iget-object v1, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    iget-object v1, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lc/d/a/b/e/p/n;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/d/a/b/e/p/n;

    invoke-virtual {v0}, Lc/d/a/b/e/p/n;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget v0, p0, Lc/d/a/b/e/a;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Lc/d/a/b/e/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i1(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget v1, p0, Lc/d/a/b/e/a;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget v1, p0, Lc/d/a/b/e/a;->d:I

    const/4 v2, 0x2

    .line 5
    invoke-static {p1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v1, p0, Lc/d/a/b/e/a;->e:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    const/4 v4, 0x0

    .line 7
    invoke-static {p1, v2, v1, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    iget-object p2, p0, Lc/d/a/b/e/a;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1, v3, p2, v4}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
