.class public abstract Lb/i/m/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/m/b$b;,
        Lb/i/m/b$a;
    }
.end annotation


# instance fields
.field public a:Lb/i/m/b$a;

.field public b:Lb/i/m/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract c()Landroid/view/View;
.end method

.method public d(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lb/i/m/b;->c()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h(Lb/i/m/b$b;)V
    .locals 2

    iget-object v0, p0, Lb/i/m/b;->b:Lb/i/m/b$b;

    if-eqz v0, :cond_0

    const-string v0, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionProvider(support)"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lb/i/m/b;->b:Lb/i/m/b$b;

    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lb/i/m/b;->a:Lb/i/m/b$a;

    if-eqz v0, :cond_1

    check-cast v0, Lb/b/q/c;

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, v0, Lb/b/p/i/b;->g:Lb/b/p/i/m$a;

    if-eqz p1, :cond_1

    iget-object v0, v0, Lb/b/p/i/b;->e:Lb/b/p/i/g;

    invoke-interface {p1, v0}, Lb/b/p/i/m$a;->c(Lb/b/p/i/g;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, v0, Lb/b/p/i/b;->e:Lb/b/p/i/g;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/b/p/i/g;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method
