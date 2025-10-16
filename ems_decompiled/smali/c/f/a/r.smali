.class public Lc/f/a/r;
.super Lc/f/a/y;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/f/a/r$a;
    }
.end annotation


# instance fields
.field public final a:Lc/f/a/j;

.field public final b:Lc/f/a/a0;


# direct methods
.method public constructor <init>(Lc/f/a/j;Lc/f/a/a0;)V
    .locals 0

    invoke-direct {p0}, Lc/f/a/y;-><init>()V

    iput-object p1, p0, Lc/f/a/r;->a:Lc/f/a/j;

    iput-object p2, p0, Lc/f/a/r;->b:Lc/f/a/a0;

    return-void
.end method


# virtual methods
.method public c(Lc/f/a/w;)Z
    .locals 1

    iget-object p1, p1, Lc/f/a/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f(Lc/f/a/w;I)Lc/f/a/y$a;
    .locals 8

    sget-object p2, Lc/f/a/t$d;->e:Lc/f/a/t$d;

    sget-object v0, Lc/f/a/t$d;->f:Lc/f/a/t$d;

    iget-object v1, p0, Lc/f/a/r;->a:Lc/f/a/j;

    iget-object v2, p1, Lc/f/a/w;->d:Landroid/net/Uri;

    iget p1, p1, Lc/f/a/w;->c:I

    invoke-interface {v1, v2, p1}, Lc/f/a/j;->a(Landroid/net/Uri;I)Lc/f/a/j$a;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, p1, Lc/f/a/j$a;->b:Z

    if-eqz v2, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 1
    :goto_0
    iget-object v3, p1, Lc/f/a/j$a;->a:Ljava/io/InputStream;

    if-nez v3, :cond_2

    return-object v1

    :cond_2
    const-wide/16 v4, 0x0

    if-ne v2, p2, :cond_4

    .line 2
    iget-wide v6, p1, Lc/f/a/j$a;->c:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_3

    goto :goto_1

    .line 3
    :cond_3
    invoke-static {v3}, Lc/f/a/f0;->c(Ljava/io/InputStream;)V

    new-instance p1, Lc/f/a/r$a;

    const-string p2, "Received response with 0 content-length header."

    invoke-direct {p1, p2}, Lc/f/a/r$a;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    if-ne v2, v0, :cond_5

    .line 4
    iget-wide p1, p1, Lc/f/a/j$a;->c:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_5

    .line 5
    iget-object v0, p0, Lc/f/a/r;->b:Lc/f/a/a0;

    .line 6
    iget-object v0, v0, Lc/f/a/a0;->c:Landroid/os/Handler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    :cond_5
    new-instance p1, Lc/f/a/y$a;

    invoke-direct {p1, v3, v2}, Lc/f/a/y$a;-><init>(Ljava/io/InputStream;Lc/f/a/t$d;)V

    return-object p1
.end method

.method public g(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
