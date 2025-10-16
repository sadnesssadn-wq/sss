.class public Lc/d/a/c/s/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/c/c0/r;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lc/d/a/c/s/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/c0/s;)Lb/i/m/c0;
    .locals 6

    iget-object v0, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lb/i/m/c0;->e()I

    move-result v1

    .line 1
    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:I

    .line 2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->l0(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget-boolean v5, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {p2}, Lb/i/m/c0;->b()I

    move-result v1

    .line 5
    iput v1, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 6
    iget v1, p3, Lc/d/a/c/c0/s;->d:I

    iget-object v4, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 7
    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    add-int/2addr v1, v4

    .line 8
    :cond_0
    iget-object v4, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 9
    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 10
    iget v2, p3, Lc/d/a/c/c0/s;->c:I

    goto :goto_0

    :cond_1
    iget v2, p3, Lc/d/a/c/c0/s;->a:I

    :goto_0
    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result v4

    add-int/2addr v2, v4

    :cond_2
    iget-object v4, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    iget-boolean v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    .line 12
    iget p3, p3, Lc/d/a/c/c0/s;->a:I

    goto :goto_1

    :cond_3
    iget p3, p3, Lc/d/a/c/c0/s;->c:I

    :goto_1
    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v0

    add-int v3, v0, p3

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1, v2, p3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean p1, p0, Lc/d/a/c/s/b;->a:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 13
    iget-object p3, p2, Lb/i/m/c0;->a:Lb/i/m/c0$k;

    invoke-virtual {p3}, Lb/i/m/c0$k;->f()Lb/i/g/b;

    move-result-object p3

    .line 14
    iget p3, p3, Lb/i/g/b;->d:I

    .line 15
    iput p3, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 16
    :cond_5
    iget-object p1, p0, Lc/d/a/c/s/b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 17
    iget-boolean p3, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Z

    if-nez p3, :cond_6

    .line 18
    iget-boolean p3, p0, Lc/d/a/c/s/b;->a:Z

    if-eqz p3, :cond_7

    :cond_6
    const/4 p3, 0x0

    .line 19
    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V(Z)V

    :cond_7
    return-object p2
.end method
