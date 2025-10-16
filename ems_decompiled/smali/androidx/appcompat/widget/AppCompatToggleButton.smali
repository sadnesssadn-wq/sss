.class public Landroidx/appcompat/widget/AppCompatToggleButton;
.super Landroid/widget/ToggleButton;
.source ""

# interfaces
.implements Lb/i/m/q;


# instance fields
.field public final c:Lb/b/q/e;

.field public final d:Lb/b/q/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lb/b/q/e0;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lb/b/q/e;

    invoke-direct {p1, p0}, Lb/b/q/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    invoke-virtual {p1, p2, p3}, Lb/b/q/e;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Lb/b/q/n;

    invoke-direct {p1, p0}, Lb/b/q/n;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->d:Lb/b/q/n;

    invoke-virtual {p1, p2, p3}, Lb/b/q/n;->e(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/q/e;->a()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->d:Lb/b/q/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/q/n;->b()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/q/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/q/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/q/e;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/q/e;->f(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/q/e;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatToggleButton;->c:Lb/b/q/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb/b/q/e;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method
