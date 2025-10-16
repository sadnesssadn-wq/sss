.class public final synthetic Lc/d/b/u/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/c;


# instance fields
.field public synthetic a:Landroid/content/Context;

.field public synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/d/b/u/h;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final then(Lc/d/a/b/p/l;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lc/d/b/u/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lc/d/b/u/h;->b:Landroid/content/Intent;

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->h0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/p/l;->k()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x192

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lc/d/b/u/m;->a(Landroid/content/Context;Landroid/content/Intent;)Lc/d/a/b/p/l;

    move-result-object p1

    sget-object v0, Lc/d/b/u/l;->a:Lc/d/b/u/l;

    sget-object v1, Lc/d/b/u/j;->a:Lc/d/b/u/j;

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/p/l;->g(Ljava/util/concurrent/Executor;Lc/d/a/b/p/c;)Lc/d/a/b/p/l;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method
