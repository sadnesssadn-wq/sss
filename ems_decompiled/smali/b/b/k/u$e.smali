.class public Lb/b/k/u$e;
.super Lb/b/p/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic d:Lb/b/k/u;


# direct methods
.method public constructor <init>(Lb/b/k/u;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/u$e;->d:Lb/b/k/u;

    invoke-direct {p0, p2}, Lb/b/p/h;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lb/b/k/u$e;->d:Lb/b/k/u;

    iget-object v0, v0, Lb/b/k/u;->a:Lb/b/q/r;

    invoke-interface {v0}, Lb/b/q/r;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lb/b/k/u$e;->d:Lb/b/k/u;

    iget-boolean p3, p2, Lb/b/k/u;->b:Z

    if-nez p3, :cond_0

    iget-object p2, p2, Lb/b/k/u;->a:Lb/b/q/r;

    invoke-interface {p2}, Lb/b/q/r;->c()V

    iget-object p2, p0, Lb/b/k/u$e;->d:Lb/b/k/u;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lb/b/k/u;->b:Z

    :cond_0
    return p1
.end method
