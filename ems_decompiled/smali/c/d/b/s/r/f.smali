.class public abstract Lc/d/b/s/r/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/b/s/r/f$a;,
        Lc/d/b/s/r/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/d/b/s/r/f$a;
    .locals 3

    new-instance v0, Lc/d/b/s/r/b$b;

    invoke-direct {v0}, Lc/d/b/s/r/b$b;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lc/d/b/s/r/b$b;->b(J)Lc/d/b/s/r/f$a;

    return-object v0
.end method


# virtual methods
.method public abstract b()Lc/d/b/s/r/f$b;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()J
.end method
