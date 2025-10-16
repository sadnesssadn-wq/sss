.class public Lc/d/a/b/e/p/f;
.super Lc/d/a/b/e/p/r/a;
.source ""


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lc/d/a/b/e/p/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/IBinder;

.field public h:[Lcom/google/android/gms/common/api/Scope;

.field public i:Landroid/os/Bundle;

.field public j:Landroid/accounts/Account;

.field public k:[Lc/d/a/b/e/c;

.field public l:[Lc/d/a/b/e/c;

.field public m:Z

.field public n:I

.field public o:Z

.field public final p:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/e/p/x0;

    invoke-direct {v0}, Lc/d/a/b/e/p/x0;-><init>()V

    sput-object v0, Lc/d/a/b/e/p/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lc/d/a/b/e/c;[Lc/d/a/b/e/c;ZIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    iput p1, p0, Lc/d/a/b/e/p/f;->c:I

    iput p2, p0, Lc/d/a/b/e/p/f;->d:I

    iput p3, p0, Lc/d/a/b/e/p/f;->e:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lc/d/a/b/e/p/f;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lc/d/a/b/e/p/f;->f:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    if-eqz p5, :cond_1

    invoke-static {p5}, Lc/d/a/b/e/p/j$a;->i0(Landroid/os/IBinder;)Lc/d/a/b/e/p/j;

    move-result-object p2

    .line 1
    sget p3, Lc/d/a/b/e/p/a;->c:I

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_0
    invoke-interface {p2}, Lc/d/a/b/e/p/j;->zza()Landroid/accounts/Account;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p5, "Remote account accessor probably died"

    invoke-static {p2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2
    :cond_1
    :goto_3
    iput-object p1, p0, Lc/d/a/b/e/p/f;->j:Landroid/accounts/Account;

    goto :goto_4

    :cond_2
    iput-object p5, p0, Lc/d/a/b/e/p/f;->g:Landroid/os/IBinder;

    iput-object p8, p0, Lc/d/a/b/e/p/f;->j:Landroid/accounts/Account;

    :goto_4
    iput-object p6, p0, Lc/d/a/b/e/p/f;->h:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lc/d/a/b/e/p/f;->i:Landroid/os/Bundle;

    iput-object p9, p0, Lc/d/a/b/e/p/f;->k:[Lc/d/a/b/e/c;

    iput-object p10, p0, Lc/d/a/b/e/p/f;->l:[Lc/d/a/b/e/c;

    iput-boolean p11, p0, Lc/d/a/b/e/p/f;->m:Z

    iput p12, p0, Lc/d/a/b/e/p/f;->n:I

    iput-boolean p13, p0, Lc/d/a/b/e/p/f;->o:Z

    iput-object p14, p0, Lc/d/a/b/e/p/f;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/e/p/r/a;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lc/d/a/b/e/p/f;->c:I

    sget v0, Lc/d/a/b/e/e;->a:I

    iput v0, p0, Lc/d/a/b/e/p/f;->e:I

    iput p1, p0, Lc/d/a/b/e/p/f;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/d/a/b/e/p/f;->m:Z

    iput-object p2, p0, Lc/d/a/b/e/p/f;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

    const/4 v1, 0x1

    .line 2
    iget v2, p0, Lc/d/a/b/e/p/f;->c:I

    const/4 v3, 0x4

    .line 3
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x2

    .line 4
    iget v2, p0, Lc/d/a/b/e/p/f;->d:I

    .line 5
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x3

    .line 6
    iget v2, p0, Lc/d/a/b/e/p/f;->e:I

    .line 7
    invoke-static {p1, v1, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v1, p0, Lc/d/a/b/e/p/f;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v3, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v4, p0, Lc/d/a/b/e/p/f;->g:Landroid/os/IBinder;

    invoke-static {p1, v1, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->S0(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    iget-object v4, p0, Lc/d/a/b/e/p/f;->h:[Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    iget-object v4, p0, Lc/d/a/b/e/p/f;->i:Landroid/os/Bundle;

    invoke-static {p1, v1, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->O0(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x8

    iget-object v4, p0, Lc/d/a/b/e/p/f;->j:Landroid/accounts/Account;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->U0(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget-object v4, p0, Lc/d/a/b/e/p/f;->k:[Lc/d/a/b/e/c;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v4, p0, Lc/d/a/b/e/p/f;->l:[Lc/d/a/b/e/c;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->X0(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Lc/d/a/b/e/p/f;->m:Z

    .line 9
    invoke-static {p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xd

    .line 10
    iget v1, p0, Lc/d/a/b/e/p/f;->n:I

    .line 11
    invoke-static {p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xe

    .line 12
    iget-boolean v1, p0, Lc/d/a/b/e/p/f;->o:Z

    .line 13
    invoke-static {p1, p2, v3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->K1(Landroid/os/Parcel;II)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xf

    .line 14
    iget-object v1, p0, Lc/d/a/b/e/p/f;->p:Ljava/lang/String;

    invoke-static {p1, p2, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->V0(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 15
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->Q1(Landroid/os/Parcel;I)V

    return-void
.end method
