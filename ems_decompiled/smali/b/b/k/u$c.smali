.class public final Lb/b/k/u$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/i/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/k/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public c:Z

.field public final synthetic d:Lb/b/k/u;


# direct methods
.method public constructor <init>(Lb/b/k/u;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/u$c;->d:Lb/b/k/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lb/b/p/i/g;Z)V
    .locals 1

    iget-boolean p2, p0, Lb/b/k/u$c;->c:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lb/b/k/u$c;->c:Z

    iget-object p2, p0, Lb/b/k/u$c;->d:Lb/b/k/u;

    iget-object p2, p2, Lb/b/k/u;->a:Lb/b/q/r;

    invoke-interface {p2}, Lb/b/q/r;->i()V

    iget-object p2, p0, Lb/b/k/u$c;->d:Lb/b/k/u;

    iget-object p2, p2, Lb/b/k/u;->c:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/k/u$c;->c:Z

    return-void
.end method

.method public c(Lb/b/p/i/g;)Z
    .locals 2

    iget-object v0, p0, Lb/b/k/u$c;->d:Lb/b/k/u;

    iget-object v0, v0, Lb/b/k/u;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
