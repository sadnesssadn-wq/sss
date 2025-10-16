.class public Lb/b/k/x;
.super Landroidx/appcompat/app/ActionBar;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/k/x$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field public d:Landroidx/appcompat/widget/ActionBarContainer;

.field public e:Lb/b/q/r;

.field public f:Landroidx/appcompat/widget/ActionBarContextView;

.field public g:Landroid/view/View;

.field public h:Z

.field public i:Lb/b/k/x$d;

.field public j:Lb/b/p/a;

.field public k:Lb/b/p/a$a;

.field public l:Z

.field public m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$a;",
            ">;"
        }
    .end annotation
.end field

.field public n:Z

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lb/b/p/g;

.field public v:Z

.field public w:Z

.field public final x:Lb/i/m/z;

.field public final y:Lb/i/m/z;

.field public final z:Lb/i/m/b0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lb/b/k/x;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lb/b/k/x;->B:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/k/x;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/k/x;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/k/x;->p:Z

    iput-boolean v0, p0, Lb/b/k/x;->t:Z

    new-instance v0, Lb/b/k/x$a;

    invoke-direct {v0, p0}, Lb/b/k/x$a;-><init>(Lb/b/k/x;)V

    iput-object v0, p0, Lb/b/k/x;->x:Lb/i/m/z;

    new-instance v0, Lb/b/k/x$b;

    invoke-direct {v0, p0}, Lb/b/k/x$b;-><init>(Lb/b/k/x;)V

    iput-object v0, p0, Lb/b/k/x;->y:Lb/i/m/z;

    new-instance v0, Lb/b/k/x$c;

    invoke-direct {v0, p0}, Lb/b/k/x$c;-><init>(Lb/b/k/x;)V

    iput-object v0, p0, Lb/b/k/x;->z:Lb/i/m/b0;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/k/x;->C(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lb/b/k/x;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/k/x;->m:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/k/x;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/k/x;->p:Z

    iput-boolean v0, p0, Lb/b/k/x;->t:Z

    new-instance v0, Lb/b/k/x$a;

    invoke-direct {v0, p0}, Lb/b/k/x$a;-><init>(Lb/b/k/x;)V

    iput-object v0, p0, Lb/b/k/x;->x:Lb/i/m/z;

    new-instance v0, Lb/b/k/x$b;

    invoke-direct {v0, p0}, Lb/b/k/x$b;-><init>(Lb/b/k/x;)V

    iput-object v0, p0, Lb/b/k/x;->y:Lb/i/m/z;

    new-instance v0, Lb/b/k/x$c;

    invoke-direct {v0, p0}, Lb/b/k/x$c;-><init>(Lb/b/k/x;)V

    iput-object v0, p0, Lb/b/k/x;->z:Lb/i/m/b0;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/k/x;->C(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public A(Lb/b/p/a$a;)Lb/b/p/a;
    .locals 2

    iget-object v0, p0, Lb/b/k/x;->i:Lb/b/k/x$d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/k/x$d;->c()V

    :cond_0
    iget-object v0, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v0, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance v0, Lb/b/k/x$d;

    iget-object v1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lb/b/k/x$d;-><init>(Lb/b/k/x;Landroid/content/Context;Lb/b/p/a$a;)V

    .line 1
    iget-object p1, v0, Lb/b/k/x$d;->f:Lb/b/p/i/g;

    invoke-virtual {p1}, Lb/b/p/i/g;->B()V

    :try_start_0
    iget-object p1, v0, Lb/b/k/x$d;->g:Lb/b/p/a$a;

    iget-object v1, v0, Lb/b/k/x$d;->f:Lb/b/p/i/g;

    invoke-interface {p1, v0, v1}, Lb/b/p/a$a;->d(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lb/b/k/x$d;->f:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->A()V

    if-eqz p1, :cond_1

    .line 2
    iput-object v0, p0, Lb/b/k/x;->i:Lb/b/k/x$d;

    invoke-virtual {v0}, Lb/b/k/x$d;->i()V

    iget-object p1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lb/b/p/a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lb/b/k/x;->B(Z)V

    iget-object p1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, v0, Lb/b/k/x$d;->f:Lb/b/p/i/g;

    invoke-virtual {v0}, Lb/b/p/i/g;->A()V

    throw p1
.end method

.method public B(Z)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v1, p0, Lb/b/k/x;->s:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/b/k/x;->s:Z

    iget-object v2, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    invoke-virtual {p0, v0}, Lb/b/k/x;->F(Z)V

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean v1, p0, Lb/b/k/x;->s:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lb/b/k/x;->s:Z

    iget-object v1, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lb/b/k/x;->F(Z)V

    .line 3
    :cond_3
    :goto_0
    iget-object v1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    .line 4
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_7

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1, v2, v4, v5}, Lb/b/q/r;->v(IJ)Lb/i/m/y;

    move-result-object p1

    iget-object v1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0, v6, v7}, Lb/b/q/a;->e(IJ)Lb/i/m/y;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1, v0, v6, v7}, Lb/b/q/r;->v(IJ)Lb/i/m/y;

    move-result-object v0

    iget-object p1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3, v4, v5}, Lb/b/q/a;->e(IJ)Lb/i/m/y;

    move-result-object p1

    :goto_1
    new-instance v1, Lb/b/p/g;

    invoke-direct {v1}, Lb/b/p/g;-><init>()V

    .line 6
    iget-object v2, v1, Lb/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p1, Lb/i/m/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v2

    goto :goto_2

    :cond_5
    const-wide/16 v2, 0x0

    .line 8
    :goto_2
    iget-object p1, v0, Lb/i/m/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 9
    :cond_6
    iget-object p1, v1, Lb/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v1}, Lb/b/p/g;->b()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1, v2}, Lb/b/q/r;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1, v0}, Lb/b/q/r;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public final C(Landroid/view/View;)V
    .locals 5

    sget v0, Lb/b/f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$d;)V

    :cond_0
    sget v0, Lb/b/f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1
    instance-of v1, v0, Lb/b/q/r;

    if-eqz v1, :cond_1

    check-cast v0, Lb/b/q/r;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Lb/b/q/r;

    move-result-object v0

    .line 2
    :goto_0
    iput-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    sget v0, Lb/b/f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    sget v0, Lb/b/f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lb/b/k/x;->f:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_a

    if-eqz p1, :cond_a

    invoke-interface {v0}, Lb/b/q/r;->n()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/b/k/x;->a:Landroid/content/Context;

    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1}, Lb/b/q/r;->r()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lb/b/k/x;->h:Z

    :cond_3
    iget-object v2, p0, Lb/b/k/x;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p1, 0x1

    .line 4
    :goto_4
    iget-object v3, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v3, p1}, Lb/b/q/r;->m(Z)V

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lb/b/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lb/b/k/x;->E(Z)V

    iget-object p1, p0, Lb/b/k/x;->a:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lb/b/j;->ActionBar:[I

    sget v4, Lb/b/a;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v2, Lb/b/j;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7
    iget-object v2, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 8
    iget-boolean v3, v2, Landroidx/appcompat/widget/ActionBarOverlayLayout;->j:Z

    if-eqz v3, :cond_7

    .line 9
    iput-boolean v0, p0, Lb/b/k/x;->w:Z

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_8
    :goto_5
    sget v0, Lb/b/j;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_9

    int-to-float v0, v0

    .line 11
    iget-object v1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1, v0}, Lb/i/m/r;->D(Landroid/view/View;F)V

    .line 12
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lb/b/k/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    const-string v0, "null"

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public D(II)V
    .locals 2

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0}, Lb/b/q/r;->r()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/b/k/x;->h:Z

    :cond_0
    iget-object v1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    and-int/2addr p1, p2

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Lb/b/q/r;->p(I)V

    return-void
