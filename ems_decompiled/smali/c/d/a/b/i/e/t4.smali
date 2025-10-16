.class public final Lc/d/a/b/i/e/t4;
.super Lc/d/a/b/e/m/m/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/e/m/m/d<",
        "Lcom/google/android/gms/common/api/Status;",
        "Lc/d/a/b/i/e/x4;",
        ">;"
    }
.end annotation


# instance fields
.field public final p:Lc/d/a/b/c/f;


# direct methods
.method public constructor <init>(Lc/d/a/b/c/f;Lc/d/a/b/e/m/e;)V
    .locals 1

    sget-object v0, Lc/d/a/b/c/a;->n:Lc/d/a/b/e/m/a;

    invoke-direct {p0, v0, p2}, Lc/d/a/b/e/m/m/d;-><init>(Lc/d/a/b/e/m/a;Lc/d/a/b/e/m/e;)V

    iput-object p1, p0, Lc/d/a/b/i/e/t4;->p:Lc/d/a/b/c/f;

    return-void
.end method


# virtual methods
.method public final synthetic d(Lcom/google/android/gms/common/api/Status;)Lc/d/a/b/e/m/j;
    .locals 0

    return-object p1
.end method

.method public final synthetic l(Lc/d/a/b/e/m/a$b;)V
    .locals 5

    check-cast p1, Lc/d/a/b/i/e/x4;

    new-instance v0, Lc/d/a/b/i/e/w4;

    invoke-direct {v0, p0}, Lc/d/a/b/i/e/w4;-><init>(Lc/d/a/b/i/e/t4;)V

    :try_start_0
    iget-object v1, p0, Lc/d/a/b/i/e/t4;->p:Lc/d/a/b/c/f;

    iget-object v2, v1, Lc/d/a/b/c/f;->l:Lc/d/a/b/c/a$c;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    iget-object v4, v3, Lc/d/a/b/i/e/u4;->k:[B

    array-length v4, v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lc/d/a/b/c/a$c;->zza()[B

    move-result-object v2

    iput-object v2, v3, Lc/d/a/b/i/e/u4;->k:[B

    :cond_0
    iget-object v2, v1, Lc/d/a/b/c/f;->k:Lc/d/a/b/i/e/u4;

    invoke-virtual {v2}, Lc/d/a/b/i/e/h4;->c()I

    move-result v3

    new-array v4, v3, [B

    invoke-static {v2, v4, v3}, Lc/d/a/b/i/e/h4;->b(Lc/d/a/b/i/e/h4;[BI)V

    iput-object v4, v1, Lc/d/a/b/c/f;->d:[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lc/d/a/b/e/p/b;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/e/a5;

    iget-object v1, p0, Lc/d/a/b/i/e/t4;->p:Lc/d/a/b/c/f;

    invoke-interface {p1, v0, v1}, Lc/d/a/b/i/e/a5;->K(Lc/d/a/b/i/e/y4;Lc/d/a/b/c/f;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ClearcutLoggerApiImpl"

    const-string v1, "derived ClearcutLogger.MessageProducer "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "MessageProducer"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/d/a/b/e/m/m/d;->n(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
