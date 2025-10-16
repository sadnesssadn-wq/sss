.class public abstract Lc/d/a/b/i/e/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/i/e/d2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/d/a/b/i/e/p<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lc/d/a/b/i/e/q<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lc/d/a/b/i/e/d2;"
    }
.end annotation


# static fields
.field private static zzey:Z = false


# instance fields
.field public zzex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/d/a/b/i/e/p;->zzex:I

    return-void
.end method


# virtual methods
.method public final b()Lc/d/a/b/i/e/y;
    .locals 6

    move-object v0, p0

    check-cast v0, Lc/d/a/b/i/e/y0;

    :try_start_0
    invoke-virtual {v0}, Lc/d/a/b/i/e/y0;->g()I

    move-result v1

    .line 1
    sget-object v2, Lc/d/a/b/i/e/y;->d:Lc/d/a/b/i/e/y;

    .line 2
    new-array v2, v1, [B

    .line 3
    sget-object v3, Lc/d/a/b/i/e/f0;->b:Ljava/util/logging/Logger;

    new-instance v3, Lc/d/a/b/i/e/f0$a;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lc/d/a/b/i/e/f0$a;-><init>([BII)V

    .line 4
    invoke-virtual {v0, v3}, Lc/d/a/b/i/e/y0;->c(Lc/d/a/b/i/e/f0;)V

    .line 5
    invoke-virtual {v3}, Lc/d/a/b/i/e/f0;->k()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lc/d/a/b/i/e/c0;

    invoke-direct {v0, v2}, Lc/d/a/b/i/e/c0;-><init>([B)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ByteString"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3e

    add-int/lit8 v4, v4, 0xa

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Serializing "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to a "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " threw an IOException (should never happen)."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public j()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
