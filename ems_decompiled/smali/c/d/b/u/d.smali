.class public final synthetic Lc/d/b/u/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/p/f;


# instance fields
.field public synthetic a:Lc/d/b/u/g;

.field public synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lc/d/b/u/g;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/d/b/u/d;->a:Lc/d/b/u/g;

    iput-object p2, p0, Lc/d/b/u/d;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onComplete(Lc/d/a/b/p/l;)V
    .locals 1

    iget-object p1, p0, Lc/d/b/u/d;->a:Lc/d/b/u/g;

    iget-object v0, p0, Lc/d/b/u/d;->b:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lc/d/b/u/g;->d(Landroid/content/Intent;)V

    return-void
.end method
