.class public Lc/d/a/c/s/d$c;
.super Lb/i/m/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/s/d;->f(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc/d/a/c/s/d;


# direct methods
.method public constructor <init>(Lc/d/a/c/s/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/s/d$c;->d:Lc/d/a/c/s/d;

    invoke-direct {p0}, Lb/i/m/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lb/i/m/d0/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/m/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lb/i/m/d0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lc/d/a/c/s/d$c;->d:Lc/d/a/c/s/d;

    iget-boolean p1, p1, Lc/d/a/c/s/d;->i:Z

    if-eqz p1, :cond_0

    const/high16 p1, 0x100000

    .line 5
    iget-object v0, p2, Lb/i/m/d0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p2, Lb/i/m/d0/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    return-void
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/s/d$c;->d:Lc/d/a/c/s/d;

    iget-boolean v1, v0, Lc/d/a/c/s/d;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc/d/a/c/s/d;->cancel()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lb/i/m/a;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
