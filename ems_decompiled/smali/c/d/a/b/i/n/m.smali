.class public final Lc/d/a/b/i/n/m;
.super Lc/d/a/b/i/n/t1;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/e3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/i/n/m$b;,
        Lc/d/a/b/i/n/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/n/t1<",
        "Lc/d/a/b/i/n/m;",
        "Lc/d/a/b/i/n/m$b;",
        ">;",
        "Lc/d/a/b/i/n/e3;"
    }
.end annotation


# static fields
.field private static final zzl:Lc/d/a/b/i/n/m;

.field private static volatile zzm:Lc/d/a/b/i/n/n3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/n3<",
            "Lc/d/a/b/i/n/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lc/d/a/b/i/n/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/c2<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:J

.field private zzk:Lc/d/a/b/i/n/c2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/c2<",
            "Lc/d/a/b/i/n/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/n/m;

    invoke-direct {v0}, Lc/d/a/b/i/n/m;-><init>()V

    sput-object v0, Lc/d/a/b/i/n/m;->zzl:Lc/d/a/b/i/n/m;

    const-class v1, Lc/d/a/b/i/n/m;

    invoke-static {v1, v0}, Lc/d/a/b/i/n/t1;->n(Ljava/lang/Class;Lc/d/a/b/i/n/t1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lc/d/a/b/i/n/t1;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc/d/a/b/i/n/m;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lc/d/a/b/i/n/m;->zze:Ljava/lang/String;

    .line 1
    sget-object v1, Lc/d/a/b/i/n/r3;->f:Lc/d/a/b/i/n/r3;

    .line 2
    iput-object v1, p0, Lc/d/a/b/i/n/m;->zzf:Lc/d/a/b/i/n/c2;

    iput-object v0, p0, Lc/d/a/b/i/n/m;->zzh:Ljava/lang/String;

    iput-object v1, p0, Lc/d/a/b/i/n/m;->zzk:Lc/d/a/b/i/n/c2;

    return-void
.end method

.method public static p()Lc/d/a/b/i/n/m$b;
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/m;->zzl:Lc/d/a/b/i/n/m;

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1;->o()Lc/d/a/b/i/n/t1$b;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/m$b;

    return-object v0
.end method

.method public static q(Lc/d/a/b/i/n/m;J)V
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/i/n/m;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lc/d/a/b/i/n/m;->zzc:I

    iput-wide p1, p0, Lc/d/a/b/i/n/m;->zzi:J

    return-void
.end method

.method public static r(Lc/d/a/b/i/n/m;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/i/n/m;->zzk:Lc/d/a/b/i/n/c2;

    invoke-interface {v0}, Lc/d/a/b/i/n/c2;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lc/d/a/b/i/n/c2;->a(I)Lc/d/a/b/i/n/c2;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lc/d/a/b/i/n/m;->zzk:Lc/d/a/b/i/n/c2;

    :cond_1
    iget-object p0, p0, Lc/d/a/b/i/n/m;->zzk:Lc/d/a/b/i/n/c2;

    invoke-static {p1, p0}, Lc/d/a/b/i/n/k0;->f(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static s(Lc/d/a/b/i/n/m;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lc/d/a/b/i/n/m;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/i/n/m;->zzc:I

    iput-object p1, p0, Lc/d/a/b/i/n/m;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic t()Lc/d/a/b/i/n/m;
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/m;->zzl:Lc/d/a/b/i/n/m;

    return-object v0
.end method

.method public static u(Lc/d/a/b/i/n/m;J)V
    .locals 1

    .line 1
    iget v0, p0, Lc/d/a/b/i/n/m;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lc/d/a/b/i/n/m;->zzc:I

    iput-wide p1, p0, Lc/d/a/b/i/n/m;->zzj:J

    return-void
.end method


# virtual methods
.method public final l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lc/d/a/b/i/n/x;->a:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lc/d/a/b/i/n/m;->zzm:Lc/d/a/b/i/n/n3;

    if-nez p1, :cond_1

    const-class p2, Lc/d/a/b/i/n/m;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lc/d/a/b/i/n/m;->zzm:Lc/d/a/b/i/n/n3;

    if-nez p1, :cond_0

    new-instance p1, Lc/d/a/b/i/n/t1$a;

    sget-object p3, Lc/d/a/b/i/n/m;->zzl:Lc/d/a/b/i/n/m;

    invoke-direct {p1, p3}, Lc/d/a/b/i/n/t1$a;-><init>(Lc/d/a/b/i/n/t1;)V

    sput-object p1, Lc/d/a/b/i/n/m;->zzm:Lc/d/a/b/i/n/n3;

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lc/d/a/b/i/n/m;->zzl:Lc/d/a/b/i/n/m;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    sget-object p3, Lc/d/a/b/i/n/a0;->a:Lc/d/a/b/i/n/y1;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lc/d/a/b/i/n/u;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u001a\u0004\u100c\u0002\u0005\u1008\u0003\u0006\u1002\u0004\u0007\u1002\u0005\u0008\u001b"

    sget-object p3, Lc/d/a/b/i/n/m;->zzl:Lc/d/a/b/i/n/m;

    .line 1
    new-instance v0, Lc/d/a/b/i/n/q3;

    invoke-direct {v0, p3, p2, p1}, Lc/d/a/b/i/n/q3;-><init>(Lc/d/a/b/i/n/c3;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lc/d/a/b/i/n/m$b;

    invoke-direct {p1, p2}, Lc/d/a/b/i/n/m$b;-><init>(Lc/d/a/b/i/n/x;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lc/d/a/b/i/n/m;

    invoke-direct {p1}, Lc/d/a/b/i/n/m;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
