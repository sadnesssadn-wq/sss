.class public abstract Lc/d/a/a/j/q/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/a/j/q/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/d/a/a/j/q/g;
    .locals 4

    new-instance v0, Lc/d/a/a/j/q/b;

    sget-object v1, Lc/d/a/a/j/q/g$a;->e:Lc/d/a/a/j/q/g$a;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lc/d/a/a/j/q/b;-><init>(Lc/d/a/a/j/q/g$a;J)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lc/d/a/a/j/q/g$a;
.end method
