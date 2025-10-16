.class public Lc/d/a/c/d0/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/d/a/c/c0/r;


# direct methods
.method public constructor <init>(Lc/d/a/c/d0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/c0;Lc/d/a/c/c0/s;)Lb/i/m/c0;
    .locals 5

    iget v0, p3, Lc/d/a/c/c0/s;->d:I

    invoke-virtual {p2}, Lb/i/m/c0;->b()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lc/d/a/c/c0/s;->d:I

    .line 1
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2}, Lb/i/m/c0;->c()I

    move-result v0

    invoke-virtual {p2}, Lb/i/m/c0;->d()I

    move-result v2

    iget v3, p3, Lc/d/a/c/c0/s;->a:I

    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    add-int/2addr v3, v4

    iput v3, p3, Lc/d/a/c/c0/s;->a:I

    iget v4, p3, Lc/d/a/c/c0/s;->c:I

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v4, v0

    iput v4, p3, Lc/d/a/c/c0/s;->c:I

    .line 3
    iget v0, p3, Lc/d/a/c/c0/s;->b:I

    iget p3, p3, Lc/d/a/c/c0/s;->d:I

    .line 4
    invoke-virtual {p1, v3, v0, v4, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-object p2
.end method
