.class public Lc/d/a/c/s/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/m/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/c/s/d;->f(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/d/a/c/s/d;


# direct methods
.method public constructor <init>(Lc/d/a/c/s/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/s/d$a;->a:Lc/d/a/c/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;)Lb/i/m/c0;
    .locals 3

    iget-object p1, p0, Lc/d/a/c/s/d$a;->a:Lc/d/a/c/s/d;

    .line 1
    iget-object v0, p1, Lc/d/a/c/s/d;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lc/d/a/c/s/d;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->P:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lc/d/a/c/s/d$a;->a:Lc/d/a/c/s/d;

    new-instance v0, Lc/d/a/c/s/d$f;

    .line 5
    iget-object v1, p1, Lc/d/a/c/s/d;->h:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p2, v2}, Lc/d/a/c/s/d$f;-><init>(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/s/d$a;)V

    .line 7
    iput-object v0, p1, Lc/d/a/c/s/d;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    .line 8
    iget-object p1, p0, Lc/d/a/c/s/d$a;->a:Lc/d/a/c/s/d;

    .line 9
    iget-object v0, p1, Lc/d/a/c/s/d;->e:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 10
    iget-object p1, p1, Lc/d/a/c/s/d;->l:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;)V

    return-object p2
.end method
