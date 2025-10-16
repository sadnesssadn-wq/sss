.class public final Lc/d/a/b/i/e/p4;
.super Lc/d/a/b/i/e/y0;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/i/e/p4$a;,
        Lc/d/a/b/i/e/p4$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/i/e/y0<",
        "Lc/d/a/b/i/e/p4;",
        "Lc/d/a/b/i/e/p4$a;",
        ">;",
        "Lc/d/a/b/i/e/f2;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lc/d/a/b/i/e/m2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/m2<",
            "Lc/d/a/b/i/e/p4;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbir:Lc/d/a/b/i/e/p4;


# instance fields
.field private zzbiq:Lc/d/a/b/i/e/d1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/i/e/d1<",
            "Lc/d/a/b/i/e/p4$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/a/b/i/e/p4;

    invoke-direct {v0}, Lc/d/a/b/i/e/p4;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    const-class v1, Lc/d/a/b/i/e/p4;

    invoke-static {v1, v0}, Lc/d/a/b/i/e/y0;->m(Ljava/lang/Class;Lc/d/a/b/i/e/y0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/b/i/e/y0;-><init>()V

    .line 1
    sget-object v0, Lc/d/a/b/i/e/p2;->e:Lc/d/a/b/i/e/p2;

    .line 2
    iput-object v0, p0, Lc/d/a/b/i/e/p4;->zzbiq:Lc/d/a/b/i/e/d1;

    return-void
.end method

.method public static p()Lc/d/a/b/i/e/p4;
    .locals 1

    sget-object v0, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    return-object v0
.end method

.method public static synthetic q()Lc/d/a/b/i/e/p4;
    .locals 1

    sget-object v0, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    return-object v0
.end method

.method public static r([B)Lc/d/a/b/i/e/p4;
    .locals 9

    sget-object v0, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lc/d/a/b/i/e/p4;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/y0;

    .line 2
    :try_start_0
    sget-object v1, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    .line 3
    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object v3

    const/4 v6, 0x0

    array-length v7, p0

    new-instance v8, Lc/d/a/b/i/e/u;

    invoke-direct {v8}, Lc/d/a/b/i/e/u;-><init>()V

    move-object v4, v0

    move-object v5, p0

    invoke-interface/range {v3 .. v8}, Lc/d/a/b/i/e/t2;->c(Ljava/lang/Object;[BIILc/d/a/b/i/e/u;)V

    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object p0

    invoke-interface {p0, v0}, Lc/d/a/b/i/e/t2;->zzc(Ljava/lang/Object;)V

    iget p0, v0, Lc/d/a/b/i/e/p;->zzex:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0, v2, v2}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-ne v3, p0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object p0

    invoke-interface {p0, v0}, Lc/d/a/b/i/e/t2;->g(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x2

    if-eqz p0, :cond_2

    move-object v3, v0

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz p0, :cond_3

    .line 5
    check-cast v0, Lc/d/a/b/i/e/p4;

    return-object v0

    .line 6
    :cond_3
    new-instance p0, Lc/d/a/b/i/e/f3;

    invoke-direct {p0}, Lc/d/a/b/i/e/f3;-><init>()V

    new-instance v0, Lc/d/a/b/i/e/e1;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/e1;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {}, Lc/d/a/b/i/e/e1;->a()Lc/d/a/b/i/e/e1;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lc/d/a/b/i/e/e1;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lc/d/a/b/i/e/e1;

    throw p0

    :cond_5
    new-instance v0, Lc/d/a/b/i/e/e1;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/e1;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lc/d/a/b/i/e/q4;->a:[I

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
    sget-object p1, Lc/d/a/b/i/e/p4;->zzbg:Lc/d/a/b/i/e/m2;

    if-nez p1, :cond_1

    const-class p2, Lc/d/a/b/i/e/p4;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lc/d/a/b/i/e/p4;->zzbg:Lc/d/a/b/i/e/m2;

    if-nez p1, :cond_0

    new-instance p1, Lc/d/a/b/i/e/y0$b;

    sget-object p3, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    invoke-direct {p1, p3}, Lc/d/a/b/i/e/y0$b;-><init>(Lc/d/a/b/i/e/y0;)V

    sput-object p1, Lc/d/a/b/i/e/p4;->zzbg:Lc/d/a/b/i/e/m2;

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
    sget-object p1, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbiq"

    aput-object v0, p1, p2

    const-class p2, Lc/d/a/b/i/e/p4$b;

    aput-object p2, p1, p3

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b"

    sget-object p3, Lc/d/a/b/i/e/p4;->zzbir:Lc/d/a/b/i/e/p4;

    .line 1
    new-instance v0, Lc/d/a/b/i/e/q2;

    invoke-direct {v0, p3, p2, p1}, Lc/d/a/b/i/e/q2;-><init>(Lc/d/a/b/i/e/d2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 2
    :pswitch_5
    new-instance p1, Lc/d/a/b/i/e/p4$a;

    invoke-direct {p1, p2}, Lc/d/a/b/i/e/p4$a;-><init>(Lc/d/a/b/i/e/q4;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lc/d/a/b/i/e/p4;

    invoke-direct {p1}, Lc/d/a/b/i/e/p4;-><init>()V

    return-object p1

    nop

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

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/a/b/i/e/p4$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/i/e/p4;->zzbiq:Lc/d/a/b/i/e/d1;

    return-object v0
.end method