.end method

.method public final E(Z)V
    .locals 4

    iput-boolean p1, p0, Lb/b/k/x;->n:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1, v0}, Lb/b/q/r;->k(Lb/b/q/c0;)V

    iget-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lb/b/q/c0;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Lb/b/q/c0;)V

    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1, v0}, Lb/b/q/r;->k(Lb/b/q/c0;)V

    .line 1
    :goto_0
    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {p1}, Lb/b/q/r;->u()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_1
    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    iget-boolean v3, p0, Lb/b/k/x;->n:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0, v3}, Lb/b/q/r;->y(Z)V

    iget-object v0, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lb/b/k/x;->n:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public final F(Z)V
    .locals 8

    iget-boolean v0, p0, Lb/b/k/x;->q:Z

    iget-boolean v1, p0, Lb/b/k/x;->r:Z

    iget-boolean v2, p0, Lb/b/k/x;->s:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const-wide/16 v1, 0xfa

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lb/b/k/x;->t:Z

    if-nez v0, :cond_18

    iput-boolean v3, p0, Lb/b/k/x;->t:Z

    .line 1
    iget-object v0, p0, Lb/b/k/x;->u:Lb/b/p/g;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/b/p/g;->a()V

    :cond_3
    iget-object v0, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lb/b/k/x;->o:I

    const/4 v4, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lb/b/k/x;->v:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_b

    :cond_4
    iget-object v0, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_5

    new-array p1, v5, [I

    fill-array-data p1, :array_0

    iget-object v5, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    :cond_5
    iget-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    new-instance p1, Lb/b/p/g;

    invoke-direct {p1}, Lb/b/p/g;-><init>()V

    iget-object v3, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v3}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object v3

    invoke-virtual {v3, v4}, Lb/i/m/y;->g(F)Lb/i/m/y;

    iget-object v5, p0, Lb/b/k/x;->z:Lb/i/m/b0;

    invoke-virtual {v3, v5}, Lb/i/m/y;->f(Lb/i/m/b0;)Lb/i/m/y;

    .line 2
    iget-boolean v5, p1, Lb/b/p/g;->e:Z

    if-nez v5, :cond_6

    iget-object v5, p1, Lb/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_6
    iget-boolean v3, p0, Lb/b/k/x;->p:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lb/b/k/x;->g:Landroid/view/View;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lb/b/k/x;->g:Landroid/view/View;

    invoke-static {v0}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object v0

    invoke-virtual {v0, v4}, Lb/i/m/y;->g(F)Lb/i/m/y;

    .line 4
    iget-boolean v3, p1, Lb/b/p/g;->e:Z

    if-nez v3, :cond_7

    iget-object v3, p1, Lb/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_7
    sget-object v0, Lb/b/k/x;->B:Landroid/view/animation/Interpolator;

    .line 6
    iget-boolean v3, p1, Lb/b/p/g;->e:Z

    if-nez v3, :cond_8

    iput-object v0, p1, Lb/b/p/g;->c:Landroid/view/animation/Interpolator;

    :cond_8
    if-nez v3, :cond_9

    .line 7
    iput-wide v1, p1, Lb/b/p/g;->b:J

    .line 8
    :cond_9
    iget-object v0, p0, Lb/b/k/x;->y:Lb/i/m/z;

    if-nez v3, :cond_a

    .line 9
    iput-object v0, p1, Lb/b/p/g;->d:Lb/i/m/z;

    .line 10
    :cond_a
    iput-object p1, p0, Lb/b/k/x;->u:Lb/b/p/g;

    invoke-virtual {p1}, Lb/b/p/g;->b()V

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-boolean p1, p0, Lb/b/k/x;->p:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lb/b/k/x;->g:Landroid/view/View;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_c
    iget-object p1, p0, Lb/b/k/x;->y:Lb/i/m/z;

    invoke-interface {p1, v7}, Lb/i/m/z;->b(Landroid/view/View;)V

    :goto_3
    iget-object p1, p0, Lb/b/k/x;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_18

    .line 11
    sget-object v0, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    goto/16 :goto_4

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->requestFitSystemWindows()V

    goto/16 :goto_4

    .line 12
    :cond_e
    iget-boolean v0, p0, Lb/b/k/x;->t:Z

    if-eqz v0, :cond_18

    iput-boolean v4, p0, Lb/b/k/x;->t:Z

    .line 13
    iget-object v0, p0, Lb/b/k/x;->u:Lb/b/p/g;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lb/b/p/g;->a()V

    :cond_f
    iget v0, p0, Lb/b/k/x;->o:I

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lb/b/k/x;->v:Z

    if-nez v0, :cond_10

    if-eqz p1, :cond_17

    :cond_10
    iget-object v0, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lb/b/p/g;

    invoke-direct {v0}, Lb/b/p/g;-><init>()V

    iget-object v4, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    if-eqz p1, :cond_11

    new-array p1, v5, [I

    fill-array-data p1, :array_1

    iget-object v5, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    aget p1, p1, v3

    int-to-float p1, p1

    sub-float/2addr v4, p1

    :cond_11
    iget-object p1, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object p1

    invoke-virtual {p1, v4}, Lb/i/m/y;->g(F)Lb/i/m/y;

    iget-object v3, p0, Lb/b/k/x;->z:Lb/i/m/b0;

    invoke-virtual {p1, v3}, Lb/i/m/y;->f(Lb/i/m/b0;)Lb/i/m/y;

    .line 14
    iget-boolean v3, v0, Lb/b/p/g;->e:Z

    if-nez v3, :cond_12

    iget-object v3, v0, Lb/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_12
    iget-boolean p1, p0, Lb/b/k/x;->p:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lb/b/k/x;->g:Landroid/view/View;

    if-eqz p1, :cond_13

    invoke-static {p1}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object p1

    invoke-virtual {p1, v4}, Lb/i/m/y;->g(F)Lb/i/m/y;

    .line 16
    iget-boolean v3, v0, Lb/b/p/g;->e:Z

    if-nez v3, :cond_13

    iget-object v3, v0, Lb/b/p/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_13
    sget-object p1, Lb/b/k/x;->A:Landroid/view/animation/Interpolator;

    .line 18
    iget-boolean v3, v0, Lb/b/p/g;->e:Z

    if-nez v3, :cond_14

    iput-object p1, v0, Lb/b/p/g;->c:Landroid/view/animation/Interpolator;

    :cond_14
    if-nez v3, :cond_15

    .line 19
    iput-wide v1, v0, Lb/b/p/g;->b:J

    .line 20
    :cond_15
    iget-object p1, p0, Lb/b/k/x;->x:Lb/i/m/z;

    if-nez v3, :cond_16

    .line 21
    iput-object p1, v0, Lb/b/p/g;->d:Lb/i/m/z;

    .line 22
    :cond_16
    iput-object v0, p0, Lb/b/k/x;->u:Lb/b/p/g;

    invoke-virtual {v0}, Lb/b/p/g;->b()V

    goto :goto_4

    :cond_17
    iget-object p1, p0, Lb/b/k/x;->x:Lb/i/m/z;

    invoke-interface {p1, v7}, Lb/i/m/z;->b(Landroid/view/View;)V

    :cond_18
    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/b/q/r;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0}, Lb/b/q/r;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .locals 3

    iget-boolean v0, p0, Lb/b/k/x;->l:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lb/b/k/x;->l:Z

    iget-object v0, p0, Lb/b/k/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lb/b/k/x;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$a;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$a;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0}, Lb/b/q/r;->r()I

    move-result v0

    return v0
