.class public Lb/k/b/a$c;
.super Lb/i/m/d0/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lb/k/b/a;


# direct methods
.method public constructor <init>(Lb/k/b/a;)V
    .locals 0

    iput-object p1, p0, Lb/k/b/a$c;->b:Lb/k/b/a;

    invoke-direct {p0}, Lb/i/m/d0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lb/i/m/d0/b;
    .locals 1

    iget-object v0, p0, Lb/k/b/a$c;->b:Lb/k/b/a;

    invoke-virtual {v0, p1}, Lb/k/b/a;->s(I)Lb/i/m/d0/b;

    move-result-object p1

    .line 1
    iget-object p1, p1, Lb/i/m/d0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 2
    new-instance v0, Lb/i/m/d0/b;

    invoke-direct {v0, p1}, Lb/i/m/d0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public b(I)Lb/i/m/d0/b;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lb/k/b/a$c;->b:Lb/k/b/a;

    iget p1, p1, Lb/k/b/a;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/k/b/a$c;->b:Lb/k/b/a;

    iget p1, p1, Lb/k/b/a;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_1
    iget-object v0, p0, Lb/k/b/a$c;->b:Lb/k/b/a;

    invoke-virtual {v0, p1}, Lb/k/b/a;->s(I)Lb/i/m/d0/b;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lb/i/m/d0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 3
    new-instance v0, Lb/i/m/d0/b;

    invoke-direct {v0, p1}, Lb/i/m/d0/b;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lb/k/b/a$c;->b:Lb/k/b/a;

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/16 v2, 0x40

    if-eq p2, v2, :cond_1

    const/16 v1, 0x80

    if-eq p2, v1, :cond_0

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lb/k/b/a;->t(IILandroid/os/Bundle;)Z

    move-result p1

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Lb/k/b/a;->j(I)Z

    move-result p1

    goto :goto_2

    .line 2
    :cond_1
    iget-object p2, v0, Lb/k/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, v0, Lb/k/b/a;->h:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    iget p2, v0, Lb/k/b/a;->k:I

    if-eq p2, p1, :cond_4

    const/high16 p3, -0x80000000

    if-eq p2, p3, :cond_3

    invoke-virtual {v0, p2}, Lb/k/b/a;->j(I)Z

    :cond_3
    iput p1, v0, Lb/k/b/a;->k:I

    iget-object p2, v0, Lb/k/b/a;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    const p2, 0x8000

    invoke-virtual {v0, p1, p2}, Lb/k/b/a;->y(II)Z

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x0

    :goto_1
    move p1, v1

    goto :goto_2

    .line 3
    :cond_5
    invoke-virtual {v0, p1}, Lb/k/b/a;->k(I)Z

    move-result p1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1}, Lb/k/b/a;->x(I)Z

    move-result p1

    goto :goto_2

    .line 4
    :cond_7
    iget-object p1, v0, Lb/k/b/a;->i:Landroid/view/View;

    .line 5
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    :goto_2
    return p1
.end method
