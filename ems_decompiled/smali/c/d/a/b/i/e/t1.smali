.class public final Lc/d/a/b/i/e/t1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/u2;


# static fields
.field public static final b:Lc/d/a/b/i/e/c2;


# instance fields
.field public final a:Lc/d/a/b/i/e/c2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/e/u1;

    invoke-direct {v0}, Lc/d/a/b/i/e/u1;-><init>()V

    sput-object v0, Lc/d/a/b/i/e/t1;->b:Lc/d/a/b/i/e/c2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lc/d/a/b/i/e/v1;

    const/4 v1, 0x2

    new-array v1, v1, [Lc/d/a/b/i/e/c2;

    sget-object v2, Lc/d/a/b/i/e/x0;->a:Lc/d/a/b/i/e/x0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/i/e/c2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lc/d/a/b/i/e/t1;->b:Lc/d/a/b/i/e/c2;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2
    invoke-direct {v0, v1}, Lc/d/a/b/i/e/v1;-><init>([Lc/d/a/b/i/e/c2;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v1, Lc/d/a/b/i/e/a1;->a:Ljava/nio/charset/Charset;

    .line 5
    iput-object v0, p0, Lc/d/a/b/i/e/t1;->a:Lc/d/a/b/i/e/c2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lc/d/a/b/i/e/t2;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc/d/a/b/i/e/t2<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lc/d/a/b/i/e/y0;

    sget-object v1, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lc/d/a/b/i/e/v2;->a:Ljava/lang/Class;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iget-object v1, p0, Lc/d/a/b/i/e/t1;->a:Lc/d/a/b/i/e/c2;

    invoke-interface {v1, p1}, Lc/d/a/b/i/e/c2;->zzb(Ljava/lang/Class;)Lc/d/a/b/i/e/b2;

    move-result-object v2

    invoke-interface {v2}, Lc/d/a/b/i/e/b2;->b()Z

    move-result v1

    const-string v3, "Protobuf runtime is not correctly loaded."

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lc/d/a/b/i/e/v2;->d:Lc/d/a/b/i/e/g3;

    .line 4
    sget-object v0, Lc/d/a/b/i/e/o0;->a:Lc/d/a/b/i/e/l0;

    sget-object v0, Lc/d/a/b/i/e/o0;->a:Lc/d/a/b/i/e/l0;

    invoke-interface {v2}, Lc/d/a/b/i/e/b2;->c()Lc/d/a/b/i/e/d2;

    move-result-object v1

    .line 5
    new-instance v2, Lc/d/a/b/i/e/h2;

    invoke-direct {v2, p1, v0, v1}, Lc/d/a/b/i/e/h2;-><init>(Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/d2;)V

    return-object v2

    .line 6
    :cond_2
    sget-object p1, Lc/d/a/b/i/e/v2;->b:Lc/d/a/b/i/e/g3;

    .line 7
    sget-object v0, Lc/d/a/b/i/e/o0;->b:Lc/d/a/b/i/e/l0;

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v2}, Lc/d/a/b/i/e/b2;->c()Lc/d/a/b/i/e/d2;

    move-result-object v1

    .line 9
    new-instance v2, Lc/d/a/b/i/e/h2;

    invoke-direct {v2, p1, v0, v1}, Lc/d/a/b/i/e/h2;-><init>(Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/d2;)V

    return-object v2

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7

    .line 11
    invoke-interface {v2}, Lc/d/a/b/i/e/b2;->a()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_6

    .line 12
    sget-object v3, Lc/d/a/b/i/e/l2;->b:Lc/d/a/b/i/e/j2;

    .line 13
    sget-object v4, Lc/d/a/b/i/e/o1;->b:Lc/d/a/b/i/e/o1;

    .line 14
    sget-object v5, Lc/d/a/b/i/e/v2;->d:Lc/d/a/b/i/e/g3;

    .line 15
    sget-object p1, Lc/d/a/b/i/e/o0;->a:Lc/d/a/b/i/e/l0;

    sget-object v6, Lc/d/a/b/i/e/o0;->a:Lc/d/a/b/i/e/l0;

    .line 16
    :goto_1
    sget-object v7, Lc/d/a/b/i/e/a2;->b:Lc/d/a/b/i/e/y1;

    .line 17
    :goto_2
    invoke-static/range {v2 .. v7}, Lc/d/a/b/i/e/g2;->p(Lc/d/a/b/i/e/b2;Lc/d/a/b/i/e/j2;Lc/d/a/b/i/e/o1;Lc/d/a/b/i/e/g3;Lc/d/a/b/i/e/l0;Lc/d/a/b/i/e/y1;)Lc/d/a/b/i/e/g2;

    move-result-object p1

    return-object p1

    .line 18
    :cond_6
    sget-object v3, Lc/d/a/b/i/e/l2;->b:Lc/d/a/b/i/e/j2;

    .line 19
    sget-object v4, Lc/d/a/b/i/e/o1;->b:Lc/d/a/b/i/e/o1;

    .line 20
    sget-object v5, Lc/d/a/b/i/e/v2;->d:Lc/d/a/b/i/e/g3;

    const/4 v6, 0x0

    goto :goto_1

    .line 21
    :cond_7
    invoke-interface {v2}, Lc/d/a/b/i/e/b2;->a()I

    move-result p1

    if-ne p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_a

    .line 22
    sget-object p1, Lc/d/a/b/i/e/l2;->a:Lc/d/a/b/i/e/j2;

    .line 23
    sget-object v4, Lc/d/a/b/i/e/o1;->a:Lc/d/a/b/i/e/o1;

    .line 24
    sget-object v5, Lc/d/a/b/i/e/v2;->b:Lc/d/a/b/i/e/g3;

    .line 25
    sget-object v6, Lc/d/a/b/i/e/o0;->b:Lc/d/a/b/i/e/l0;

    if-eqz v6, :cond_9

    .line 26
    sget-object v7, Lc/d/a/b/i/e/a2;->a:Lc/d/a/b/i/e/y1;

    move-object v3, p1

    goto :goto_2

    .line 27
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_a
    sget-object v3, Lc/d/a/b/i/e/l2;->a:Lc/d/a/b/i/e/j2;

    .line 29
    sget-object v4, Lc/d/a/b/i/e/o1;->a:Lc/d/a/b/i/e/o1;

    .line 30
    sget-object v5, Lc/d/a/b/i/e/v2;->c:Lc/d/a/b/i/e/g3;

    const/4 v6, 0x0

    .line 31
    sget-object v7, Lc/d/a/b/i/e/a2;->a:Lc/d/a/b/i/e/y1;

    goto :goto_2
.end method
