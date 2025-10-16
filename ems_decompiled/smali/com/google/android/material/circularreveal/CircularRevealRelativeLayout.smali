.class public Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lc/d/a/c/w/c;


# instance fields
.field public final c:Lc/d/a/c/w/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lc/d/a/c/w/b;

    invoke-direct {p1, p0}, Lc/d/a/c/w/b;-><init>(Lc/d/a/c/w/b$a;)V

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    invoke-virtual {v0}, Lc/d/a/c/w/b;->b()V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    invoke-virtual {v0}, Lc/d/a/c/w/b;->a()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/d/a/c/w/b;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    .line 1
    iget-object v0, v0, Lc/d/a/c/w/b;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    invoke-virtual {v0}, Lc/d/a/c/w/b;->d()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lc/d/a/c/w/c$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    invoke-virtual {v0}, Lc/d/a/c/w/b;->f()Lc/d/a/c/w/c$e;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/d/a/c/w/b;->g()Z

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    .line 1
    iput-object p1, v0, Lc/d/a/c/w/b;->g:Landroid/graphics/drawable/Drawable;

    iget-object p1, v0, Lc/d/a/c/w/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    .line 1
    iget-object v1, v0, Lc/d/a/c/w/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, v0, Lc/d/a/c/w/b;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRevealInfo(Lc/d/a/c/w/c$e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealRelativeLayout;->c:Lc/d/a/c/w/b;

    invoke-virtual {v0, p1}, Lc/d/a/c/w/b;->h(Lc/d/a/c/w/c$e;)V

    return-void
.end method
