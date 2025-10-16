.class public Lb/b/k/k$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Lb/b/p/a$a;

.field public final synthetic b:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;Lb/b/p/a$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/b/k/k$e;->a:Lb/b/p/a$a;

    return-void
.end method


# virtual methods
.method public a(Lb/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {v0}, Lb/i/m/r;->z(Landroid/view/View;)V

    iget-object v0, p0, Lb/b/k/k$e;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/p/a$a;->a(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public b(Lb/b/p/a;)V
    .locals 2

    iget-object v0, p0, Lb/b/k/k$e;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1}, Lb/b/p/a$a;->b(Lb/b/p/a;)V

    iget-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/b/k/k;->L()V

    iget-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/i/m/y;->a(F)Lb/i/m/y;

    iput-object v0, p1, Lb/b/k/k;->t:Lb/i/m/y;

    iget-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->t:Lb/i/m/y;

    new-instance v0, Lb/b/k/k$e$a;

    invoke-direct {v0, p0}, Lb/b/k/k$e$a;-><init>(Lb/b/k/k$e;)V

    .line 1
    iget-object v1, p1, Lb/i/m/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1, v0}, Lb/i/m/y;->e(Landroid/view/View;Lb/i/m/z;)V

    .line 2
    :cond_1
    iget-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    iget-object v0, p1, Lb/b/k/k;->i:Lb/b/k/i;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lb/b/k/k;->p:Lb/b/p/a;

    invoke-interface {v0, p1}, Lb/b/k/i;->onSupportActionModeFinished(Lb/b/p/a;)V

    :cond_2
    iget-object p1, p0, Lb/b/k/k$e;->b:Lb/b/k/k;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/k/k;->p:Lb/b/p/a;

    iget-object p1, p1, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/i/m/r;->z(Landroid/view/View;)V

    return-void
.end method

.method public c(Lb/b/p/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/k$e;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/p/a$a;->c(Lb/b/p/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public d(Lb/b/p/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lb/b/k/k$e;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, p2}, Lb/b/p/a$a;->d(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
