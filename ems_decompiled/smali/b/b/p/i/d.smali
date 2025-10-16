.class public final Lb/b/p/i/d;
.super Lb/b/p/i/k;
.source ""

# interfaces
.implements Lb/b/p/i/m;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/p/i/d$d;
    }
.end annotation


# static fields
.field public static final D:I


# instance fields
.field public A:Landroid/view/ViewTreeObserver;

.field public B:Landroid/widget/PopupWindow$OnDismissListener;

.field public C:Z

.field public final d:Landroid/content/Context;

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Landroid/os/Handler;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/p/i/g;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/b/p/i/d$d;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final m:Landroid/view/View$OnAttachStateChangeListener;

.field public final n:Lb/b/q/x;

.field public o:I

.field public p:I

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:I

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Z

.field public y:Z

.field public z:Lb/b/p/i/m$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lb/b/g;->abc_cascading_menu_item_layout:I

    sput v0, Lb/b/p/i/d;->D:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1

    invoke-direct {p0}, Lb/b/p/i/k;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/p/i/d;->j:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    new-instance v0, Lb/b/p/i/d$a;

    invoke-direct {v0, p0}, Lb/b/p/i/d$a;-><init>(Lb/b/p/i/d;)V

    iput-object v0, p0, Lb/b/p/i/d;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lb/b/p/i/d$b;

    invoke-direct {v0, p0}, Lb/b/p/i/d$b;-><init>(Lb/b/p/i/d;)V

    iput-object v0, p0, Lb/b/p/i/d;->m:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Lb/b/p/i/d$c;

    invoke-direct {v0, p0}, Lb/b/p/i/d$c;-><init>(Lb/b/p/i/d;)V

    iput-object v0, p0, Lb/b/p/i/d;->n:Lb/b/q/x;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/p/i/d;->o:I

    iput v0, p0, Lb/b/p/i/d;->p:I

    iput-object p1, p0, Lb/b/p/i/d;->d:Landroid/content/Context;

    iput-object p2, p0, Lb/b/p/i/d;->q:Landroid/view/View;

    iput p3, p0, Lb/b/p/i/d;->f:I

    iput p4, p0, Lb/b/p/i/d;->g:I

    iput-boolean p5, p0, Lb/b/p/i/d;->h:Z

    iput-boolean v0, p0, Lb/b/p/i/d;->x:Z

    .line 1
    sget-object p3, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    iput v0, p0, Lb/b/p/i/d;->s:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Lb/b/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lb/b/p/i/d;->e:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lb/b/p/i/d;->i:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lb/b/p/i/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/p/i/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/p/i/g;

    invoke-virtual {p0, v1}, Lb/b/p/i/d;->y(Lb/b/p/i/g;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/p/i/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lb/b/p/i/d;->q:Landroid/view/View;

    iput-object v0, p0, Lb/b/p/i/d;->r:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lb/b/p/i/d;->A:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lb/b/p/i/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/b/p/i/d;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v0, p0, Lb/b/p/i/d;->r:Landroid/view/View;

    iget-object v1, p0, Lb/b/p/i/d;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public b(Lb/b/p/i/g;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/p/i/d$d;

    iget-object v3, v3, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    if-ne p1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-gez v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    .line 2
    iget-object v3, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/p/i/d$d;

    iget-object v0, v0, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    invoke-virtual {v0, v1}, Lb/b/p/i/g;->c(Z)V

    :cond_3
    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/p/i/d$d;

    iget-object v2, v0, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    invoke-virtual {v2, p0}, Lb/b/p/i/g;->u(Lb/b/p/i/m;)V

    iget-boolean v2, p0, Lb/b/p/i/d;->C:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    iget-object v2, v0, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 4
    :cond_4
    iget-object v2, v0, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 5
    iget-object v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6
    :cond_5
    iget-object v0, v0, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    iget-object v4, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/p/i/d$d;

    iget v4, v4, Lb/b/p/i/d$d;->c:I

    goto :goto_2

    .line 7
    :cond_6
    iget-object v4, p0, Lb/b/p/i/d;->q:Landroid/view/View;

    .line 8
    sget-object v5, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_7

    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    .line 9
    :goto_2
    iput v4, p0, Lb/b/p/i/d;->s:I

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lb/b/p/i/d;->dismiss()V

    iget-object p2, p0, Lb/b/p/i/d;->z:Lb/b/p/i/m$a;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1, v2}, Lb/b/p/i/m$a;->b(Lb/b/p/i/g;Z)V

    :cond_8
    iget-object p1, p0, Lb/b/p/i/d;->A:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lb/b/p/i/d;->A:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Lb/b/p/i/d;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_9
    iput-object v3, p0, Lb/b/p/i/d;->A:Landroid/view/ViewTreeObserver;

    :cond_a
    iget-object p1, p0, Lb/b/p/i/d;->r:Landroid/view/View;

    iget-object p2, p0, Lb/b/p/i/d;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lb/b/p/i/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_c

    iget-object p1, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/p/i/d$d;

    iget-object p1, p1, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    invoke-virtual {p1, v1}, Lb/b/p/i/g;->c(Z)V

    :cond_c
    :goto_3
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/p/i/d$d;

    iget-object v0, v0, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public dismiss()V
    .locals 4

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    new-array v2, v0, [Lb/b/p/i/d$d;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lb/b/p/i/d$d;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v2, v1, v0

    iget-object v3, v2, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public f(Lb/b/p/i/r;)Z
    .locals 4

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/b/p/i/d$d;

    iget-object v3, v1, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    if-ne p1, v3, :cond_0

    .line 1
    iget-object p1, v1, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 2
    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_1
    invoke-virtual {p1}, Lb/b/p/i/g;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lb/b/p/i/d;->d:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    invoke-virtual {p0}, Lb/b/p/i/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lb/b/p/i/d;->y(Lb/b/p/i/g;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/b/p/i/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :goto_0
    iget-object v0, p0, Lb/b/p/i/d;->z:Lb/b/p/i/m$a;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lb/b/p/i/m$a;->c(Lb/b/p/i/g;)Z

    :cond_3
    return v2

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public g(Z)V
    .locals 2

    iget-object p1, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/p/i/d$d;

    .line 1
    iget-object v0, v0, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :cond_0
    check-cast v0, Lb/b/p/i/f;

    .line 5
    invoke-virtual {v0}, Lb/b/p/i/f;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public h()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/b/p/i/d$d;

    .line 1
    iget-object v0, v0, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    :goto_0
    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Lb/b/p/i/m$a;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/d;->z:Lb/b/p/i/m$a;

    return-void
.end method

.method public n(Lb/b/p/i/g;)V
    .locals 1

    iget-object v0, p0, Lb/b/p/i/d;->d:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    invoke-virtual {p0}, Lb/b/p/i/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb/b/p/i/d;->y(Lb/b/p/i/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/p/i/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDismiss()V
    .locals 5

    iget-object v0, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/b/p/i/d$d;

    iget-object v4, v3, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, v3, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    invoke-virtual {v0, v1}, Lb/b/p/i/g;->c(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lb/b/p/i/d;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public q(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lb/b/p/i/d;->q:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lb/b/p/i/d;->q:Landroid/view/View;

    iget v0, p0, Lb/b/p/i/d;->o:I

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    .line 2
    invoke-static {v0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 3
    iput p1, p0, Lb/b/p/i/d;->p:I

    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/p/i/d;->x:Z

    return-void
.end method

.method public s(I)V
    .locals 2

    iget v0, p0, Lb/b/p/i/d;->o:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lb/b/p/i/d;->o:I

    iget-object v0, p0, Lb/b/p/i/d;->q:Landroid/view/View;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    .line 3
    iput p1, p0, Lb/b/p/i/d;->p:I

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/p/i/d;->t:Z

    iput p1, p0, Lb/b/p/i/d;->v:I

    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/d;->B:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/p/i/d;->y:Z

    return-void
.end method

.method public w(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/p/i/d;->u:Z

    iput p1, p0, Lb/b/p/i/d;->w:I

    return-void
.end method

.method public final y(Lb/b/p/i/g;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v0, Lb/b/p/i/d;->d:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    new-instance v4, Lb/b/p/i/f;

    iget-boolean v5, v0, Lb/b/p/i/d;->h:Z

    sget v6, Lb/b/p/i/d;->D:I

    invoke-direct {v4, v1, v3, v5, v6}, Lb/b/p/i/f;-><init>(Lb/b/p/i/g;Landroid/view/LayoutInflater;ZI)V

    invoke-virtual/range {p0 .. p0}, Lb/b/p/i/d;->c()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lb/b/p/i/d;->x:Z

    if-eqz v5, :cond_0

    .line 1
    iput-boolean v6, v4, Lb/b/p/i/f;->e:Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lb/b/p/i/d;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p1 .. p1}, Lb/b/p/i/k;->x(Lb/b/p/i/g;)Z

    move-result v5

    .line 3
    iput-boolean v5, v4, Lb/b/p/i/f;->e:Z

    .line 4
    :cond_1
    :goto_0
    iget-object v5, v0, Lb/b/p/i/d;->d:Landroid/content/Context;

    iget v7, v0, Lb/b/p/i/d;->e:I

    const/4 v8, 0x0

    invoke-static {v4, v8, v5, v7}, Lb/b/p/i/k;->p(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v5

    .line 5
    new-instance v7, Lb/b/q/y;

    iget-object v9, v0, Lb/b/p/i/d;->d:Landroid/content/Context;

    iget v10, v0, Lb/b/p/i/d;->f:I

    iget v11, v0, Lb/b/p/i/d;->g:I

    invoke-direct {v7, v9, v8, v10, v11}, Lb/b/q/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v9, v0, Lb/b/p/i/d;->n:Lb/b/q/x;

    .line 6
    iput-object v9, v7, Lb/b/q/y;->F:Lb/b/q/x;

    .line 7
    iput-object v0, v7, Landroidx/appcompat/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemClickListener;

    .line 8
    iget-object v9, v7, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v9, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 9
    iget-object v9, v0, Lb/b/p/i/d;->q:Landroid/view/View;

    .line 10
    iput-object v9, v7, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroid/view/View;

    .line 11
    iget v9, v0, Lb/b/p/i/d;->p:I

    .line 12
    iput v9, v7, Landroidx/appcompat/widget/ListPopupWindow;->n:I

    .line 13
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/ListPopupWindow;->s(Z)V

    .line 14
    iget-object v9, v7, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 15
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/ListPopupWindow;->p(Landroid/widget/ListAdapter;)V

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/ListPopupWindow;->r(I)V

    iget v4, v0, Lb/b/p/i/d;->p:I

    .line 16
    iput v4, v7, Landroidx/appcompat/widget/ListPopupWindow;->n:I

    .line 17
    iget-object v4, v0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, v0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/p/i/d$d;

    .line 18
    iget-object v11, v4, Lb/b/p/i/d$d;->b:Lb/b/p/i/g;

    .line 19
    invoke-virtual {v11}, Lb/b/p/i/g;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    invoke-virtual {v11, v13}, Lb/b/p/i/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v15

    if-ne v1, v15, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object v14, v8

    :goto_2
    if-nez v14, :cond_4

    goto :goto_7

    .line 20
    :cond_4
    iget-object v11, v4, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 21
    iget-object v11, v11, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    .line 22
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_5

    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Lb/b/p/i/f;

    goto :goto_3

    :cond_5
    check-cast v12, Lb/b/p/i/f;

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v12}, Lb/b/p/i/f;->getCount()I

    move-result v15

    const/4 v10, 0x0

    :goto_4
    const/4 v8, -0x1

    if-ge v10, v15, :cond_7

    invoke-virtual {v12, v10}, Lb/b/p/i/f;->b(I)Lb/b/p/i/i;

    move-result-object v9

    if-ne v14, v9, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, -0x1

    :goto_5
    if-ne v10, v8, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr v10, v13

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v10, v8

    if-ltz v10, :cond_b

    invoke-virtual {v11}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v10, v8, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v11, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    goto :goto_7

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_6
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_18

    const/16 v9, 0x1c

    if-gt v2, v9, :cond_c

    .line 23
    sget-object v9, Lb/b/q/y;->G:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_d

    :try_start_0
    iget-object v10, v7, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    new-array v11, v6, [Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    const-string v9, "MenuPopupWindow"

    const-string v10, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    iget-object v9, v7, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    :cond_d
    :goto_8
    const/16 v9, 0x17

    if-lt v2, v9, :cond_e

    .line 24
    iget-object v9, v7, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 25
    :cond_e
    iget-object v9, v0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lb/b/p/i/d$d;

    .line 26
    iget-object v9, v9, Lb/b/p/i/d$d;->a:Lb/b/q/y;

    .line 27
    iget-object v9, v9, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    const/4 v10, 0x2

    new-array v11, v10, [I

    .line 28
    invoke-virtual {v9, v11}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lb/b/p/i/d;->r:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v12, v0, Lb/b/p/i/d;->s:I

    if-ne v12, v6, :cond_f

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v9}, Landroid/widget/ListView;->getWidth()I

    move-result v9

    add-int/2addr v9, v11

    add-int/2addr v9, v5

    iget v10, v10, Landroid/graphics/Rect;->right:I

    if-le v9, v10, :cond_10

    goto :goto_9

    :cond_f
    const/4 v12, 0x0

    aget v9, v11, v12

    sub-int/2addr v9, v5

    if-gez v9, :cond_11

    :cond_10
    const/4 v9, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v9, 0x0

    :goto_a
    if-ne v9, v6, :cond_12

    const/4 v13, 0x1

    goto :goto_b

    :cond_12
    const/4 v13, 0x0

    .line 29
    :goto_b
    iput v9, v0, Lb/b/p/i/d;->s:I

    const/16 v9, 0x1a

    const/4 v10, 0x5

    if-lt v2, v9, :cond_13

    .line 30
    iput-object v8, v7, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_d

    :cond_13
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 31
    iget-object v11, v0, Lb/b/p/i/d;->q:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v2, v2, [I

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v11, v0, Lb/b/p/i/d;->p:I

    and-int/lit8 v11, v11, 0x7

    if-ne v11, v10, :cond_14

    const/4 v11, 0x0

    aget v12, v9, v11

    iget-object v14, v0, Lb/b/p/i/d;->q:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v9, v11

    aget v12, v2, v11

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v2, v11

    goto :goto_c

    :cond_14
    const/4 v11, 0x0

    :goto_c
    aget v12, v2, v11

    aget v14, v9, v11

    sub-int v11, v12, v14

    aget v2, v2, v6

    aget v9, v9, v6

    sub-int/2addr v2, v9

    :goto_d
    iget v9, v0, Lb/b/p/i/d;->p:I

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_16

    if-eqz v13, :cond_15

    goto :goto_e

    :cond_15
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    goto :goto_f

    :cond_16
    if-eqz v13, :cond_17

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v5

    :goto_e
    add-int/2addr v11, v5

    goto :goto_10

    :cond_17
    :goto_f
    sub-int/2addr v11, v5

    .line 32
    :goto_10
    iput v11, v7, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    .line 33
    iput-boolean v6, v7, Landroidx/appcompat/widget/ListPopupWindow;->m:Z

    iput-boolean v6, v7, Landroidx/appcompat/widget/ListPopupWindow;->l:Z

    .line 34
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->j(I)V

    goto :goto_12

    :cond_18
    iget-boolean v2, v0, Lb/b/p/i/d;->t:Z

    if-eqz v2, :cond_19

    iget v2, v0, Lb/b/p/i/d;->v:I

    .line 35
    iput v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    .line 36
    :cond_19
    iget-boolean v2, v0, Lb/b/p/i/d;->u:Z

    if-eqz v2, :cond_1a

    iget v2, v0, Lb/b/p/i/d;->w:I

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/ListPopupWindow;->j(I)V

    .line 37
    :cond_1a
    iget-object v2, v0, Lb/b/p/i/k;->c:Landroid/graphics/Rect;

    if-eqz v2, :cond_1b

    .line 38
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_11

    :cond_1b
    const/4 v10, 0x0

    :goto_11
    iput-object v10, v7, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    .line 39
    :goto_12
    new-instance v2, Lb/b/p/i/d$d;

    iget v5, v0, Lb/b/p/i/d;->s:I

    invoke-direct {v2, v7, v1, v5}, Lb/b/p/i/d$d;-><init>(Lb/b/q/y;Lb/b/p/i/g;I)V

    iget-object v5, v0, Lb/b/p/i/d;->k:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    .line 40
    iget-object v2, v7, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v4, :cond_1c

    iget-boolean v4, v0, Lb/b/p/i/d;->y:Z

    if-eqz v4, :cond_1c

    .line 42
    iget-object v4, v1, Lb/b/p/i/g;->m:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1c

    .line 43
    sget v4, Lb/b/g;->abc_popup_menu_header_item_layout:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 44
    iget-object v1, v1, Lb/b/p/i/g;->m:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v7}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    :cond_1c
    return-void
.end method
