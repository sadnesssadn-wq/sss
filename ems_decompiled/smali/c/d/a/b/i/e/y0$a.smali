.class public Lc/d/a/b/i/e/y0$a;
.super Lc/d/a/b/i/e/q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/i/e/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lc/d/a/b/i/e/y0<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lc/d/a/b/i/e/y0$a<",
        "TMessageType;TBuilderType;>;>",
        "Lc/d/a/b/i/e/q<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/i/e/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public d:Lc/d/a/b/i/e/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(Lc/d/a/b/i/e/y0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/d/a/b/i/e/q;-><init>()V

    iput-object p1, p0, Lc/d/a/b/i/e/y0$a;->c:Lc/d/a/b/i/e/y0;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/i/e/y0;

    iput-object p1, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/d/a/b/i/e/y0$a;->e:Z

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lc/d/a/b/i/e/y0$a;->c:Lc/d/a/b/i/e/y0;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/y0$a;

    invoke-virtual {p0}, Lc/d/a/b/i/e/y0$a;->k()Lc/d/a/b/i/e/d2;

    move-result-object v1

    check-cast v1, Lc/d/a/b/i/e/y0;

    invoke-virtual {v0, v1}, Lc/d/a/b/i/e/y0$a;->i(Lc/d/a/b/i/e/y0;)Lc/d/a/b/i/e/y0$a;

    return-object v0
.end method

.method public final synthetic h()Lc/d/a/b/i/e/d2;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/i/e/y0$a;->c:Lc/d/a/b/i/e/y0;

    return-object v0
.end method

.method public final i(Lc/d/a/b/i/e/y0;)Lc/d/a/b/i/e/y0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/d/a/b/i/e/y0$a;->j()V

    iget-object v0, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    .line 1
    sget-object v1, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    .line 2
    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lc/d/a/b/i/e/t2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public j()V
    .locals 3

    iget-boolean v0, p0, Lc/d/a/b/i/e/y0$a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lc/d/a/b/i/e/y0;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/i/e/y0;

    iget-object v1, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    .line 1
    sget-object v2, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    .line 2
    invoke-virtual {v2, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lc/d/a/b/i/e/t2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/b/i/e/y0$a;->e:Z

    :cond_0
    return-void
.end method

.method public k()Lc/d/a/b/i/e/d2;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/i/e/y0$a;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    .line 2
    sget-object v1, Lc/d/a/b/i/e/o2;->c:Lc/d/a/b/i/e/o2;

    .line 3
    invoke-virtual {v1, v0}, Lc/d/a/b/i/e/o2;->b(Ljava/lang/Object;)Lc/d/a/b/i/e/t2;

    move-result-object v1

    invoke-interface {v1, v0}, Lc/d/a/b/i/e/t2;->zzc(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d/a/b/i/e/y0$a;->e:Z

    :goto_0
    iget-object v0, p0, Lc/d/a/b/i/e/y0$a;->d:Lc/d/a/b/i/e/y0;

    return-object v0
.end method
