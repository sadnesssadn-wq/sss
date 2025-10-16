.class public Lb/b/k/q;
.super Landroid/app/Dialog;
.source ""

# interfaces
.implements Lb/b/k/i;


# instance fields
.field public c:Lb/b/k/j;

.field public final d:Lb/i/m/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 1
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lb/b/a;->dialogTheme:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    move v1, p2

    .line 2
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lb/b/k/q$a;

    invoke-direct {v1, p0}, Lb/b/k/q$a;-><init>(Lb/b/k/q;)V

    iput-object v1, p0, Lb/b/k/q;->d:Lb/i/m/e$a;

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v1

    if-nez p2, :cond_1

    .line 3
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v2, Lb/b/a;->dialogTheme:I

    invoke-virtual {p1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 4
    :cond_1
    invoke-virtual {v1, p2}, Lb/b/k/j;->z(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lb/b/k/j;->m(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Lb/b/k/j;
    .locals 3

    iget-object v0, p0, Lb/b/k/q;->c:Lb/b/k/j;

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Lb/b/k/j;->c:Lb/f/c;

    new-instance v0, Lb/b/k/k;

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0, p0}, Lb/b/k/k;-><init>(Landroid/content/Context;Landroid/view/Window;Lb/b/k/i;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lb/b/k/q;->c:Lb/b/k/j;

    :cond_0
    iget-object v0, p0, Lb/b/k/q;->c:Lb/b/k/j;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/k/j;->c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public c(I)Z
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/j;->u(I)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/j;->n()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lb/b/k/q;->d:Lb/i/m/e$a;

    invoke-static {v1, v0, p0, p1}, Lb/i/m/e;->b(Lb/i/m/e$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/j;->e(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/j;->k()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/j;->j()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/j;->m(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/b/k/j;->s()V

    return-void
.end method

.method public onSupportActionModeFinished(Lb/b/p/a;)V
    .locals 0

    return-void
.end method

.method public onSupportActionModeStarted(Lb/b/p/a;)V
    .locals 0

    return-void
.end method

.method public onWindowStartingSupportActionMode(Lb/b/p/a$a;)Lb/b/p/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentView(I)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/j;->v(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/j;->w(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/b/k/j;->x(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/b/k/j;->A(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lb/b/k/q;->a()Lb/b/k/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/k/j;->A(Ljava/lang/CharSequence;)V

    return-void
.end method
