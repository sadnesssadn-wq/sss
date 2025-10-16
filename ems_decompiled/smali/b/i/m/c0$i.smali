.class public Lb/i/m/c0$i;
.super Lb/i/m/c0$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public n:Lb/i/g/b;


# direct methods
.method public constructor <init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/i/m/c0$h;-><init>(Lb/i/m/c0;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/m/c0$i;->n:Lb/i/g/b;

    return-void
.end method


# virtual methods
.method public f()Lb/i/g/b;
    .locals 4

    iget-object v0, p0, Lb/i/m/c0$i;->n:Lb/i/g/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/i/m/c0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v0}, Lb/i/g/b;->a(IIII)Lb/i/g/b;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lb/i/m/c0$i;->n:Lb/i/g/b;

    :cond_0
    iget-object v0, p0, Lb/i/m/c0$i;->n:Lb/i/g/b;

    return-object v0
.end method

.method public i(IIII)Lb/i/m/c0;
    .locals 1

    iget-object v0, p0, Lb/i/m/c0$f;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/i/m/c0;->j(Landroid/view/WindowInsets;)Lb/i/m/c0;

    move-result-object p1

    return-object p1
.end method

.method public n(Lb/i/g/b;)V
    .locals 0

    return-void
.end method
