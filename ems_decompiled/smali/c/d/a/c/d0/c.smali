.class public abstract Lc/d/a/c/d0/c;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Lb/b/p/i/n;


# static fields
.field public static final v:[I

.field public static final w:[I


# instance fields
.field public final c:Landroidx/transition/TransitionSet;

.field public final d:Landroid/view/View$OnClickListener;

.field public final e:Lb/i/l/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/l/c<",
            "Lc/d/a/c/d0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:[Lc/d/a/c/d0/a;

.field public i:I

.field public j:I

.field public k:Landroid/content/res/ColorStateList;

.field public l:I

.field public m:Landroid/content/res/ColorStateList;

.field public final n:Landroid/content/res/ColorStateList;

.field public o:I

.field public p:I

.field public q:Landroid/graphics/drawable/Drawable;

.field public r:I

.field public s:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/c/o/a;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lc/d/a/c/d0/d;

.field public u:Lb/b/p/i/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lc/d/a/c/d0/c;->v:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    sput-object v0, Lc/d/a/c/d0/c;->w:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Lb/i/l/d;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lb/i/l/d;-><init>(I)V

    iput-object p1, p0, Lc/d/a/c/d0/c;->e:Lb/i/l/c;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lc/d/a/c/d0/c;->f:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lc/d/a/c/d0/c;->i:I

    iput p1, p0, Lc/d/a/c/d0/c;->j:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    const v0, 0x1010038

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/c;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/c/d0/c;->n:Landroid/content/res/ColorStateList;

    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lc/d/a/c/d0/c;->c:Landroidx/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->N(I)Landroidx/transition/TransitionSet;

    const-wide/16 v1, 0x73

    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->L(J)Landroidx/transition/TransitionSet;

    new-instance p1, Lb/n/a/a/b;

    invoke-direct {p1}, Lb/n/a/a/b;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->M(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    new-instance p1, Lc/d/a/c/c0/j;

    invoke-direct {p1}, Lc/d/a/c/c0/j;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->J(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    new-instance p1, Lc/d/a/c/d0/c$a;

    invoke-direct {p1, p0}, Lc/d/a/c/d0/c$a;-><init>(Lc/d/a/c/d0/c;)V

    iput-object p1, p0, Lc/d/a/c/d0/c;->d:Landroid/view/View$OnClickListener;

    .line 1
    sget-object p1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private getNewItem()Lc/d/a/c/d0/a;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/c;->e:Lb/i/l/c;

    invoke-virtual {v0}, Lb/i/l/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/c/d0/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/d/a/c/d0/c;->d(Landroid/content/Context;)Lc/d/a/c/d0/a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setBadgeIfNeeded(Lc/d/a/c/d0/a;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/c/o/a;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lc/d/a/c/d0/a;->setBadge(Lc/d/a/c/o/a;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    if-eqz v6, :cond_2

    iget-object v7, p0, Lc/d/a/c/d0/c;->e:Lb/i/l/c;

    invoke-virtual {v7, v6}, Lb/i/l/c;->b(Ljava/lang/Object;)Z

    .line 1
    iget-object v7, v6, Lc/d/a/c/d0/a;->i:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v6}, Lc/d/a/c/d0/a;->b()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    iget-object v8, v6, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    invoke-static {v8, v7}, Lc/d/a/c/o/b;->b(Lc/d/a/c/o/a;Landroid/view/View;)V

    :cond_1
    iput-object v1, v6, Lc/d/a/c/d0/a;->r:Lc/d/a/c/o/a;

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3
    :cond_3
    iget-object v0, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->size()I

    move-result v0

    if-nez v0, :cond_4

    iput v2, p0, Lc/d/a/c/d0/c;->i:I

    iput v2, p0, Lc/d/a/c/d0/c;->j:I

    iput-object v1, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    return-void

    .line 4
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v4}, Lb/b/p/i/g;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v4, v1}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5
    :cond_7
    iget-object v0, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->size()I

    move-result v0

    new-array v0, v0, [Lc/d/a/c/d0/a;

    iput-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    iget v0, p0, Lc/d/a/c/d0/c;->g:I

    iget-object v1, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc/d/a/c/d0/c;->e(II)Z

    move-result v0

    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v4}, Lb/b/p/i/g;->size()I

    move-result v4

    if-ge v1, v4, :cond_a

    iget-object v4, p0, Lc/d/a/c/d0/c;->t:Lc/d/a/c/d0/d;

    .line 6
    iput-boolean v3, v4, Lc/d/a/c/d0/d;->e:Z

    .line 7
    iget-object v4, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v4, v1}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v4, p0, Lc/d/a/c/d0/c;->t:Lc/d/a/c/d0/d;

    .line 8
    iput-boolean v2, v4, Lc/d/a/c/d0/d;->e:Z

    .line 9
    invoke-direct {p0}, Lc/d/a/c/d0/c;->getNewItem()Lc/d/a/c/d0/a;

    move-result-object v4

    iget-object v5, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    aput-object v4, v5, v1

    iget-object v5, p0, Lc/d/a/c/d0/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v5, p0, Lc/d/a/c/d0/c;->l:I

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setIconSize(I)V

    iget-object v5, p0, Lc/d/a/c/d0/c;->n:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v5, p0, Lc/d/a/c/d0/c;->o:I

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setTextAppearanceInactive(I)V

    iget v5, p0, Lc/d/a/c/d0/c;->p:I

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setTextAppearanceActive(I)V

    iget-object v5, p0, Lc/d/a/c/d0/c;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Lc/d/a/c/d0/c;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_8

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_8
    iget v5, p0, Lc/d/a/c/d0/c;->r:I

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setItemBackground(I)V

    :goto_5
    invoke-virtual {v4, v0}, Lc/d/a/c/d0/a;->setShifting(Z)V

    iget v5, p0, Lc/d/a/c/d0/c;->g:I

    invoke-virtual {v4, v5}, Lc/d/a/c/d0/a;->setLabelVisibilityMode(I)V

    iget-object v5, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v5, v1}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lb/b/p/i/i;

    invoke-virtual {v4, v5, v2}, Lc/d/a/c/d0/a;->d(Lb/b/p/i/i;I)V

    invoke-virtual {v4, v1}, Lc/d/a/c/d0/a;->setItemPosition(I)V

    .line 10
    iget v5, v5, Lb/b/p/i/i;->a:I

    .line 11
    iget-object v6, p0, Lc/d/a/c/d0/c;->f:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lc/d/a/c/d0/c;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v6, p0, Lc/d/a/c/d0/c;->i:I

    if-eqz v6, :cond_9

    if-ne v5, v6, :cond_9

    iput v1, p0, Lc/d/a/c/d0/c;->j:I

    :cond_9
    invoke-direct {p0, v4}, Lc/d/a/c/d0/c;->setBadgeIfNeeded(Lc/d/a/c/d0/a;)V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v1, p0, Lc/d/a/c/d0/c;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lc/d/a/c/d0/c;->j:I

    iget-object v1, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v1, v0}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public b(Lb/b/p/i/g;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    return-void
.end method

.method public c(I)Landroid/content/res/ColorStateList;
    .locals 10

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lb/b/l/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lb/b/a;->colorPrimary:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lc/d/a/c/d0/c;->w:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lc/d/a/c/d0/c;->v:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public abstract d(Landroid/content/Context;)Lc/d/a/c/d0/a;
.end method

.method public e(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBadgeDrawables()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lc/d/a/c/o/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/c;->k:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/d0/c;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemBackgroundRes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lc/d/a/c/d0/c;->r:I

    return v0
.end method

.method public getItemIconSize()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/c;->l:I

    return v0
.end method

.method public getItemTextAppearanceActive()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/c;->p:I

    return v0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/c;->o:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/c;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getLabelVisibilityMode()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/c;->g:I

    return v0
.end method

.method public getMenu()Lb/b/p/i/g;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/c;->i:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    iget v0, p0, Lc/d/a/c/d0/c;->j:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lc/d/a/c/d0/c;->u:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->l()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1, v2}, Lb/i/m/d0/b$b;->a(IIZI)Lb/i/m/d0/b$b;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lb/i/m/d0/b$b;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lc/d/a/c/o/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/d/a/c/d0/c;->s:Landroid/util/SparseArray;

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/c/o/a;

    invoke-virtual {v3, v4}, Lc/d/a/c/d0/a;->setBadge(Lc/d/a/c/o/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lc/d/a/c/d0/c;->k:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iput-object p1, p0, Lc/d/a/c/d0/c;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 4

    iput p1, p0, Lc/d/a/c/d0/c;->r:I

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setItemBackground(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 4

    iput p1, p0, Lc/d/a/c/d0/c;->l:I

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setIconSize(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, Lc/d/a/c/d0/c;->p:I

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lc/d/a/c/d0/c;->m:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lc/d/a/c/d0/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, Lc/d/a/c/d0/c;->o:I

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lc/d/a/c/d0/c;->m:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lc/d/a/c/d0/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lc/d/a/c/d0/c;->m:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lc/d/a/c/d0/c;->h:[Lc/d/a/c/d0/a;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lc/d/a/c/d0/a;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Lc/d/a/c/d0/c;->g:I

    return-void
.end method

.method public setPresenter(Lc/d/a/c/d0/d;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/d0/c;->t:Lc/d/a/c/d0/d;

    return-void
.end method
