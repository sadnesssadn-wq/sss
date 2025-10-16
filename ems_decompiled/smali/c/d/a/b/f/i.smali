.class public final Lc/d/a/b/f/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/b/f/a$a;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Lc/d/a/b/f/a;


# direct methods
.method public constructor <init>(Lc/d/a/b/f/a;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/f/i;->d:Lc/d/a/b/f/a;

    iput-object p2, p0, Lc/d/a/b/f/i;->a:Landroid/app/Activity;

    iput-object p3, p0, Lc/d/a/b/f/i;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lc/d/a/b/f/i;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lc/d/a/b/f/c;)V
    .locals 3

    iget-object p1, p0, Lc/d/a/b/f/i;->d:Lc/d/a/b/f/a;

    .line 1
    iget-object p1, p1, Lc/d/a/b/f/a;->a:Lc/d/a/b/f/c;

    .line 2
    iget-object v0, p0, Lc/d/a/b/f/i;->a:Landroid/app/Activity;

    iget-object v1, p0, Lc/d/a/b/f/i;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lc/d/a/b/f/i;->c:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1, v2}, Lc/d/a/b/f/c;->n(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method
