.class public Lc/d/a/c/b0/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic c:Lc/d/a/c/b0/h;


# direct methods
.method public constructor <init>(Lc/d/a/c/b0/h;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/b0/j;->c:Lc/d/a/c/b0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Lc/d/a/c/b0/j;->c:Lc/d/a/c/b0/h;

    .line 1
    iget-object v1, v0, Lc/d/a/c/b0/h;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getRotation()F

    move-result v1

    iget v2, v0, Lc/d/a/c/b0/h;->r:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    iput v1, v0, Lc/d/a/c/b0/h;->r:F

    invoke-virtual {v0}, Lc/d/a/c/b0/h;->w()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
