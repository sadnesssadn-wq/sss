.class public final Lc/d/a/b/i/n/t2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/u3;


# static fields
.field public static final b:Lc/d/a/b/i/n/d3;


# instance fields
.field public final a:Lc/d/a/b/i/n/d3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/b/i/n/s2;

    invoke-direct {v0}, Lc/d/a/b/i/n/s2;-><init>()V

    sput-object v0, Lc/d/a/b/i/n/t2;->b:Lc/d/a/b/i/n/d3;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lc/d/a/b/i/n/v2;

    const/4 v1, 0x2

    new-array v1, v1, [Lc/d/a/b/i/n/d3;

    sget-object v2, Lc/d/a/b/i/n/u1;->a:Lc/d/a/b/i/n/u1;

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

    check-cast v2, Lc/d/a/b/i/n/d3;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lc/d/a/b/i/n/t2;->b:Lc/d/a/b/i/n/d3;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2
    invoke-direct {v0, v1}, Lc/d/a/b/i/n/v2;-><init>([Lc/d/a/b/i/n/d3;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v1, Lc/d/a/b/i/n/x1;->a:Ljava/nio/charset/Charset;

    .line 5
    iput-object v0, p0, Lc/d/a/b/i/n/t2;->a:Lc/d/a/b/i/n/d3;

    return-void
.end method
