.class public final Lb/b/p/i/q;
.super Lb/b/p/i/k;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lb/b/p/i/m;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final x:I


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lb/b/p/i/g;

.field public final f:Lb/b/p/i/f;

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Lb/b/q/y;

.field public final l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final m:Landroid/view/View$OnAttachStateChangeListener;

.field public n:Landroid/widget/PopupWindow$OnDismissListener;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Lb/b/p/i/m$a;

.field public r:Landroid/view/ViewTreeObserver;

.field public s:Z

.field public t:Z

.field public u:I

.field public v:I

.field public w:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lb/b/g;->abc_popup_menu_item_layout:I

    sput v0, Lb/b/p/i/q;->x:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Lb/b/p/i/k;-><init>()V

    new-instance v0, Lb/b/p/i/q$a;

    invoke-direct {v0, p0}, Lb/b/p/i/q$a;-><init>(Lb/b/p/i/q;)V

    iput-object v0, p0, Lb/b/p/i/q;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lb/b/p/i/q$b;

    invoke-direct {v0, p0}, Lb/b/p/i/q$b;-><init>(Lb/b/p/i/q;)V

    iput-object v0, p0, Lb/b/p/i/q;->m:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/p/i/q;->v:I

    iput-object p1, p0, Lb/b/p/i/q;->d:Landroid/content/Context;

    iput-object p2, p0, Lb/b/p/i/q;->e:Lb/b/p/i/g;

    iput-boolean p6, p0, Lb/b/p/i/q;->g:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lb/b/p/i/f;

    sget v2, Lb/b/p/i/q;->x:I

    invoke-direct {v1, p2, v0, p6, v2}, Lb/b/p/i/f;-><init>(Lb/b/p/i/g;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Lb/b/p/i/q;->f:Lb/b/p/i/f;

    iput p4, p0, Lb/b/p/i/q;->i:I

    iput p5, p0, Lb/b/p/i/q;->j:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lb/b/d;->abc_config_prefDialogWidth:I

    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Lb/b/p/i/q;->h:I

    iput-object p3, p0, Lb/b/p/i/q;->o:Landroid/view/View;

    new-instance p3, Lb/b/q/y;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, Lb/b/q/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    invoke-virtual {p2, p0, p1}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lb/b/p/i/q;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lb/b/p/i/q;->s:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lb/b/p/i/q;->o:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-object v0, p0, Lb/b/p/i/q;->p:Landroid/view/View;

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3
    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 4
    iput-object p0, v0, Landroidx/appcompat/widget/ListPopupWindow;->s:Landroid/widget/AdapterView$OnItemClickListener;

    .line 5
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ListPopupWindow;->s(Z)V

    iget-object v0, p0, Lb/b/p/i/q;->p:Landroid/view/View;

    iget-object v3, p0, Lb/b/p/i/q;->r:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lb/b/p/i/q;->r:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lb/b/p/i/q;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Lb/b/p/i/q;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 6
    iput-object v0, v3, Landroidx/appcompat/widget/ListPopupWindow;->r:Landroid/view/View;

    .line 7
    iget v0, p0, Lb/b/p/i/q;->v:I

    .line 8
    iput v0, v3, Landroidx/appcompat/widget/ListPopupWindow;->n:I

    .line 9
    iget-boolean v0, p0, Lb/b/p/i/q;->t:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lb/b/p/i/q;->f:Lb/b/p/i/f;

    iget-object v4, p0, Lb/b/p/i/q;->d:Landroid/content/Context;

    iget v5, p0, Lb/b/p/i/q;->h:I

    invoke-static {v0, v3, v4, v5}, Lb/b/p/i/k;->p(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lb/b/p/i/q;->u:I

    iput-boolean v2, p0, Lb/b/p/i/q;->t:Z

    :cond_4
    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    iget v4, p0, Lb/b/p/i/q;->u:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->r(I)V

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    const/4 v4, 0x2

    .line 10
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 11
    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 12
    iget-object v4, p0, Lb/b/p/i/k;->c:Landroid/graphics/Rect;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_5

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    iput-object v5, v0, Landroidx/appcompat/widget/ListPopupWindow;->z:Landroid/graphics/Rect;

    .line 14
    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 15
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Lb/b/p/i/q;->w:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lb/b/p/i/q;->e:Lb/b/p/i/g;

    .line 17
    iget-object v4, v4, Lb/b/p/i/g;->m:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 18
    iget-object v4, p0, Lb/b/p/i/q;->d:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lb/b/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_6

    iget-object v6, p0, Lb/b/p/i/q;->e:Lb/b/p/i/g;

    .line 19
    iget-object v6, v6, Lb/b/p/i/g;->m:Ljava/lang/CharSequence;

    .line 20
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v0, v4, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_7
    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    iget-object v1, p0, Lb/b/p/i/q;->f:Lb/b/p/i/f;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->p(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->a()V

    goto/16 :goto_0

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    return-void

    .line 21
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public b(Lb/b/p/i/g;Z)V
    .locals 1

    iget-object v0, p0, Lb/b/p/i/q;->e:Lb/b/p/i/g;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lb/b/p/i/q;->dismiss()V

    iget-object v0, p0, Lb/b/p/i/q;->q:Lb/b/p/i/m$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lb/b/p/i/m$a;->b(Lb/b/p/i/g;Z)V

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lb/b/p/i/q;->s:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lb/b/p/i/q;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public e(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public f(Lb/b/p/i/r;)Z
    .locals 9

    invoke-virtual {p1}, Lb/b/p/i/g;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Lb/b/p/i/l;

    iget-object v3, p0, Lb/b/p/i/q;->d:Landroid/content/Context;

    iget-object v5, p0, Lb/b/p/i/q;->p:Landroid/view/View;

    iget-boolean v6, p0, Lb/b/p/i/q;->g:Z

    iget v7, p0, Lb/b/p/i/q;->i:I

    iget v8, p0, Lb/b/p/i/q;->j:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lb/b/p/i/l;-><init>(Landroid/content/Context;Lb/b/p/i/g;Landroid/view/View;ZII)V

    iget-object v2, p0, Lb/b/p/i/q;->q:Lb/b/p/i/m$a;

    invoke-virtual {v0, v2}, Lb/b/p/i/l;->d(Lb/b/p/i/m$a;)V

    invoke-static {p1}, Lb/b/p/i/k;->x(Lb/b/p/i/g;)Z

    move-result v2

    .line 1
    iput-boolean v2, v0, Lb/b/p/i/l;->h:Z

    iget-object v3, v0, Lb/b/p/i/l;->j:Lb/b/p/i/k;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lb/b/p/i/k;->r(Z)V

    .line 2
    :cond_0
    iget-object v2, p0, Lb/b/p/i/q;->n:Landroid/widget/PopupWindow$OnDismissListener;

    .line 3
    iput-object v2, v0, Lb/b/p/i/l;->k:Landroid/widget/PopupWindow$OnDismissListener;

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lb/b/p/i/q;->n:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Lb/b/p/i/q;->e:Lb/b/p/i/g;

    invoke-virtual {v2, v1}, Lb/b/p/i/g;->c(Z)V

    iget-object v2, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 5
    iget v3, v2, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    .line 6
    iget-boolean v4, v2, Landroidx/appcompat/widget/ListPopupWindow;->k:Z

    if-nez v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, v2, Landroidx/appcompat/widget/ListPopupWindow;->i:I

    .line 7
    :goto_0
    iget v4, p0, Lb/b/p/i/q;->v:I

    iget-object v5, p0, Lb/b/p/i/q;->o:Landroid/view/View;

    .line 8
    sget-object v6, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    .line 9
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lb/b/p/i/q;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 10
    :cond_2
    invoke-virtual {v0}, Lb/b/p/i/l;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lb/b/p/i/l;->f:Landroid/view/View;

    if-nez v4, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, Lb/b/p/i/l;->e(IIZZ)V

    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lb/b/p/i/q;->q:Lb/b/p/i/m$a;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lb/b/p/i/m$a;->c(Lb/b/p/i/g;)Z

    :cond_5
    return v5

    :cond_6
    return v1
.end method

.method public g(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/p/i/q;->t:Z

    iget-object p1, p0, Lb/b/p/i/q;->f:Lb/b/p/i/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/p/i/f;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public h()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/ListPopupWindow;->e:Lb/b/q/t;

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

    iput-object p1, p0, Lb/b/p/i/q;->q:Lb/b/p/i/m$a;

    return-void
.end method

.method public n(Lb/b/p/i/g;)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/p/i/q;->s:Z

    iget-object v1, p0, Lb/b/p/i/q;->e:Lb/b/p/i/g;

    .line 1
    invoke-virtual {v1, v0}, Lb/b/p/i/g;->c(Z)V

    .line 2
    iget-object v0, p0, Lb/b/p/i/q;->r:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/p/i/q;->p:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lb/b/p/i/q;->r:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Lb/b/p/i/q;->r:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lb/b/p/i/q;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/p/i/q;->r:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Lb/b/p/i/q;->p:Landroid/view/View;

    iget-object v1, p0, Lb/b/p/i/q;->m:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lb/b/p/i/q;->n:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

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

    invoke-virtual {p0}, Lb/b/p/i/q;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public q(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/q;->o:Landroid/view/View;

    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/p/i/q;->f:Lb/b/p/i/f;

    .line 1
    iput-boolean p1, v0, Lb/b/p/i/f;->e:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lb/b/p/i/q;->v:I

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 1
    iput p1, v0, Landroidx/appcompat/widget/ListPopupWindow;->h:I

    return-void
.end method

.method public u(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lb/b/p/i/q;->n:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public v(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/p/i/q;->w:Z

    return-void
.end method

.method public w(I)V
    .locals 1

    iget-object v0, p0, Lb/b/p/i/q;->k:Lb/b/q/y;

    .line 1
    iput p1, v0, Landroidx/appcompat/widget/ListPopupWindow;->i:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/widget/ListPopupWindow;->k:Z

    return-void
.end method
