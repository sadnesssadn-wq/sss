.class public Lc/e/a/b/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/b/j;->d(Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lc/e/a/b/m/b$a;

.field public final synthetic d:Ljava/lang/Throwable;

.field public final synthetic e:Lc/e/a/b/j;


# direct methods
.method public constructor <init>(Lc/e/a/b/j;Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lc/e/a/b/j$a;->e:Lc/e/a/b/j;

    iput-object p2, p0, Lc/e/a/b/j$a;->c:Lc/e/a/b/m/b$a;

    iput-object p3, p0, Lc/e/a/b/j$a;->d:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lc/e/a/b/j$a;->e:Lc/e/a/b/j;

    iget-object v1, v0, Lc/e/a/b/j;->o:Lc/e/a/b/c;

    .line 1
    iget-object v2, v1, Lc/e/a/b/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget v3, v1, Lc/e/a/b/c;->c:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 2
    iget-object v3, v0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    .line 3
    iget-object v0, v0, Lc/e/a/b/j;->f:Lc/e/a/b/e;

    .line 4
    iget-object v0, v0, Lc/e/a/b/e;->a:Landroid/content/res/Resources;

    .line 5
    iget v1, v1, Lc/e/a/b/c;->c:I

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6
    :cond_2
    check-cast v3, Lc/e/a/b/q/c;

    invoke-virtual {v3, v2}, Lc/e/a/b/q/c;->b(Landroid/graphics/drawable/Drawable;)Z

    :cond_3
    iget-object v0, p0, Lc/e/a/b/j$a;->e:Lc/e/a/b/j;

    iget-object v1, v0, Lc/e/a/b/j;->p:Lc/e/a/b/r/a;

    iget-object v2, v0, Lc/e/a/b/j;->k:Ljava/lang/String;

    iget-object v0, v0, Lc/e/a/b/j;->m:Lc/e/a/b/q/a;

    check-cast v0, Lc/e/a/b/q/b;

    invoke-virtual {v0}, Lc/e/a/b/q/b;->d()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lc/e/a/b/m/b;

    iget-object v4, p0, Lc/e/a/b/j$a;->c:Lc/e/a/b/m/b$a;

    iget-object v5, p0, Lc/e/a/b/j$a;->d:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Lc/e/a/b/m/b;-><init>(Lc/e/a/b/m/b$a;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v0, v3}, Lc/e/a/b/r/a;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lc/e/a/b/m/b;)V

    return-void
.end method
