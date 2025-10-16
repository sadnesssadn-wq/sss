.class public Lc/d/a/c/s/d$f;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lb/i/m/c0;


# direct methods
.method public constructor <init>(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/s/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;-><init>()V

    iput-object p2, p0, Lc/d/a/c/s/d$f;->c:Lb/i/m/c0;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    and-int/lit16 p2, p2, 0x2000

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lc/d/a/c/s/d$f;->b:Z

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p3

    .line 2
    iget-object p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:Lc/d/a/c/j0/h;

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p3, Lc/d/a/c/j0/h;->c:Lc/d/a/c/j0/h$b;

    iget-object p3, p3, Lc/d/a/c/j0/h$b;->d:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {p1}, Lb/i/m/r;->k(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    :goto_2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->i0(I)Z

    move-result p1

    iput-boolean p1, p0, Lc/d/a/c/s/d$f;->a:Z

    goto :goto_3

    :cond_3
    iput-boolean p2, p0, Lc/d/a/c/s/d$f;->a:Z

    :goto_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/d/a/c/s/d$f;->c(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lc/d/a/c/s/d$f;->c(Landroid/view/View;)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lc/d/a/c/s/d$f;->c:Lb/i/m/c0;

    invoke-virtual {v1}, Lb/i/m/c0;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lc/d/a/c/s/d$f;->a:Z

    invoke-static {p1, v0}, Lc/d/a/c/s/d;->e(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lc/d/a/c/s/d$f;->c:Lb/i/m/c0;

    invoke-virtual {v1}, Lb/i/m/c0;->e()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/c/s/d$f;->b:Z

    invoke-static {p1, v0}, Lc/d/a/c/s/d;->e(Landroid/view/View;Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
