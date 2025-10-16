.class public final Lc/d/a/b/i/e/k4;
.super Lc/d/a/b/i/e/y0;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/i/e/k4$a;,
        Lc/d/a/b/i/e/k4$b;,
        Lc/d/a/b/i/e/k4$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/e/y0<",
        "Lc/d/a/b/i/e/k4;",
        "Lc/d/a/b/i/e/k4$a;",
        ">;",
        "Lc/d/a/b/i/e/f2;"
    }
.end annotation


# static fields
.field private static final zzbfc:Lc/d/a/b/i/e/k4;

.field private static volatile zzbg:Lc/d/a/b/i/e/m2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/m2<",
            "Lc/d/a/b/i/e/k4;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzbb:I

.field private zzbfa:I

.field private zzbfb:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/e/k4;

    invoke-direct {v0}, Lc/d/a/b/i/e/k4;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/k4;->zzbfc:Lc/d/a/b/i/e/k4;

    const-class v1, Lc/d/a/b/i/e/k4;

    invoke-static {v1, v0}, Lc/d/a/b/i/e/y0;->m(Ljava/lang/Class;Lc/d/a/b/i/e/y0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/i/e/y0;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/d/a/b/i/e/k4;->zzbfa:I

    return-void
.end method

.method public static synthetic o()Lc/d/a/b/i/e/k4;
    .locals 1

    sget-object v0, Lc/d/a/b/i/e/k4;->zzbfc:Lc/d/a/b/i/e/k4;

    return-object v0
.end method


# virtual methods
.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lc/d/a/b/i/e/m4;->a:[I

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
    sget-object p1, Lc/d/a/b/i/e/k4;->zzbg:Lc/d/a/b/i/e/m2;

    if-nez p1, :cond_1

    const-class p2, Lc/d/a/b/i/e/k4;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lc/d/a/b/i/e/k4;->zzbg:Lc/d/a/b/i/e/m2;

    if-nez p1, :cond_0

    new-instance p1, Lc/d/a/b/i/e/y0$b;

    sget-object p3, Lc/d/a/b/i/e/k4;->zzbfc:Lc/d/a/b/i/e/k4;

    invoke-direct {p1, p3}, Lc/d/a/b/i/e/y0$b;-><init>(Lc/d/a/b/i/e/y0;)V

    sput-object p1, Lc/d/a/b/i/e/k4;->zzbg:Lc/d/a/b/i/e/m2;

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
    sget-object p1, Lc/d/a/b/i/e/k4;->zzbfc:Lc/d/a/b/i/e/k4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzbfa"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    sget-object p3, Lc/d/a/b/i/e/k4$c;->w:Lc/d/a/b/i/e/c1;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbfb"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    sget-object p3, Lc/d/a/b/i/e/k4$b;->y:Lc/d/a/b/i/e/c1;

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0003\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001"

    sget-object p3, Lc/d/a/b/i/e/k4;->zzbfc:Lc/d/a/b/i/e/k4;

    .line 1
    new-instance v0, Lc/d/a/b/i/e/q2;

    invoke-direct {v0, p3, p2, p1}, Lc/d/a/b/i/e/q2;-><init>(Lc/d/a/b/i/e/d2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lc/d/a/b/i/e/k4$a;

    invoke-direct {p1, p2}, Lc/d/a/b/i/e/k4$a;-><init>(Lc/d/a/b/i/e/m4;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lc/d/a/b/i/e/k4;

    invoke-direct {p1}, Lc/d/a/b/i/e/k4;-><init>()V

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
