.class public final Lc/d/a/b/e/m/m/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/e/m/m/j$a;,
        Lc/d/a/b/e/m/m/j$c;,
        Lc/d/a/b/e/m/m/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lc/d/a/b/e/m/m/j$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/j$c;"
        }
    .end annotation
.end field

.field public volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public volatile c:Lc/d/a/b/e/m/m/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/b/e/m/m/j$a<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "T",
            "L;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/d/a/b/e/m/m/j$c;

    invoke-direct {v0, p0, p1}, Lc/d/a/b/e/m/m/j$c;-><init>(Lc/d/a/b/e/m/m/j;Landroid/os/Looper;)V

    iput-object v0, p0, Lc/d/a/b/e/m/m/j;->a:Lc/d/a/b/e/m/m/j$c;

    const-string p1, "Listener must not be null"

    invoke-static {p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lc/d/a/b/e/m/m/j;->b:Ljava/lang/Object;

    new-instance p1, Lc/d/a/b/e/m/m/j$a;

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->j(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lc/d/a/b/e/m/m/j$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc/d/a/b/e/m/m/j;->b:Ljava/lang/Object;

    iput-object v0, p0, Lc/d/a/b/e/m/m/j;->c:Lc/d/a/b/e/m/m/j$a;

    return-void
.end method

.method public final b(Lc/d/a/b/e/m/m/j$b;)V
    .locals 2
    .param p1    # Lc/d/a/b/e/m/m/j$b;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/e/m/m/j$b<",
            "-T",
            "L;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Notifier must not be null"

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/d/a/b/e/m/m/j;->a:Lc/d/a/b/e/m/m/j$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/b/e/m/m/j;->a:Lc/d/a/b/e/m/m/j$c;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