.end method

.method public e()Landroid/content/Context;
    .locals 4

    iget-object v0, p0, Lb/b/k/x;->b:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lb/b/k/x;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lb/b/a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lb/b/k/x;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lb/b/k/x;->b:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/k/x;->a:Landroid/content/Context;

    iput-object v0, p0, Lb/b/k/x;->b:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lb/b/k/x;->b:Landroid/content/Context;

    return-object v0
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lb/b/k/x;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/k/x;->q:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/k/x;->F(Z)V

    :cond_0
    return-void
.end method

.method public h(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/x;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lb/b/b;->abc_action_bar_embed_tabs:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lb/b/k/x;->E(Z)V

    return-void
.end method

.method public j(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lb/b/k/x;->i:Lb/b/k/x$d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget-object v0, v0, Lb/b/k/x$d;->f:Lb/b/p/i/g;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-virtual {v0, p1, p2, v1}, Lb/b/p/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public m(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public n(Z)V
    .locals 1

    iget-boolean v0, p0, Lb/b/k/x;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/b/k/x;->D(II)V

    :cond_1
    return-void
.end method

.method public o(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/b/k/x;->D(II)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/b/k/x;->D(II)V

    return-void
.end method

.method public q(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/b/k/x;->D(II)V

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0, p1}, Lb/b/q/r;->z(I)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0, p1}, Lb/b/q/r;->m(Z)V

    return-void
.end method

.method public t(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/b/k/x;->v:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/k/x;->u:Lb/b/p/g;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/b/p/g;->a()V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0, p1}, Lb/b/q/r;->q(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/x;->e:Lb/b/q/r;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lb/b/q/r;->q(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w(I)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0, p1}, Lb/b/q/r;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public x(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0, p1}, Lb/b/q/r;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public y(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lb/b/k/x;->e:Lb/b/q/r;

    invoke-interface {v0, p1}, Lb/b/q/r;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z()V
    .locals 1

    iget-boolean v0, p0, Lb/b/k/x;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/k/x;->q:Z

    invoke-virtual {p0, v0}, Lb/b/k/x;->F(Z)V

    :cond_0
    return-void
.end method
