.class public final Lc/d/a/b/e/m/m/b1;
.super Lc/d/a/b/e/m/m/u;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/d/a/b/e/m/a$d;",
        ">",
        "Lc/d/a/b/e/m/m/u;"
    }
.end annotation


# instance fields
.field public final c:Lc/d/a/b/e/m/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/d<",
            "TO;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/d<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lc/d/a/b/e/m/m/u;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/b1;->c:Lc/d/a/b/e/m/d;

    return-void
.end method


# virtual methods
.method public final f(Lc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lc/d/a/b/e/m/a$b;",
            "T:",
            "Lc/d/a/b/e/m/m/d<",
            "+",
            "Lc/d/a/b/e/m/j;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/e/m/m/b1;->c:Lc/d/a/b/e/m/d;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1, p1}, Lc/d/a/b/e/m/d;->b(ILc/d/a/b/e/m/m/d;)Lc/d/a/b/e/m/m/d;

    return-object p1
.end method

.method public final g()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lc/d/a/b/e/m/m/b1;->c:Lc/d/a/b/e/m/d;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/d;->f:Landroid/os/Looper;

    return-object v0
.end method
