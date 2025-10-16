.class public final Lc/d/a/b/e/m/m/j$c;
.super Lc/d/a/b/i/d/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/e/m/m/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/b/e/m/m/j;


# direct methods
.method public constructor <init>(Lc/d/a/b/e/m/m/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/e/m/m/j$c;->a:Lc/d/a/b/e/m/m/j;

    invoke-direct {p0, p2}, Lc/d/a/b/i/d/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->e(Z)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/d/a/b/e/m/m/j$b;

    iget-object v0, p0, Lc/d/a/b/e/m/m/j$c;->a:Lc/d/a/b/e/m/m/j;

    .line 1
    iget-object v0, v0, Lc/d/a/b/e/m/m/j;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-interface {p1}, Lc/d/a/b/e/m/m/j$b;->b()V

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p1, v0}, Lc/d/a/b/e/m/m/j$b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-interface {p1}, Lc/d/a/b/e/m/m/j$b;->b()V

    throw v0
.end method
