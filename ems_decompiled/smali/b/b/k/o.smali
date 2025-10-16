.class public Lb/b/k/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/o;->c:Lb/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object v1, v0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    iget-object v0, v0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    invoke-virtual {v0}, Lb/b/k/k;->L()V

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    invoke-virtual {v0}, Lb/b/k/k;->Y()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object v2, v0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb/i/m/y;->a(F)Lb/i/m/y;

    iput-object v2, v0, Lb/b/k/k;->t:Lb/i/m/y;

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->t:Lb/i/m/y;

    new-instance v1, Lb/b/k/o$a;

    invoke-direct {v1, p0}, Lb/b/k/o$a;-><init>(Lb/b/k/o;)V

    .line 1
    iget-object v2, v0, Lb/i/m/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2, v1}, Lb/i/m/y;->e(Landroid/view/View;Lb/i/m/z;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lb/b/k/o;->c:Lb/b/k/k;

    iget-object v0, v0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
