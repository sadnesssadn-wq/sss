.class public Lb/u/i;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lb/u/f;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/View;

.field public final e:Landroid/view/View;

.field public f:I

.field public g:Landroid/graphics/Matrix;

.field public final h:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lb/u/i$a;

    invoke-direct {v0, p0}, Lb/u/i$a;-><init>(Lb/u/i;)V

    iput-object v0, p0, Lb/u/i;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iput-object p1, p0, Lb/u/i;->e:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public static b(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {p1, v0, v1, v3, p0}, Lb/u/b0;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method public static c(Landroid/view/View;)Lb/u/i;
    .locals 1

    sget v0, Lb/u/m;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/u/i;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lb/u/i;->c:Landroid/view/ViewGroup;

    iput-object p2, p0, Lb/u/i;->d:Landroid/view/View;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    .line 1
    sget v1, Lb/u/m;->ghost_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lb/u/i;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    .line 3
    sget-object v1, Lb/u/b0;->a:Lb/u/h0;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lb/u/h0;->g(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lb/u/i;->h:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    .line 1
    sget-object v1, Lb/u/b0;->a:Lb/u/h0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lb/u/h0;->g(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    .line 3
    sget v1, Lb/u/m;->ghost_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/u/a;->v(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lb/u/i;->g:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    .line 1
    sget-object v1, Lb/u/b0;->a:Lb/u/h0;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lb/u/h0;->g(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    const/4 v3, 0x4

    .line 3
    invoke-virtual {v1, v0, v3}, Lb/u/h0;->g(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-static {p1, v2}, Lb/u/a;->v(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    invoke-static {v0}, Lb/u/i;->c(Landroid/view/View;)Lb/u/i;

    move-result-object v0

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lb/u/i;->e:Landroid/view/View;

    .line 1
    sget-object v1, Lb/u/b0;->a:Lb/u/h0;

    invoke-virtual {v1, v0, p1}, Lb/u/h0;->g(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
