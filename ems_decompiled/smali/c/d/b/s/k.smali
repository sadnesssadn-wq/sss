.class public Lc/d/b/s/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/b/s/n;


# instance fields
.field public final a:Lc/d/a/b/p/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/p/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/p/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/p/m<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/s/k;->a:Lc/d/a/b/p/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lc/d/b/s/q/d;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lc/d/b/s/q/d;->f()Lc/d/b/s/q/c$a;

    move-result-object v0

    sget-object v1, Lc/d/b/s/q/c$a;->e:Lc/d/b/s/q/c$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lc/d/b/s/q/d;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lc/d/b/s/q/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    iget-object v0, p0, Lc/d/b/s/k;->a:Lc/d/a/b/p/m;

    invoke-virtual {p1}, Lc/d/b/s/q/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/b/p/m;->b(Ljava/lang/Object;)Z

    return v3
.end method
