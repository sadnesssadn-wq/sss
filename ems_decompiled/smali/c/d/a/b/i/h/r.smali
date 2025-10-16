.class public final Lc/d/a/b/i/h/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/n/h;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lc/d/b/n/d;

.field public final d:Lc/d/a/b/i/h/n;


# direct methods
.method public constructor <init>(Lc/d/a/b/i/h/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/i/h/r;->a:Z

    iput-boolean v0, p0, Lc/d/a/b/i/h/r;->b:Z

    iput-object p1, p0, Lc/d/a/b/i/h/r;->d:Lc/d/a/b/i/h/n;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lc/d/b/n/h;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/i/h/r;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/b/i/h/r;->a:Z

    .line 2
    iget-object v0, p0, Lc/d/a/b/i/h/r;->d:Lc/d/a/b/i/h/n;

    iget-object v1, p0, Lc/d/a/b/i/h/r;->c:Lc/d/b/n/d;

    iget-boolean v2, p0, Lc/d/a/b/i/h/r;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lc/d/a/b/i/h/n;->c(Lc/d/b/n/d;Ljava/lang/Object;Z)Lc/d/b/n/f;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Lc/d/b/n/c;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Lc/d/b/n/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Z)Lc/d/b/n/h;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/i/h/r;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/b/i/h/r;->a:Z

    .line 2
    iget-object v0, p0, Lc/d/a/b/i/h/r;->d:Lc/d/a/b/i/h/n;

    iget-object v1, p0, Lc/d/a/b/i/h/r;->c:Lc/d/b/n/d;

    iget-boolean v2, p0, Lc/d/a/b/i/h/r;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lc/d/a/b/i/h/n;->d(Lc/d/b/n/d;IZ)Lc/d/a/b/i/h/n;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Lc/d/b/n/c;

    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {p1, v0}, Lc/d/b/n/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
