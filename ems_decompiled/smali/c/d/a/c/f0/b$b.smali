.class public Lc/d/a/c/f0/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/c/f0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/d/a/c/f0/b;


# direct methods
.method public constructor <init>(Lc/d/a/c/f0/b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/f0/b$b;->c:Lc/d/a/c/f0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lc/d/a/c/f0/b$b;->c:Lc/d/a/c/f0/b;

    .line 1
    sget v1, Lc/d/a/c/f0/b;->o:I

    .line 2
    invoke-virtual {v0}, Lc/d/a/c/f0/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lc/d/a/c/f0/k;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v2, v3}, Lc/d/a/c/f0/k;->h(ZZZ)Z

    .line 3
    invoke-virtual {v0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lc/d/a/c/f0/b;->getProgressDrawable()Lc/d/a/c/f0/h;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lc/d/a/c/f0/b;->getIndeterminateDrawable()Lc/d/a/c/f0/n;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_3
    iget-object v0, p0, Lc/d/a/c/f0/b$b;->c:Lc/d/a/c/f0/b;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
