.class public final Lc/d/a/b/i/n/h;
.super Lc/d/a/b/i/n/t1;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/e3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/i/n/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/n/t1<",
        "Lc/d/a/b/i/n/h;",
        "Lc/d/a/b/i/n/h$a;",
        ">;",
        "Lc/d/a/b/i/n/e3;"
    }
.end annotation


# static fields
.field private static final zzf:Lc/d/a/b/i/n/h;

.field private static volatile zzg:Lc/d/a/b/i/n/n3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/n/n3<",
            "Lc/d/a/b/i/n/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/n/h;

    invoke-direct {v0}, Lc/d/a/b/i/n/h;-><init>()V

    sput-object v0, Lc/d/a/b/i/n/h;->zzf:Lc/d/a/b/i/n/h;

    const-class v1, Lc/d/a/b/i/n/h;

    invoke-static {v1, v0}, Lc/d/a/b/i/n/t1;->n(Ljava/lang/Class;Lc/d/a/b/i/n/t1;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/i/n/t1;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lc/d/a/b/i/n/h;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lc/d/a/b/i/n/h;->zze:Ljava/lang/String;

    return-void
.end method

.method public static p()Lc/d/a/b/i/n/h$a;
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/h;->zzf:Lc/d/a/b/i/n/h;

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1;->o()Lc/d/a/b/i/n/t1$b;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/h$a;

    return-object v0
.end method

.method public static q(Lc/d/a/b/i/n/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lc/d/a/b/i/n/h;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/d/a/b/i/n/h;->zzc:I

    iput-object p1, p0, Lc/d/a/b/i/n/h;->zzd:Ljava/lang/String;

    return-void
.end method

.method public static synthetic r()Lc/d/a/b/i/n/h;
    .locals 1

    sget-object v0, Lc/d/a/b/i/n/h;->zzf:Lc/d/a/b/i/n/h;

    return-object v0
.end method

.method public static s(Lc/d/a/b/i/n/h;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lc/d/a/b/i/n/h;->zzc:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc/d/a/b/i/n/h;->zzc:I

    iput-object p1, p0, Lc/d/a/b/i/n/h;->zze:Ljava/lang/String;

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
    sget-object p1, Lc/d/a/b/i/n/h;->zzg:Lc/d/a/b/i/n/n3;

    if-nez p1, :cond_1

    const-class p2, Lc/d/a/b/i/n/h;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lc/d/a/b/i/n/h;->zzg:Lc/d/a/b/i/n/n3;

    if-nez p1, :cond_0

    new-instance p1, Lc/d/a/b/i/n/t1$a;

    sget-object p3, Lc/d/a/b/i/n/h;->zzf:Lc/d/a/b/i/n/h;

    invoke-direct {p1, p3}, Lc/d/a/b/i/n/t1$a;-><init>(Lc/d/a/b/i/n/t1;)V

    sput-object p1, Lc/d/a/b/i/n/h;->zzg:Lc/d/a/b/i/n/n3;

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
    sget-object p1, Lc/d/a/b/i/n/h;->zzf:Lc/d/a/b/i/n/h;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzc"

    aput-object v0, p1, p2

    const-string p2, "zzd"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001"

    sget-object p3, Lc/d/a/b/i/n/h;->zzf:Lc/d/a/b/i/n/h;

    .line 1
    new-instance v0, Lc/d/a/b/i/n/q3;

    invoke-direct {v0, p3, p2, p1}, Lc/d/a/b/i/n/q3;-><init>(Lc/d/a/b/i/n/c3;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lc/d/a/b/i/n/h$a;

    invoke-direct {p1, p2}, Lc/d/a/b/i/n/h$a;-><init>(Lc/d/a/b/i/n/x;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lc/d/a/b/i/n/h;

    invoke-direct {p1}, Lc/d/a/b/i/n/h;-><init>()V

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
