.class public final Lc/d/a/b/i/n/v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/n/w0;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([BII)[B
    .locals 0

    add-int/2addr p3, p2

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method
