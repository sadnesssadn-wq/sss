.class public Lc/d/a/c/d0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/p/i/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/d0/d$a;
    }
.end annotation


# instance fields
.field public c:Lb/b/p/i/g;

.field public d:Lc/d/a/c/d0/c;

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/c/d0/d;->e:Z

    return-void
.end method


# virtual methods
.method public b(Lb/b/p/i/g;Z)V
    .locals 0

    return-void
.end method

.method public d(Landroid/content/Context;Lb/b/p/i/g;)V
    .locals 0

    iput-object p2, p0, Lc/d/a/c/d0/d;->c:Lb/b/p/i/g;

    iget-object p1, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    .line 1
    iput-object p2, p1, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    return-void
.end method

.method public e(Landroid/os/Parcelable;)V
    .locals 9

    instance-of v0, p1, Lc/d/a/c/d0/d$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    check-cast p1, Lc/d/a/c/d0/d$a;

    iget v1, p1, Lc/d/a/c/d0/d$a;->c:I

    .line 1
    iget-object v2, v0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v2}, Lb/b/p/i/g;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, v0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v5, v4}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    if-ne v1, v6, :cond_0

    iput v1, v0, Lc/d/a/c/d0/c;->i:I

    iput v4, v0, Lc/d/a/c/d0/c;->j:I

    const/4 v0, 0x1

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2
    :cond_1
    :goto_1
    iget-object v0, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lc/d/a/c/d0/d$a;->d:Lc/d/a/c/c0/f;

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/c/o/a$a;

    if-eqz v5, :cond_3

    .line 4
    new-instance v6, Lc/d/a/c/o/a;

    invoke-direct {v6, v0}, Lc/d/a/c/o/a;-><init>(Landroid/content/Context;)V

    .line 5
    iget v7, v5, Lc/d/a/c/o/a$a;->g:I

    .line 6
    invoke-virtual {v6, v7}, Lc/d/a/c/o/a;->j(I)V

    .line 7
    iget v7, v5, Lc/d/a/c/o/a$a;->f:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 8
    invoke-virtual {v6, v7}, Lc/d/a/c/o/a;->k(I)V

    .line 9
    :cond_2
    iget v7, v5, Lc/d/a/c/o/a$a;->c:I

    .line 10
    invoke-virtual {v6, v7}, Lc/d/a/c/o/a;->g(I)V

    .line 11
    iget v7, v5, Lc/d/a/c/o/a$a;->d:I

    .line 12
    invoke-virtual {v6, v7}, Lc/d/a/c/o/a;->i(I)V

    .line 13
    iget v7, v5, Lc/d/a/c/o/a$a;->k:I

    .line 14
    invoke-virtual {v6, v7}, Lc/d/a/c/o/a;->h(I)V

    .line 15
    iget v7, v5, Lc/d/a/c/o/a$a;->m:I

    .line 16
    iget-object v8, v6, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 17
    iput v7, v8, Lc/d/a/c/o/a$a;->m:I

    .line 18
    invoke-virtual {v6}, Lc/d/a/c/o/a;->m()V

    .line 19
    iget v7, v5, Lc/d/a/c/o/a$a;->n:I

    .line 20
    iget-object v8, v6, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 21
    iput v7, v8, Lc/d/a/c/o/a$a;->n:I

    .line 22
    invoke-virtual {v6}, Lc/d/a/c/o/a;->m()V

    .line 23
    iget v7, v5, Lc/d/a/c/o/a$a;->o:I

    .line 24
    iget-object v8, v6, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 25
    iput v7, v8, Lc/d/a/c/o/a$a;->o:I

    .line 26
    invoke-virtual {v6}, Lc/d/a/c/o/a;->m()V

    .line 27
    iget v7, v5, Lc/d/a/c/o/a$a;->p:I

    .line 28
    iget-object v8, v6, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 29
    iput v7, v8, Lc/d/a/c/o/a$a;->p:I

    .line 30
    invoke-virtual {v6}, Lc/d/a/c/o/a;->m()V

    .line 31
    iget-boolean v5, v5, Lc/d/a/c/o/a$a;->l:Z

    .line 32
    invoke-virtual {v6, v5, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v7, v6, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 33
    iput-boolean v5, v7, Lc/d/a/c/o/a$a;->l:Z

    .line 34
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BadgeDrawable\'s savedState cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_4
    iget-object p1, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    invoke-virtual {p1, v1}, Lc/d/a/c/d0/c;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_5
    return-void
.end method

.method public f(Lb/b/p/i/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Z)V
    .locals 6

    iget-boolean v0, p0, Lc/d/a/c/d0/d;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    invoke-virtual {p1}, Lc/d/a/c/d0/c;->a()V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    .line 1
    iget-object v0, p1, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    if-eqz v0, :cond_7

    iget-object v1, p1, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lb/b/p/i/g;->size()I

    move-result v0

    iget-object v1, p1, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    array-length v1, v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lc/d/a/c/d0/c;->a()V

    goto :goto_2

    :cond_3
    iget v1, p1, Lc/d/a/c/d0/c;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p1, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v4, v3}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p1, Lc/d/a/c/d0/c;->i:I

    iput v3, p1, Lc/d/a/c/d0/c;->j:I

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget v3, p1, Lc/d/a/c/d0/c;->i:I

    if-eq v1, v3, :cond_6

    iget-object v1, p1, Lc/d/a/c/d0/c;->c:Landroidx/transition/TransitionSet;

    invoke-static {p1, v1}, Lb/u/u;->a(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_6
    iget v1, p1, Lc/d/a/c/d0/c;->g:I

    iget-object v3, p1, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v3}, Lb/b/p/i/g;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lc/d/a/c/d0/c;->e(II)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    iget-object v4, p1, Lc/d/a/c/d0/c;->t:Lc/d/a/c/d0/d;

    const/4 v5, 0x1

    .line 2
    iput-boolean v5, v4, Lc/d/a/c/d0/d;->e:Z

    .line 3
    iget-object v4, p1, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    aget-object v4, v4, v3

    iget v5, p1, Lc/d/a/c/d0/c;->g:I

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setLabelVisibilityMode(I)V

    iget-object v4, p1, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lc/d/a/c/d0/a;->setShifting(Z)V

    iget-object v4, p1, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    aget-object v4, v4, v3

    iget-object v5, p1, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v5, v3}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lb/b/p/i/i;

    invoke-virtual {v4, v5, v2}, Lc/d/a/c/d0/a;->d(Lb/b/p/i/i;I)V

    iget-object v4, p1, Lc/d/a/c/d0/c;->t:Lc/d/a/c/d0/d;

    .line 4
    iput-boolean v2, v4, Lc/d/a/c/d0/d;->e:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/d;->f:I

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Landroid/os/Parcelable;
    .locals 6

    new-instance v0, Lc/d/a/c/d0/d$a;

    invoke-direct {v0}, Lc/d/a/c/d0/d$a;-><init>()V

    iget-object v1, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v1}, Lc/d/a/c/d0/c;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lc/d/a/c/d0/d$a;->c:I

    iget-object v1, p0, Lc/d/a/c/d0/d;->d:Lc/d/a/c/d0/c;

    invoke-virtual {v1}, Lc/d/a/c/d0/c;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object v1

    .line 1
    new-instance v2, Lc/d/a/c/c0/f;

    invoke-direct {v2}, Lc/d/a/c/c0/f;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/c/o/a;

    if-eqz v5, :cond_0

    .line 2
    iget-object v5, v5, Lc/d/a/c/o/a;->j:Lc/d/a/c/o/a$a;

    .line 3
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "badgeDrawable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    iput-object v2, v0, Lc/d/a/c/d0/d$a;->d:Lc/d/a/c/c0/f;

    return-object v0
.end method

.method public k(Lb/b/p/i/g;Lb/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public l(Lb/b/p/i/g;Lb/b/p/i/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
