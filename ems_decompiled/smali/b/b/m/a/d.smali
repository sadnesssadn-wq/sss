.class public Lb/b/m/a/d;
.super Lb/b/m/a/b;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/m/a/d$a;
    }
.end annotation


# instance fields
.field public p:Lb/b/m/a/d$a;

.field public q:Z


# direct methods
.method public constructor <init>(Lb/b/m/a/d$a;)V
    .locals 0

    invoke-direct {p0}, Lb/b/m/a/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/b/m/a/d$a;Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Lb/b/m/a/b;-><init>()V

    new-instance v0, Lb/b/m/a/d$a;

    invoke-direct {v0, p1, p0, p2}, Lb/b/m/a/d$a;-><init>(Lb/b/m/a/d$a;Lb/b/m/a/d;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lb/b/m/a/d;->e(Lb/b/m/a/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/m/a/d;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Lb/b/m/a/b;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/m/a/d;->onStateChange([I)Z

    return-void
.end method

.method public bridge synthetic b()Lb/b/m/a/b$c;
    .locals 1

    invoke-virtual {p0}, Lb/b/m/a/d;->f()Lb/b/m/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lb/b/m/a/b$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lb/b/m/a/b;->c:Lb/b/m/a/b$c;

    iget v0, p0, Lb/b/m/a/b;->i:I

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lb/b/m/a/b$c;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/b/m/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lb/b/m/a/b;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/m/a/b;->f:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p1, Lb/b/m/a/d$a;

    if-eqz v0, :cond_1

    check-cast p1, Lb/b/m/a/d$a;

    iput-object p1, p0, Lb/b/m/a/d;->p:Lb/b/m/a/d$a;

    :cond_1
    return-void
.end method

.method public f()Lb/b/m/a/d$a;
    .locals 3

    new-instance v0, Lb/b/m/a/d$a;

    iget-object v1, p0, Lb/b/m/a/d;->p:Lb/b/m/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lb/b/m/a/d$a;-><init>(Lb/b/m/a/d$a;Lb/b/m/a/d;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Lb/b/m/a/d;->q:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lb/b/m/a/b;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_0

    iget-object v0, p0, Lb/b/m/a/d;->p:Lb/b/m/a/d$a;

    invoke-virtual {v0}, Lb/b/m/a/d$a;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/m/a/d;->q:Z

    :cond_0
    return-object p0
.end method

.method public onStateChange([I)Z
    .locals 2

    invoke-super {p0, p1}, Lb/b/m/a/b;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lb/b/m/a/d;->p:Lb/b/m/a/d$a;

    invoke-virtual {v1, p1}, Lb/b/m/a/d$a;->g([I)I

    move-result p1

    if-gez p1, :cond_0

    iget-object p1, p0, Lb/b/m/a/d;->p:Lb/b/m/a/d$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lb/b/m/a/d$a;->g([I)I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lb/b/m/a/b;->d(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
