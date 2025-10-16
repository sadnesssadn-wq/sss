.class public Lc/d/a/b/i/n/t1$b;
.super Lc/d/a/b/i/n/j0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/n/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/d/a/b/i/n/t1<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lc/d/a/b/i/n/t1$b<",
        "TMessageType;TBuilderType;>;>",
        "Lc/d/a/b/i/n/j0<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/i/n/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public d:Lc/d/a/b/i/n/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lc/d/a/b/i/n/t1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/i/n/j0;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/n/t1$b;->c:Lc/d/a/b/i/n/t1;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lc/d/a/b/i/n/t1;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/n/t1;

    iput-object p1, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    return-void
.end method


# virtual methods
.method public final synthetic b()Lc/d/a/b/i/n/c3;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->c:Lc/d/a/b/i/n/t1;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->c:Lc/d/a/b/i/n/t1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lc/d/a/b/i/n/t1;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/t1$b;

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->l()Lc/d/a/b/i/n/c3;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/n/t1;

    invoke-virtual {v0, v1}, Lc/d/a/b/i/n/t1$b;->j(Lc/d/a/b/i/n/t1;)Lc/d/a/b/i/n/t1$b;

    return-object v0
.end method

.method public final i([BIILc/d/a/b/i/n/f1;)Lc/d/a/b/i/n/j0;
    .locals 7

    .line 1
    iget-boolean p2, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->k()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    .line 2
    :cond_0
    :try_start_0
    sget-object p2, Lc/d/a/b/i/n/o3;->c:Lc/d/a/b/i/n/o3;

    .line 3
    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    invoke-virtual {p2, v0}, Lc/d/a/b/i/n/o3;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/s3;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    const/4 v4, 0x0

    new-instance v6, Lc/d/a/b/i/n/p0;

    invoke-direct {v6, p4}, Lc/d/a/b/i/n/p0;-><init>(Lc/d/a/b/i/n/f1;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lc/d/a/b/i/n/s3;->e(Ljava/lang/Object;[BIILc/d/a/b/i/n/p0;)V
    :try_end_0
    .catch Lc/d/a/b/i/n/b2; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    invoke-static {}, Lc/d/a/b/i/n/b2;->a()Lc/d/a/b/i/n/b2;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    throw p1
.end method

.method public final j(Lc/d/a/b/i/n/t1;)Lc/d/a/b/i/n/t1$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->k()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    .line 1
    sget-object v1, Lc/d/a/b/i/n/o3;->c:Lc/d/a/b/i/n/o3;

    .line 2
    invoke-virtual {v1, v0}, Lc/d/a/b/i/n/o3;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/s3;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lc/d/a/b/i/n/s3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lc/d/a/b/i/n/t1;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/t1;

    iget-object v1, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    .line 1
    sget-object v2, Lc/d/a/b/i/n/o3;->c:Lc/d/a/b/i/n/o3;

    .line 2
    invoke-virtual {v2, v0}, Lc/d/a/b/i/n/o3;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/s3;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lc/d/a/b/i/n/s3;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    return-void
.end method

.method public l()Lc/d/a/b/i/n/c3;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    .line 2
    sget-object v1, Lc/d/a/b/i/n/o3;->c:Lc/d/a/b/i/n/o3;

    .line 3
    invoke-virtual {v1, v0}, Lc/d/a/b/i/n/o3;->b(Ljava/lang/Object;)Lc/d/a/b/i/n/s3;

    move-result-object v1

    invoke-interface {v1, v0}, Lc/d/a/b/i/n/s3;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/b/i/n/t1$b;->e:Z

    :goto_0
    iget-object v0, p0, Lc/d/a/b/i/n/t1$b;->d:Lc/d/a/b/i/n/t1;

    return-object v0
.end method

.method public m()Lc/d/a/b/i/n/c3;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/i/n/t1$b;->l()Lc/d/a/b/i/n/c3;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/n/t1;

    invoke-virtual {v0}, Lc/d/a/b/i/n/t1;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lc/d/a/b/i/n/f4;

    invoke-direct {v0}, Lc/d/a/b/i/n/f4;-><init>()V

    throw v0
.end method
