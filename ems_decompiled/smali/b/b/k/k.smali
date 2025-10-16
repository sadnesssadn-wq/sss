.class public Lb/b/k/k;
.super Lb/b/k/j;
.source ""

# interfaces
.implements Lb/b/p/i/g$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/k/k$c;,
        Lb/b/k/k$g;,
        Lb/b/k/k$i;,
        Lb/b/k/k$h;,
        Lb/b/k/k$f;,
        Lb/b/k/k$j;,
        Lb/b/k/k$k;,
        Lb/b/k/k$d;,
        Lb/b/k/k$l;,
        Lb/b/k/k$e;
    }
.end annotation


# static fields
.field public static final b0:Lb/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/h<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c0:Z

.field public static final d0:[I

.field public static final e0:Z

.field public static final f0:Z

.field public static g0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:[Lb/b/k/k$k;

.field public H:Lb/b/k/k$k;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:I

.field public O:I

.field public P:Z

.field public Q:Z

.field public R:Lb/b/k/k$h;

.field public S:Lb/b/k/k$h;

.field public T:Z

.field public U:I

.field public final V:Ljava/lang/Runnable;

.field public W:Z

.field public X:Landroid/graphics/Rect;

.field public Y:Landroid/graphics/Rect;

.field public Z:Lb/b/k/s;

.field public a0:Lb/b/k/t;

.field public final e:Ljava/lang/Object;

.field public final f:Landroid/content/Context;

.field public g:Landroid/view/Window;

.field public h:Lb/b/k/k$f;

.field public final i:Lb/b/k/i;

.field public j:Landroidx/appcompat/app/ActionBar;

.field public k:Landroid/view/MenuInflater;

.field public l:Ljava/lang/CharSequence;

.field public m:Lb/b/q/q;

.field public n:Lb/b/k/k$d;

.field public o:Lb/b/k/k$l;

.field public p:Lb/b/p/a;

.field public q:Landroidx/appcompat/widget/ActionBarContextView;

.field public r:Landroid/widget/PopupWindow;

.field public s:Ljava/lang/Runnable;

.field public t:Lb/i/m/y;

.field public u:Z

.field public v:Landroid/view/ViewGroup;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/view/View;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lb/f/h;

    invoke-direct {v0}, Lb/f/h;-><init>()V

    sput-object v0, Lb/b/k/k;->b0:Lb/f/h;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lb/b/k/k;->c0:Z

    new-array v3, v2, [I

    const v4, 0x1010054

    aput v4, v3, v1

    sput-object v3, Lb/b/k/k;->d0:[I

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "robolectric"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lb/b/k/k;->e0:Z

    sput-boolean v2, Lb/b/k/k;->f0:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lb/b/k/k;->g0:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v1, Lb/b/k/k$a;

    invoke-direct {v1, v0}, Lb/b/k/k$a;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v2, Lb/b/k/k;->g0:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lb/b/k/i;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lb/b/k/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/b/k/k;->t:Lb/i/m/y;

    const/16 v1, -0x64

    iput v1, p0, Lb/b/k/k;->N:I

    new-instance v2, Lb/b/k/k$b;

    invoke-direct {v2, p0}, Lb/b/k/k$b;-><init>(Lb/b/k/k;)V

    iput-object v2, p0, Lb/b/k/k;->V:Ljava/lang/Runnable;

    iput-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    iput-object p3, p0, Lb/b/k/k;->i:Lb/b/k/i;

    iput-object p4, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    instance-of p3, p1, Lb/b/k/h;

    if-eqz p3, :cond_0

    check-cast p1, Lb/b/k/h;

    goto :goto_1

    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lb/b/k/h;->getDelegate()Lb/b/k/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/k/j;->g()I

    move-result p1

    iput p1, p0, Lb/b/k/k;->N:I

    :cond_2
    iget p1, p0, Lb/b/k/k;->N:I

    if-ne p1, v1, :cond_3

    sget-object p1, Lb/b/k/k;->b0:Lb/f/h;

    iget-object p3, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-virtual {p1, p3, v0}, Lb/f/h;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 4
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lb/b/k/k;->N:I

    iget-object p3, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lb/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lb/b/k/k;->E(Landroid/view/Window;)V

    :cond_4
    invoke-static {}, Lb/b/q/g;->e()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lb/b/k/k;->l:Ljava/lang/CharSequence;

    iget-object v0, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lb/b/q/q;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->y(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/k/k;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public B(Lb/b/p/a$a;)Lb/b/p/a;
    .locals 7

    if-eqz p1, :cond_11

    iget-object v0, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/p/a;->c()V

    :cond_0
    new-instance v0, Lb/b/k/k$e;

    invoke-direct {v0, p0, p1}, Lb/b/k/k$e;-><init>(Lb/b/k/k;Lb/b/p/a$a;)V

    .line 1
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object p1, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->A(Lb/b/p/a$a;)Lb/b/p/a;

    move-result-object p1

    iput-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lb/b/k/k;->i:Lb/b/k/i;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lb/b/k/i;->onSupportActionModeStarted(Lb/b/p/a;)V

    :cond_1
    iget-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-nez p1, :cond_10

    .line 3
    invoke-virtual {p0}, Lb/b/k/k;->L()V

    iget-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb/b/p/a;->c()V

    :cond_2
    iget-object p1, p0, Lb/b/k/k;->i:Lb/b/k/i;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lb/b/k/k;->M:Z

    if-nez v2, :cond_3

    :try_start_0
    invoke-interface {p1, v0}, Lb/b/k/i;->onWindowStartingSupportActionMode(Lb/b/p/a$a;)Lb/b/p/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    iput-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    goto/16 :goto_6

    :cond_4
    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lb/b/k/k;->D:Z

    if-eqz p1, :cond_6

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lb/b/a;->actionBarTheme:I

    invoke-virtual {v4, v5, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_5

    iget-object v5, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lb/b/p/c;

    iget-object v6, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-direct {v4, v6, v3}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lb/b/k/k;->f:Landroid/content/Context;

    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    invoke-direct {v5, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object v5, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Lb/b/a;->actionModePopupWindowStyle:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    invoke-static {v5, v6}, La/a/a/a/a;->p0(Landroid/widget/PopupWindow;I)V

    iget-object v5, p0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Lb/b/a;->actionBarSize:I

    invoke-virtual {v5, v6, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iget-object v4, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    iget-object p1, p0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {p1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance p1, Lb/b/k/o;

    invoke-direct {p1, p0}, Lb/b/k/o;-><init>(Lb/b/k/k;)V

    iput-object p1, p0, Lb/b/k/k;->s:Ljava/lang/Runnable;

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    sget v4, Lb/b/f;->action_mode_bar_stub:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz p1, :cond_9

    .line 6
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v4, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v4, :cond_7

    .line 7
    invoke-virtual {v4}, Landroidx/appcompat/app/ActionBar;->e()Landroid/content/Context;

    move-result-object v4

    goto :goto_2

    :cond_7
    move-object v4, v1

    :goto_2
    if-nez v4, :cond_8

    iget-object v4, p0, Lb/b/k/k;->f:Landroid/content/Context;

    .line 8
    :cond_8
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    :cond_9
    :goto_3
    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lb/b/k/k;->L()V

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->h()V

    new-instance p1, Lb/b/p/d;

    iget-object v4, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    if-nez v6, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    invoke-direct {p1, v4, v5, v0, v2}, Lb/b/p/d;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Lb/b/p/a$a;Z)V

    .line 9
    iget-object v2, p1, Lb/b/p/d;->j:Lb/b/p/i/g;

    .line 10
    iget-object v0, v0, Lb/b/k/k$e;->a:Lb/b/p/a$a;

    invoke-interface {v0, p1, v2}, Lb/b/p/a$a;->d(Lb/b/p/a;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11
    invoke-virtual {p1}, Lb/b/p/d;->i()V

    iget-object v0, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->f(Lb/b/p/a;)V

    iput-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    invoke-virtual {p0}, Lb/b/k/k;->Y()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_b

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object p1

    invoke-virtual {p1, v0}, Lb/i/m/y;->a(F)Lb/i/m/y;

    iput-object p1, p0, Lb/b/k/k;->t:Lb/i/m/y;

    new-instance v0, Lb/b/k/p;

    invoke-direct {v0, p0}, Lb/b/k/p;-><init>(Lb/b/k/k;)V

    .line 12
    iget-object v1, p1, Lb/i/m/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_c

    invoke-virtual {p1, v1, v0}, Lb/i/m/y;->e(Landroid/view/View;Lb/i/m/z;)V

    goto :goto_5

    .line 13
    :cond_b
    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_c

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lb/i/m/r;->z(Landroid/view/View;)V

    :cond_c
    :goto_5
    iget-object p1, p0, Lb/b/k/k;->r:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/b/k/k;->s:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_d
    iput-object v1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    :cond_e
    :goto_6
    iget-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lb/b/k/k;->i:Lb/b/k/i;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lb/b/k/i;->onSupportActionModeStarted(Lb/b/p/a;)V

    :cond_f
    iget-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    .line 14
    iput-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    :cond_10
    iget-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb/b/k/k;->D(Z)Z

    move-result v0

    return v0
.end method

.method public final D(Z)Z
    .locals 14

    iget-boolean v0, p0, Lb/b/k/k;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    iget v0, p0, Lb/b/k/k;->N:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    .line 2
    :goto_0
    iget-object v2, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lb/b/k/k;->U(Landroid/content/Context;I)I

    move-result v2

    .line 3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v4, p0, Lb/b/k/k;->f:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v5}, Lb/b/k/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v4

    .line 4
    iget-boolean v6, p0, Lb/b/k/k;->Q:Z

    const/16 v7, 0x18

    const/4 v8, 0x1

    if-nez v6, :cond_6

    iget-object v6, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_4

    :cond_2
    const/16 v9, 0x1d

    if-lt v3, v9, :cond_3

    const/high16 v9, 0x100c0000

    goto :goto_1

    :cond_3
    if-lt v3, v7, :cond_4

    const/high16 v9, 0xc0000

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    :try_start_0
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, p0, Lb/b/k/k;->f:Landroid/content/Context;

    iget-object v12, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v10, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget v6, v6, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, p0, Lb/b/k/k;->P:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    const-string v9, "AppCompatDelegate"

    const-string v10, "Exception while getting ActivityInfo"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lb/b/k/k;->P:Z

    :cond_6
    :goto_3
    iput-boolean v8, p0, Lb/b/k/k;->Q:Z

    iget-boolean v6, p0, Lb/b/k/k;->P:Z

    .line 5
    :goto_4
    iget-object v9, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v9, v9, 0x30

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v10, 0x1c

    const/16 v11, 0x17

    if-eq v9, v4, :cond_b

    if-eqz p1, :cond_b

    if-nez v6, :cond_b

    iget-boolean p1, p0, Lb/b/k/k;->J:Z

    if-eqz p1, :cond_b

    sget-boolean p1, Lb/b/k/k;->e0:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lb/b/k/k;->K:Z

    if-eqz p1, :cond_b

    :cond_7
    iget-object p1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v12, p1, Landroid/app/Activity;

    if-eqz v12, :cond_b

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    .line 6
    sget v12, Lb/i/e/a;->b:I

    if-lt v3, v10, :cond_8

    goto :goto_5

    :cond_8
    if-gt v3, v11, :cond_9

    new-instance v12, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v13, Lb/i/e/b;

    invoke-direct {v13, p1}, Lb/i/e/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    invoke-static {p1}, Lb/i/e/d;->b(Landroid/app/Activity;)Z

    move-result v12

    if-nez v12, :cond_a

    :goto_5
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_a
    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    :goto_7
    if-nez p1, :cond_1c

    if-eq v9, v4, :cond_1c

    .line 7
    iget-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v9, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v12, v12, -0x31

    or-int/2addr v4, v12

    iput v4, v9, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v9, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_18

    if-lt v3, v10, :cond_c

    goto/16 :goto_10

    :cond_c
    const-string v4, "mDrawableCache"

    const-string v10, "ResourcesFlusher"

    if-lt v3, v7, :cond_12

    .line 8
    sget-boolean v7, La/a/a/a/a;->h:Z

    if-nez v7, :cond_d

    :try_start_1
    const-class v7, Landroid/content/res/Resources;

    const-string v12, "mResourcesImpl"

    invoke-virtual {v7, v12}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    sput-object v7, La/a/a/a/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v7

    const-string v12, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v10, v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    sput-boolean v8, La/a/a/a/a;->h:Z

    :cond_d
    sget-object v7, La/a/a/a/a;->g:Ljava/lang/reflect/Field;

    if-nez v7, :cond_e

    goto/16 :goto_10

    :cond_e
    :try_start_2
    invoke-virtual {v7, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    const-string v7, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v10, v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v5

    :goto_9
    if-nez p1, :cond_f

    goto/16 :goto_10

    :cond_f
    sget-boolean v7, La/a/a/a/a;->b:Z

    if-nez v7, :cond_10

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, La/a/a/a/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_a

    :catch_3
    move-exception v4

    const-string v7, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v10, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    sput-boolean v8, La/a/a/a/a;->b:Z

    :cond_10
    sget-object v4, La/a/a/a/a;->a:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_11

    :try_start_4
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception p1

    const-string v4, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v10, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_b
    if-eqz v5, :cond_18

    invoke-static {v5}, La/a/a/a/a;->A(Ljava/lang/Object;)V

    goto :goto_10

    :cond_12
    const-string v7, "Could not retrieve Resources#mDrawableCache field"

    const-string v12, "Could not retrieve value from Resources#mDrawableCache"

    if-lt v3, v11, :cond_16

    .line 9
    sget-boolean v13, La/a/a/a/a;->b:Z

    if-nez v13, :cond_13

    :try_start_5
    const-class v13, Landroid/content/res/Resources;

    invoke-virtual {v13, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, La/a/a/a/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_c

    :catch_5
    move-exception v4

    invoke-static {v10, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    sput-boolean v8, La/a/a/a/a;->b:Z

    :cond_13
    sget-object v4, La/a/a/a/a;->a:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_14

    :try_start_6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    invoke-static {v10, v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_d
    if-nez v5, :cond_15

    goto :goto_10

    :cond_15
    invoke-static {v5}, La/a/a/a/a;->A(Ljava/lang/Object;)V

    goto :goto_10

    :cond_16
    const/16 v13, 0x15

    if-lt v3, v13, :cond_18

    .line 10
    sget-boolean v13, La/a/a/a/a;->b:Z

    if-nez v13, :cond_17

    :try_start_7
    const-class v13, Landroid/content/res/Resources;

    invoke-virtual {v13, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, La/a/a/a/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    :catch_7
    move-exception v4

    invoke-static {v10, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    sput-boolean v8, La/a/a/a/a;->b:Z

    :cond_17
    sget-object v4, La/a/a/a/a;->a:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_18

    :try_start_8
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v5, p1

    goto :goto_f

    :catch_8
    move-exception p1

    invoke-static {v10, v12, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    if-eqz v5, :cond_18

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 11
    :cond_18
    :goto_10
    iget p1, p0, Lb/b/k/k;->O:I

    if-eqz p1, :cond_19

    iget-object v4, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->setTheme(I)V

    if-lt v3, v11, :cond_19

    iget-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v3, p0, Lb/b/k/k;->O:I

    invoke-virtual {p1, v3, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_19
    if-eqz v6, :cond_1d

    iget-object p1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_1d

    check-cast p1, Landroid/app/Activity;

    instance-of v3, p1, Lb/o/j;

    if-eqz v3, :cond_1b

    move-object v3, p1

    check-cast v3, Lb/o/j;

    invoke-interface {v3}, Lb/o/j;->getLifecycle()Lb/o/f;

    move-result-object v3

    check-cast v3, Lb/o/k;

    .line 12
    iget-object v3, v3, Lb/o/k;->b:Lb/o/f$b;

    .line 13
    sget-object v4, Lb/o/f$b;->f:Lb/o/f$b;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    if-eqz v1, :cond_1d

    goto :goto_11

    .line 15
    :cond_1b
    iget-boolean v1, p0, Lb/b/k/k;->L:Z

    if-eqz v1, :cond_1d

    :goto_11
    invoke-virtual {p1, v9}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_12

    :cond_1c
    move v8, p1

    :cond_1d
    :goto_12
    if-eqz v8, :cond_1e

    .line 16
    iget-object p1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, p1, Lb/b/k/h;

    if-eqz v1, :cond_1e

    check-cast p1, Lb/b/k/h;

    invoke-virtual {p1, v2}, Lb/b/k/h;->onNightModeChanged(I)V

    :cond_1e
    if-nez v0, :cond_1f

    .line 17
    iget-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lb/b/k/k;->P(Landroid/content/Context;)Lb/b/k/k$h;

    move-result-object p1

    invoke-virtual {p1}, Lb/b/k/k$h;->e()V

    goto :goto_13

    :cond_1f
    iget-object p1, p0, Lb/b/k/k;->R:Lb/b/k/k$h;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lb/b/k/k$h;->a()V

    :cond_20
    :goto_13
    const/4 p1, 0x3

    if-ne v0, p1, :cond_22

    iget-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    .line 18
    iget-object v0, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    if-nez v0, :cond_21

    new-instance v0, Lb/b/k/k$g;

    invoke-direct {v0, p0, p1}, Lb/b/k/k$g;-><init>(Lb/b/k/k;Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    :cond_21
    iget-object p1, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    .line 19
    invoke-virtual {p1}, Lb/b/k/k$h;->e()V

    goto :goto_14

    :cond_22
    iget-object p1, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lb/b/k/k$h;->a()V

    :cond_23
    :goto_14
    return v8
.end method

.method public final E(Landroid/view/Window;)V
    .locals 3

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    instance-of v2, v0, Lb/b/k/k$f;

    if-nez v2, :cond_1

    new-instance v1, Lb/b/k/k$f;

    invoke-direct {v1, p0, v0}, Lb/b/k/k$f;-><init>(Lb/b/k/k;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lb/b/k/k;->d0:[I

    invoke-static {v0, v1, v2}, Lb/b/q/j0;->q(Landroid/content/Context;Landroid/util/AttributeSet;[I)Lb/b/q/j0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/b/q/j0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1
    :cond_0
    iget-object v0, v0, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2
    iput-object p1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(ILb/b/k/k$k;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    iget-object p3, p2, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lb/b/k/k$k;->m:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-boolean p2, p0, Lb/b/k/k;->M:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    .line 1
    iget-object p2, p2, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public G(Lb/b/p/i/g;)V
    .locals 2

    iget-boolean v0, p0, Lb/b/k/k;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/k/k;->F:Z

    iget-object v0, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {v0}, Lb/b/q/q;->l()V

    invoke-virtual {p0}, Lb/b/k/k;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lb/b/k/k;->M:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/b/k/k;->F:Z

    return-void
.end method

.method public H(Lb/b/k/k$k;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget v0, p1, Lb/b/k/k$k;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/b/q/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {p0, p1}, Lb/b/k/k;->G(Lb/b/p/i/g;)V

    return-void

    :cond_0
    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p1, Lb/b/k/k$k;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    iget p2, p1, Lb/b/k/k$k;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lb/b/k/k;->F(ILb/b/k/k$k;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    iput-boolean p2, p1, Lb/b/k/k$k;->k:Z

    iput-boolean p2, p1, Lb/b/k/k$k;->l:Z

    iput-boolean p2, p1, Lb/b/k/k$k;->m:Z

    iput-object v1, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lb/b/k/k$k;->o:Z

    iget-object p2, p0, Lb/b/k/k;->H:Lb/b/k/k$k;

    if-ne p2, p1, :cond_2

    iput-object v1, p0, Lb/b/k/k;->H:Lb/b/k/k$k;

    :cond_2
    return-void
.end method

.method public final I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public J(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, v0, Lb/i/m/e$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lb/b/k/q;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lb/i/m/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    .line 1
    iget-object v0, v0, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, v4}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-boolean v1, v0, Lb/b/k/k$k;->m:Z

    if-nez v1, :cond_16

    invoke-virtual {p0, v0, p1}, Lb/b/k/k;->X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 4
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lb/b/k/k;->I:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 5
    :cond_9
    iget-object v0, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    :cond_a
    invoke-virtual {p0, v4}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lb/b/q/q;->h()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {v1}, Lb/b/q/q;->b()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lb/b/k/k;->M:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lb/b/k/k;->X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {p1}, Lb/b/q/q;->g()Z

    move-result p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {p1}, Lb/b/q/q;->f()Z

    move-result p1

    goto :goto_5

    :cond_c
    iget-boolean v1, v0, Lb/b/k/k$k;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Lb/b/k/k$k;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    iget-boolean v1, v0, Lb/b/k/k$k;->k:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lb/b/k/k$k;->p:Z

    if-eqz v1, :cond_e

    iput-boolean v4, v0, Lb/b/k/k$k;->k:Z

    invoke-virtual {p0, v0, p1}, Lb/b/k/k;->X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lb/b/k/k;->V(Lb/b/k/k$k;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, Lb/b/k/k;->H(Lb/b/k/k$k;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_16

    iget-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 6
    :cond_12
    iget-boolean p1, p0, Lb/b/k/k;->I:Z

    iput-boolean v4, p0, Lb/b/k/k;->I:Z

    invoke-virtual {p0, v4}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-boolean v1, v0, Lb/b/k/k$k;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    invoke-virtual {p0, v0, v2}, Lb/b/k/k;->H(Lb/b/k/k$k;Z)V

    goto :goto_8

    .line 7
    :cond_13
    iget-object p1, p0, Lb/b/k/k;->p:Lb/b/p/a;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lb/b/p/a;->c()V

    goto :goto_6

    .line 8
    :cond_14
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object p1, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p1, :cond_15

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public K(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-object v1, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v2, v1}, Lb/b/p/i/g;->x(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Lb/b/k/k$k;->q:Landroid/os/Bundle;

    :cond_0
    iget-object v1, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->B()V

    iget-object v1, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v1}, Lb/b/p/i/g;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/b/k/k$k;->p:Z

    iput-boolean v1, v0, Lb/b/k/k$k;->o:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iput-boolean p1, v0, Lb/b/k/k$k;->k:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lb/b/k/k;->X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public L()V
    .locals 1

    iget-object v0, p0, Lb/b/k/k;->t:Lb/i/m/y;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/i/m/y;->b()V

    :cond_0
    return-void
.end method

.method public final M()V
    .locals 9

    iget-boolean v0, p0, Lb/b/k/k;->u:Z

    if-nez v0, :cond_1d

    .line 1
    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    sget-object v1, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/b/j;->AppCompatTheme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    sget v2, Lb/b/j;->AppCompatTheme_windowNoTitle:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0, v5}, Lb/b/k/k;->u(I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lb/b/k/k;->u(I)Z

    :cond_1
    :goto_0
    sget v1, Lb/b/j;->AppCompatTheme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lb/b/k/k;->u(I)Z

    :cond_2
    sget v1, Lb/b/j;->AppCompatTheme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lb/b/k/k;->u(I)Z

    :cond_3
    sget v1, Lb/b/j;->AppCompatTheme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lb/b/k/k;->D:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lb/b/k/k;->N()V

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/k/k;->E:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lb/b/k/k;->D:Z

    if-eqz v1, :cond_4

    sget v1, Lb/b/g;->abc_dialog_title_material:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-boolean v3, p0, Lb/b/k/k;->B:Z

    iput-boolean v3, p0, Lb/b/k/k;->A:Z

    goto/16 :goto_3

    :cond_4
    iget-boolean v0, p0, Lb/b/k/k;->A:Z

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v7, Lb/b/a;->actionBarTheme:I

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    new-instance v1, Lb/b/p/c;

    iget-object v7, p0, Lb/b/k/k;->f:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lb/b/g;->abc_screen_toolbar:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lb/b/f;->decor_content_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lb/b/q/q;

    iput-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-virtual {p0}, Lb/b/k/k;->R()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Lb/b/q/q;->setWindowCallback(Landroid/view/Window$Callback;)V

    iget-boolean v1, p0, Lb/b/k/k;->B:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {v1, v2}, Lb/b/q/q;->k(I)V

    :cond_6
    iget-boolean v1, p0, Lb/b/k/k;->y:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lb/b/q/q;->k(I)V

    :cond_7
    iget-boolean v1, p0, Lb/b/k/k;->z:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lb/b/q/q;->k(I)V

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_3

    :cond_9
    iget-boolean v1, p0, Lb/b/k/k;->C:Z

    if-eqz v1, :cond_a

    sget v1, Lb/b/g;->abc_screen_simple_overlay_action_mode:I

    goto :goto_2

    :cond_a
    sget v1, Lb/b/g;->abc_screen_simple:I

    :goto_2
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_3
    if-eqz v0, :cond_1b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c

    new-instance v1, Lb/b/k/l;

    invoke-direct {v1, p0}, Lb/b/k/l;-><init>(Lb/b/k/k;)V

    invoke-static {v0, v1}, Lb/i/m/r;->E(Landroid/view/View;Lb/i/m/l;)V

    goto :goto_4

    :cond_c
    instance-of v1, v0, Lb/b/q/u;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Lb/b/q/u;

    new-instance v2, Lb/b/k/m;

    invoke-direct {v2, p0}, Lb/b/k/m;-><init>(Lb/b/k/k;)V

    invoke-interface {v1, v2}, Lb/b/q/u;->setOnFitSystemWindowsListener(Lb/b/q/u$a;)V

    :cond_d
    :goto_4
    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-nez v1, :cond_e

    sget v1, Lb/b/f;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lb/b/k/k;->w:Landroid/widget/TextView;

    .line 2
    :cond_e
    sget-object v1, Lb/b/q/p0;->a:Ljava/lang/reflect/Method;

    const-string v1, "ViewUtils"

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v7, "makeOptionalFitsSystemWindows"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_f
    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    :goto_5
    const-string v7, "Could not invoke makeOptionalFitsSystemWindows"

    invoke-static {v1, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_2
    const-string v2, "Could not find method makeOptionalFitsSystemWindows. Oh well..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :goto_6
    sget v1, Lb/b/f;->action_bar_activity_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, p0, Lb/b/k/k;->g:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_11

    :goto_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_10

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_10
    const/4 v8, -0x1

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_11

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v2, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    new-instance v2, Lb/b/k/n;

    invoke-direct {v2, p0}, Lb/b/k/n;-><init>(Lb/b/k/k;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 4
    iput-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    .line 5
    iget-object v0, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lb/b/k/k;->l:Ljava/lang/CharSequence;

    .line 6
    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Lb/b/q/q;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 7
    :cond_13
    iget-object v1, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_14

    .line 8
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->y(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_14
    iget-object v1, p0, Lb/b/k/k;->w:Landroid/widget/TextView;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_15
    :goto_9
    iget-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 10
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->i:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 12
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 13
    :cond_16
    iget-object v1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    sget-object v2, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lb/b/j;->AppCompatTheme_windowMinWidthMajor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Lb/b/j;->AppCompatTheme_windowMinWidthMinor:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    sget v2, Lb/b/j;->AppCompatTheme_windowFixedWidthMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    sget v2, Lb/b/j;->AppCompatTheme_windowFixedWidthMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_18
    sget v2, Lb/b/j;->AppCompatTheme_windowFixedHeightMajor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_19
    sget v2, Lb/b/j;->AppCompatTheme_windowFixedHeightMinor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 14
    iput-boolean v5, p0, Lb/b/k/k;->u:Z

    invoke-virtual {p0, v3}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-boolean v1, p0, Lb/b/k/k;->M:Z

    if-nez v1, :cond_1d

    iget-object v0, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-nez v0, :cond_1d

    invoke-virtual {p0, v4}, Lb/b/k/k;->T(I)V

    goto :goto_a

    .line 15
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lb/b/k/k;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/k/k;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/k/k;->D:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/k/k;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lb/b/k/k;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_a
    return-void
.end method

.method public final N()V
    .locals 2

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/b/k/k;->E(Landroid/view/Window;)V

    :cond_0
    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O(Landroid/view/Menu;)Lb/b/k/k$k;
    .locals 5

    iget-object v0, p0, Lb/b/k/k;->G:[Lb/b/k/k$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    iget-object v4, v3, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final P(Landroid/content/Context;)Lb/b/k/k$h;
    .locals 3

    iget-object v0, p0, Lb/b/k/k;->R:Lb/b/k/k$h;

    if-nez v0, :cond_1

    new-instance v0, Lb/b/k/k$i;

    .line 1
    sget-object v1, Lb/b/k/w;->d:Lb/b/k/w;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lb/b/k/w;

    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lb/b/k/w;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lb/b/k/w;->d:Lb/b/k/w;

    :cond_0
    sget-object p1, Lb/b/k/w;->d:Lb/b/k/w;

    .line 2
    invoke-direct {v0, p0, p1}, Lb/b/k/k$i;-><init>(Lb/b/k/k;Lb/b/k/w;)V

    iput-object v0, p0, Lb/b/k/k;->R:Lb/b/k/k$h;

    :cond_1
    iget-object p1, p0, Lb/b/k/k;->R:Lb/b/k/k$h;

    return-object p1
.end method

.method public Q(I)Lb/b/k/k$k;
    .locals 4

    iget-object v0, p0, Lb/b/k/k;->G:[Lb/b/k/k$k;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Lb/b/k/k$k;

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v1, p0, Lb/b/k/k;->G:[Lb/b/k/k$k;

    move-object v0, v1

    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    new-instance v1, Lb/b/k/k$k;

    invoke-direct {v1, p1}, Lb/b/k/k$k;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final R()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final S()V
    .locals 3

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    iget-boolean v0, p0, Lb/b/k/k;->A:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    new-instance v0, Lb/b/k/x;

    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lb/b/k/k;->B:Z

    invoke-direct {v0, v1, v2}, Lb/b/k/x;-><init>(Landroid/app/Activity;Z)V

    :goto_0
    iput-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    goto :goto_1

    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    new-instance v0, Lb/b/k/x;

    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lb/b/k/x;-><init>(Landroid/app/Dialog;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lb/b/k/k;->W:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->n(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final T(I)V
    .locals 3

    iget v0, p0, Lb/b/k/k;->U:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lb/b/k/k;->U:I

    iget-boolean p1, p0, Lb/b/k/k;->T:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lb/b/k/k;->V:Ljava/lang/Runnable;

    .line 1
    sget-object v2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 2
    iput-boolean v1, p0, Lb/b/k/k;->T:Z

    :cond_0
    return-void
.end method

.method public U(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    if-nez p2, :cond_0

    new-instance p2, Lb/b/k/k$g;

    invoke-direct {p2, p0, p1}, Lb/b/k/k$g;-><init>(Lb/b/k/k;Landroid/content/Context;)V

    iput-object p2, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    :cond_0
    iget-object p1, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lb/b/k/k$h;->c()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lb/b/k/k;->P(Landroid/content/Context;)Lb/b/k/k$h;

    move-result-object p1

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final V(Lb/b/k/k$k;Landroid/view/KeyEvent;)V
    .locals 12

    iget-boolean v0, p1, Lb/b/k/k$k;->m:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lb/b/k/k;->M:Z

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v0, p1, Lb/b/k/k$k;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lb/b/k/k;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lb/b/k/k$k;->a:I

    iget-object v4, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Lb/b/k/k;->H(Lb/b/k/k$k;Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p1, p2}, Lb/b/k/k;->X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p2, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Lb/b/k/k$k;->o:Z

    if-eqz v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p1, Lb/b/k/k$k;->g:Landroid/view/View;

    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_1b

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_1b

    const/4 v5, -0x1

    goto/16 :goto_b

    :cond_7
    :goto_1
    if-nez p2, :cond_c

    .line 1
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object p2, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz p2, :cond_8

    .line 2
    invoke-virtual {p2}, Landroidx/appcompat/app/ActionBar;->e()Landroid/content/Context;

    move-result-object p2

    goto :goto_2

    :cond_8
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_9

    iget-object p2, p0, Lb/b/k/k;->f:Landroid/content/Context;

    .line 3
    :cond_9
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v6, Lb/b/a;->actionBarPopupTheme:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_a

    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_a
    sget v6, Lb/b/a;->panelMenuListTheme:I

    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_b

    goto :goto_3

    :cond_b
    sget v4, Lb/b/i;->Theme_AppCompat_CompactMenu:I

    :goto_3
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lb/b/p/c;

    invoke-direct {v4, p2, v2}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object v4, p1, Lb/b/k/k$k;->j:Landroid/content/Context;

    sget-object p2, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v4, Lb/b/j;->AppCompatTheme_panelBackground:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lb/b/k/k$k;->b:I

    sget v4, Lb/b/j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lb/b/k/k$k;->d:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    new-instance p2, Lb/b/k/k$j;

    iget-object v4, p1, Lb/b/k/k$k;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Lb/b/k/k$j;-><init>(Lb/b/k/k;Landroid/content/Context;)V

    iput-object p2, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    iput p2, p1, Lb/b/k/k$k;->c:I

    goto :goto_4

    .line 5
    :cond_c
    iget-boolean v4, p1, Lb/b/k/k$k;->o:Z

    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_d

    iget-object p2, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_d
    :goto_4
    iget-object p2, p1, Lb/b/k/k$k;->g:Landroid/view/View;

    if-eqz p2, :cond_e

    iput-object p2, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    goto :goto_5

    :cond_e
    iget-object p2, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    iget-object p2, p0, Lb/b/k/k;->o:Lb/b/k/k$l;

    if-nez p2, :cond_10

    new-instance p2, Lb/b/k/k$l;

    invoke-direct {p2, p0}, Lb/b/k/k$l;-><init>(Lb/b/k/k;)V

    iput-object p2, p0, Lb/b/k/k;->o:Lb/b/k/k$l;

    :cond_10
    iget-object p2, p0, Lb/b/k/k;->o:Lb/b/k/k$l;

    .line 7
    iget-object v4, p1, Lb/b/k/k$k;->i:Lb/b/p/i/e;

    if-nez v4, :cond_11

    new-instance v4, Lb/b/p/i/e;

    iget-object v5, p1, Lb/b/k/k$k;->j:Landroid/content/Context;

    sget v6, Lb/b/g;->abc_list_menu_item_layout:I

    invoke-direct {v4, v5, v6}, Lb/b/p/i/e;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Lb/b/k/k$k;->i:Lb/b/p/i/e;

    .line 8
    iput-object p2, v4, Lb/b/p/i/e;->h:Lb/b/p/i/m$a;

    .line 9
    iget-object p2, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    .line 10
    iget-object v5, p2, Lb/b/p/i/g;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    .line 11
    :cond_11
    iget-object p2, p1, Lb/b/k/k$k;->i:Lb/b/p/i/e;

    iget-object v4, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    .line 12
    iget-object v5, p2, Lb/b/p/i/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_13

    iget-object v5, p2, Lb/b/p/i/e;->d:Landroid/view/LayoutInflater;

    sget v6, Lb/b/g;->abc_expanded_menu_layout:I

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Lb/b/p/i/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v4, p2, Lb/b/p/i/e;->i:Lb/b/p/i/e$a;

    if-nez v4, :cond_12

    new-instance v4, Lb/b/p/i/e$a;

    invoke-direct {v4, p2}, Lb/b/p/i/e$a;-><init>(Lb/b/p/i/e;)V

    iput-object v4, p2, Lb/b/p/i/e;->i:Lb/b/p/i/e$a;

    :cond_12
    iget-object v4, p2, Lb/b/p/i/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Lb/b/p/i/e;->i:Lb/b/p/i/e$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v4, p2, Lb/b/p/i/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_13
    iget-object p2, p2, Lb/b/p/i/e;->f:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 13
    iput-object p2, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    if-eqz p2, :cond_14

    :goto_5
    const/4 p2, 0x1

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p2, 0x0

    :goto_7
    if-eqz p2, :cond_1c

    .line 14
    iget-object p2, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    if-nez p2, :cond_15

    goto :goto_9

    :cond_15
    iget-object p2, p1, Lb/b/k/k$k;->g:Landroid/view/View;

    if-eqz p2, :cond_16

    goto :goto_8

    :cond_16
    iget-object p2, p1, Lb/b/k/k$k;->i:Lb/b/p/i/e;

    invoke-virtual {p2}, Lb/b/p/i/e;->a()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lb/b/p/i/e$a;

    invoke-virtual {p2}, Lb/b/p/i/e$a;->getCount()I

    move-result p2

    if-lez p2, :cond_17

    :goto_8
    const/4 p2, 0x1

    goto :goto_a

    :cond_17
    :goto_9
    const/4 p2, 0x0

    :goto_a
    if-nez p2, :cond_18

    goto :goto_c

    .line 15
    :cond_18
    iget-object p2, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_19

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_19
    iget v4, p1, Lb/b/k/k$k;->b:I

    iget-object v5, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v4, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1a

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1a
    iget-object v4, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p2, p1, Lb/b/k/k$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_1b
    const/4 v5, -0x2

    :goto_b
    iput-boolean v2, p1, Lb/b/k/k$k;->l:Z

    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iget v2, p1, Lb/b/k/k$k;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, p1, Lb/b/k/k$k;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v2, p1, Lb/b/k/k$k;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p1, Lb/b/k/k$k;->m:Z

    return-void

    :cond_1c
    :goto_c
    iput-boolean v1, p1, Lb/b/k/k$k;->o:Z

    :cond_1d
    :goto_d
    return-void
.end method

.method public final W(Lb/b/k/k$k;ILandroid/view/KeyEvent;I)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lb/b/k/k$k;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lb/b/k/k;->X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Lb/b/p/i/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    iget-object p3, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-nez p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lb/b/k/k;->H(Lb/b/k/k$k;Z)V

    :cond_3
    return v1
.end method

.method public final X(Lb/b/k/k$k;Landroid/view/KeyEvent;)Z
    .locals 10

    iget-boolean v0, p0, Lb/b/k/k;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p1, Lb/b/k/k$k;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lb/b/k/k;->H:Lb/b/k/k$k;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lb/b/k/k;->H(Lb/b/k/k$k;Z)V

    :cond_2
    invoke-virtual {p0}, Lb/b/k/k;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v3, p1, Lb/b/k/k$k;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lb/b/k/k$k;->g:Landroid/view/View;

    :cond_3
    iget v3, p1, Lb/b/k/k$k;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iget-object v5, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lb/b/q/q;->c()V

    :cond_6
    iget-object v5, p1, Lb/b/k/k$k;->g:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 1
    iget-object v5, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    .line 2
    instance-of v5, v5, Lb/b/k/u;

    if-nez v5, :cond_19

    :cond_7
    iget-object v5, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v7, p1, Lb/b/k/k$k;->p:Z

    if-eqz v7, :cond_13

    :cond_8
    if-nez v5, :cond_e

    .line 3
    iget-object v5, p0, Lb/b/k/k;->f:Landroid/content/Context;

    iget v7, p1, Lb/b/k/k$k;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v4, :cond_d

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    sget v8, Lb/b/a;->actionBarTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_a

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    sget v9, Lb/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    :cond_a
    sget v8, Lb/b/a;->actionBarWidgetTheme:I

    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    new-instance v4, Lb/b/p/c;

    invoke-direct {v4, v5, v1}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    :cond_d
    new-instance v4, Lb/b/p/i/g;

    invoke-direct {v4, v5}, Lb/b/p/i/g;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p0, v4, Lb/b/p/i/g;->e:Lb/b/p/i/g$a;

    .line 5
    invoke-virtual {p1, v4}, Lb/b/k/k$k;->a(Lb/b/p/i/g;)V

    .line 6
    iget-object v4, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    iget-object v4, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz v4, :cond_10

    iget-object v5, p0, Lb/b/k/k;->n:Lb/b/k/k$d;

    if-nez v5, :cond_f

    new-instance v5, Lb/b/k/k$d;

    invoke-direct {v5, p0}, Lb/b/k/k$d;-><init>(Lb/b/k/k;)V

    iput-object v5, p0, Lb/b/k/k;->n:Lb/b/k/k$d;

    :cond_f
    iget-object v5, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    iget-object v7, p0, Lb/b/k/k;->n:Lb/b/k/k$d;

    invoke-interface {v4, v5, v7}, Lb/b/q/q;->a(Landroid/view/Menu;Lb/b/p/i/m$a;)V

    :cond_10
    iget-object v4, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v4}, Lb/b/p/i/g;->B()V

    iget v4, p1, Lb/b/k/k$k;->a:I

    iget-object v5, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p1, v6}, Lb/b/k/k$k;->a(Lb/b/p/i/g;)V

    if-eqz v3, :cond_11

    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz p1, :cond_11

    iget-object p2, p0, Lb/b/k/k;->n:Lb/b/k/k$d;

    invoke-interface {p1, v6, p2}, Lb/b/q/q;->a(Landroid/view/Menu;Lb/b/p/i/m$a;)V

    :cond_11
    return v1

    :cond_12
    iput-boolean v1, p1, Lb/b/k/k$k;->p:Z

    :cond_13
    iget-object v4, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v4}, Lb/b/p/i/g;->B()V

    iget-object v4, p1, Lb/b/k/k$k;->q:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    iget-object v5, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v5, v4}, Lb/b/p/i/g;->v(Landroid/os/Bundle;)V

    iput-object v6, p1, Lb/b/k/k$k;->q:Landroid/os/Bundle;

    :cond_14
    iget-object v4, p1, Lb/b/k/k$k;->g:Landroid/view/View;

    iget-object v5, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    iget-object p2, p0, Lb/b/k/k;->m:Lb/b/q/q;

    if-eqz p2, :cond_15

    iget-object v0, p0, Lb/b/k/k;->n:Lb/b/k/k$d;

    invoke-interface {p2, v6, v0}, Lb/b/q/q;->a(Landroid/view/Menu;Lb/b/p/i/m$a;)V

    :cond_15
    iget-object p1, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {p1}, Lb/b/p/i/g;->A()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_17
    const/4 p2, -0x1

    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    const/4 p2, 0x1

    goto :goto_4

    :cond_18
    const/4 p2, 0x0

    :goto_4
    iput-boolean p2, p1, Lb/b/k/k$k;->n:Z

    iget-object v0, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {v0, p2}, Lb/b/p/i/g;->setQwertyMode(Z)V

    iget-object p2, p1, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-virtual {p2}, Lb/b/p/i/g;->A()V

    :cond_19
    iput-boolean v2, p1, Lb/b/k/k$k;->k:Z

    iput-boolean v1, p1, Lb/b/k/k$k;->l:Z

    iput-object p1, p0, Lb/b/k/k;->H:Lb/b/k/k$k;

    return v2
.end method

.method public final Y()Z
    .locals 2

    iget-boolean v0, p0, Lb/b/k/k;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Z()V
    .locals 2

    iget-boolean v0, p0, Lb/b/k/k;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/b/p/i/g;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lb/b/k/k;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lb/b/k/k;->M:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lb/b/p/i/g;->k()Lb/b/p/i/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/b/k/k;->O(Landroid/view/Menu;)Lb/b/k/k$k;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Lb/b/k/k$k;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0(Lb/i/m/c0;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/i/m/c0;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_10

    iget-object v4, p0, Lb/b/k/k;->X:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lb/b/k/k;->X:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lb/b/k/k;->Y:Landroid/graphics/Rect;

    :cond_2
    iget-object v4, p0, Lb/b/k/k;->X:Landroid/graphics/Rect;

    iget-object v6, p0, Lb/b/k/k;->Y:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lb/i/m/c0;->c()I

    move-result p2

    invoke-virtual {p1}, Lb/i/m/c0;->e()I

    move-result v7

    invoke-virtual {p1}, Lb/i/m/c0;->d()I

    move-result v8

    invoke-virtual {p1}, Lb/i/m/c0;->b()I

    move-result p1

    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object p1, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Lb/b/q/p0;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget p1, v4, Landroid/graphics/Rect;->top:I

    iget p2, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    invoke-static {v6}, Lb/i/m/r;->n(Landroid/view/View;)Lb/i/m/c0;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lb/i/m/c0;->c()I

    move-result v7

    :goto_2
    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lb/i/m/c0;->d()I

    move-result v6

    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 p2, 0x1

    :goto_5
    if-lez p1, :cond_8

    iget-object p1, p0, Lb/b/k/k;->x:Landroid/view/View;

    if-nez p1, :cond_8

    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/b/k/k;->x:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    iget-object v6, p0, Lb/b/k/k;->x:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lb/b/k/k;->x:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_a

    :cond_9
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v4, p0, Lb/b/k/k;->x:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_6
    iget-object p1, p0, Lb/b/k/k;->x:Landroid/view/View;

    if-eqz p1, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lb/b/k/k;->x:Landroid/view/View;

    .line 1
    sget-object v6, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    .line 2
    iget-object v5, p0, Lb/b/k/k;->f:Landroid/content/Context;

    sget v6, Lb/b/c;->abc_decor_view_status_guard_light:I

    goto :goto_9

    :cond_d
    iget-object v5, p0, Lb/b/k/k;->f:Landroid/content/Context;

    sget v6, Lb/b/c;->abc_decor_view_status_guard:I

    :goto_9
    invoke-static {v5, v6}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    :cond_e
    iget-boolean p1, p0, Lb/b/k/k;->C:Z

    if-nez p1, :cond_f

    if-eqz v4, :cond_f

    const/4 v1, 0x0

    :cond_f
    move v5, p2

    goto :goto_a

    :cond_10
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_11

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v4, 0x0

    goto :goto_a

    :cond_11
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_13

    iget-object p1, p0, Lb/b/k/k;->q:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    :cond_13
    :goto_b
    iget-object p1, p0, Lb/b/k/k;->x:Landroid/view/View;

    if-eqz p1, :cond_15

    if-eqz v4, :cond_14

    goto :goto_c

    :cond_14
    const/16 v0, 0x8

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return v1
.end method

.method public b(Lb/b/p/i/g;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lb/b/q/q;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {p1}, Lb/b/q/q;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lb/b/k/k;->R()Landroid/view/Window$Callback;

    move-result-object p1

    iget-object v2, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {v2}, Lb/b/q/q;->b()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    iget-object v0, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {v0}, Lb/b/q/q;->f()Z

    iget-boolean v0, p0, Lb/b/k/k;->M:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-object v0, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lb/b/k/k;->M:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lb/b/k/k;->T:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lb/b/k/k;->U:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lb/b/k/k;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lb/b/k/k;->V:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    invoke-virtual {p0, v1}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object v0

    iget-object v2, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lb/b/k/k$k;->p:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lb/b/k/k$k;->g:Landroid/view/View;

    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lb/b/k/k$k;->h:Lb/b/p/i/g;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lb/b/k/k;->m:Lb/b/q/q;

    invoke-interface {p1}, Lb/b/q/q;->g()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lb/b/k/k;->Q(I)Lb/b/k/k$k;

    move-result-object p1

    iput-boolean v0, p1, Lb/b/k/k$k;->o:Z

    invoke-virtual {p0, p1, v1}, Lb/b/k/k;->H(Lb/b/k/k$k;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/b/k/k;->V(Lb/b/k/k$k;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    iget-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    .line 1
    iget-object p1, p1, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/b/k/k;->J:Z

    .line 1
    iget v2, p0, Lb/b/k/k;->N:I

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    .line 2
    :goto_0
    invoke-virtual {p0, p1, v2}, Lb/b/k/k;->U(Landroid/content/Context;I)I

    move-result v2

    sget-boolean v3, Lb/b/k/k;->f0:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    instance-of v3, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v2, v4}, Lb/b/k/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_0
    move-object v5, p1

    check-cast v5, Landroid/view/ContextThemeWrapper;

    .line 3
    invoke-virtual {v5, v3}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 4
    :cond_1
    instance-of v3, p1, Lb/b/p/c;

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v2, v4}, Lb/b/k/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    :try_start_1
    move-object v5, p1

    check-cast v5, Lb/b/p/c;

    invoke-virtual {v5, v3}, Lb/b/p/c;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    :cond_2
    sget-boolean v3, Lb/b/k/k;->e0:Z

    if-nez v3, :cond_3

    return-object p1

    :cond_3
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    const/4 v5, -0x1

    iput v5, v3, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v3, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 7
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput v5, v7, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v3, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    :cond_4
    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    :cond_5
    iget v5, v3, Landroid/content/res/Configuration;->mcc:I

    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v5, v8, :cond_6

    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    :cond_6
    iget v5, v3, Landroid/content/res/Configuration;->mnc:I

    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v5, v8, :cond_7

    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    const/16 v5, 0x18

    if-lt v0, v5, :cond_8

    .line 8
    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 9
    :cond_8
    iget-object v5, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 10
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 11
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_9
    :goto_1
    iget v5, v3, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v5, v8, :cond_a

    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    :cond_a
    iget v5, v3, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v8, :cond_b

    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    :cond_b
    iget v5, v3, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v5, v8, :cond_c

    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_c
    iget v5, v3, Landroid/content/res/Configuration;->navigation:I

    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v5, v8, :cond_d

    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    :cond_d
    iget v5, v3, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v5, v8, :cond_e

    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_e
    iget v5, v3, Landroid/content/res/Configuration;->orientation:I

    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v8, :cond_f

    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    :cond_f
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v5, v8, :cond_10

    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_10
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v5, v8, :cond_11

    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_11
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v5, v8, :cond_12

    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_12
    iget v5, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v5, v8, :cond_13

    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    const/16 v5, 0x1a

    if-lt v0, v5, :cond_15

    .line 12
    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0x3

    if-eq v5, v8, :cond_14

    iget v5, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->colorMode:I

    :cond_14
    iget v5, v3, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    iget v8, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v8, v8, 0xc

    if-eq v5, v8, :cond_15

    iget v5, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 13
    :cond_15
    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0xf

    if-eq v5, v8, :cond_16

    iget v5, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->uiMode:I

    :cond_16
    iget v5, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v8, v8, 0x30

    if-eq v5, v8, :cond_17

    iget v5, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->uiMode:I

    :cond_17
    iget v5, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v5, v8, :cond_18

    iput v8, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_18
    iget v5, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v5, v8, :cond_19

    iput v8, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_19
    iget v5, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v5, v8, :cond_1a

    iput v8, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 14
    :cond_1a
    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v3, v5, :cond_1c

    iput v5, v7, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1b
    move-object v7, v4

    .line 15
    :cond_1c
    :goto_2
    invoke-virtual {p0, p1, v2, v7}, Lb/b/k/k;->I(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    new-instance v3, Lb/b/p/c;

    sget v5, Lb/b/i;->Theme_AppCompat_Empty:I

    invoke-direct {v3, p1, v5}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Lb/b/p/c;->a(Landroid/content/res/Configuration;)V

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_3

    :catch_2
    :cond_1d
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_21

    invoke-virtual {v3}, Lb/b/p/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/16 v5, 0x1d

    if-lt v0, v5, :cond_1e

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_7

    :cond_1e
    const/16 v5, 0x17

    if-lt v0, v5, :cond_21

    .line 17
    sget-object v0, Lb/i/f/c/h$a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v5, Lb/i/f/c/h$a;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1f

    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v2, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lb/i/f/c/h$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_5
    const-string v6, "ResourcesCompat"

    const-string v7, "Failed to retrieve rebase() method"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    sput-boolean v1, Lb/i/f/c/h$a;->c:Z

    :cond_1f
    sget-object v1, Lb/i/f/c/h$a;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_20

    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_5
    :try_start_7
    const-string v1, "ResourcesCompat"

    const-string v2, "Failed to invoke rebase() method via reflection"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lb/i/f/c/h$a;->b:Ljava/lang/reflect/Method;

    :cond_20
    :goto_6
    monitor-exit v0

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_21
    :goto_7
    return-object v3
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lb/b/k/a;
    .locals 1

    new-instance v0, Lb/b/k/k$c;

    invoke-direct {v0, p0}, Lb/b/k/k$c;-><init>(Lb/b/k/k;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lb/b/k/k;->N:I

    return v0
.end method

.method public h()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Lb/b/k/k;->k:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lb/b/k/k;->S()V

    new-instance v0, Lb/b/p/f;

    iget-object v1, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/ActionBar;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lb/b/p/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/k/k;->k:Landroid/view/MenuInflater;

    :cond_1
    iget-object v0, p0, Lb/b/k/k;->k:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public i()Landroidx/appcompat/app/ActionBar;
    .locals 1

    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0, p0}, La/a/a/a/a;->b0(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lb/b/k/k;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/k/k;->T(I)V

    return-void
.end method

.method public l(Landroid/content/res/Configuration;)V
    .locals 3

    iget-boolean v0, p0, Lb/b/k/k;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/b/k/k;->u:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->h(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-static {}, Lb/b/q/g;->a()Lb/b/q/g;

    move-result-object p1

    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    .line 3
    monitor-enter p1

    :try_start_0
    iget-object v1, p1, Lb/b/q/g;->a:Lb/b/q/z;

    .line 4
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, Lb/b/q/z;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/f/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/f/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    monitor-exit p1

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lb/b/k/k;->D(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/b/k/k;->J:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/b/k/k;->D(Z)Z

    invoke-virtual {p0}, Lb/b/k/k;->N()V

    iget-object v0, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, La/a/a/a/a;->L(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-nez v0, :cond_0

    .line 3
    iput-boolean p1, p0, Lb/b/k/k;->W:Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->n(Z)V

    .line 4
    :cond_1
    :goto_1
    sget-object v0, Lb/b/k/j;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lb/b/k/j;->t(Lb/b/k/j;)V

    sget-object v1, Lb/b/k/j;->c:Lb/f/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lb/f/c;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 5
    :cond_2
    :goto_2
    iput-boolean p1, p0, Lb/b/k/k;->K:Z

    return-void
.end method

.method public n()V
    .locals 3

    sget-object v0, Lb/b/k/k;->b0:Lb/f/h;

    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Lb/b/k/j;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lb/b/k/j;->t(Lb/b/k/j;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lb/b/k/k;->T:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lb/b/k/k;->V:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/b/k/k;->L:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/b/k/k;->M:Z

    iget v1, p0, Lb/b/k/k;->N:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lb/b/k/k;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/f/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->i()V

    .line 3
    :cond_3
    iget-object v0, p0, Lb/b/k/k;->R:Lb/b/k/k$h;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lb/b/k/k$h;->a()V

    :cond_4
    iget-object v0, p0, Lb/b/k/k;->S:Lb/b/k/k$h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lb/b/k/k$h;->a()V

    :cond_5
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1
    iget-object v0, p0, Lb/b/k/k;->Z:Lb/b/k/s;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/b/k/k;->f:Landroid/content/Context;

    sget-object v2, Lb/b/j;->AppCompatTheme:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lb/b/j;->AppCompatTheme_viewInflaterClass:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/b/k/s;

    invoke-direct {v0}, Lb/b/k/s;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/b/k/s;

    iput-object v2, p0, Lb/b/k/k;->Z:Lb/b/k/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Falling back to default."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lb/b/k/s;

    invoke-direct {v0}, Lb/b/k/s;-><init>()V

    :goto_0
    iput-object v0, p0, Lb/b/k/k;->Z:Lb/b/k/s;

    :cond_1
    :goto_1
    sget-boolean v0, Lb/b/k/k;->c0:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lb/b/k/k;->a0:Lb/b/k/t;

    if-nez v0, :cond_2

    new-instance v0, Lb/b/k/t;

    invoke-direct {v0}, Lb/b/k/t;-><init>()V

    iput-object v0, p0, Lb/b/k/k;->a0:Lb/b/k/t;

    :cond_2
    iget-object v0, p0, Lb/b/k/k;->a0:Lb/b/k/t;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v6, p4, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v6, :cond_8

    move-object v7, p4

    check-cast v7, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v5, :cond_8

    iget-object v8, v0, Lb/b/k/t;->a:Ljava/util/Deque;

    .line 3
    :goto_2
    invoke-interface {v8}, Ljava/util/Deque;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v8}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v9, :cond_4

    .line 4
    :try_start_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-eq v10, v3, :cond_4

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v10, v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :catch_0
    :cond_4
    :goto_3
    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_6

    .line 5
    invoke-interface {v8}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object v9, v2

    .line 6
    :cond_6
    iget-object v0, v0, Lb/b/k/t;->a:Ljava/util/Deque;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz v9, :cond_7

    if-eq v7, v9, :cond_7

    .line 7
    :try_start_2
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "include"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    :cond_7
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v6, :cond_a

    .line 8
    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v5, :cond_e

    goto :goto_8

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    if-nez v0, :cond_b

    goto :goto_9

    .line 9
    :cond_b
    iget-object v6, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    :goto_7
    if-nez v0, :cond_c

    :goto_8
    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    if-eq v0, v6, :cond_e

    instance-of v7, v0, Landroid/view/View;

    if-eqz v7, :cond_e

    move-object v7, v0

    check-cast v7, Landroid/view/View;

    .line 10
    sget-object v8, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_9

    .line 11
    :cond_d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_7

    :cond_e
    :goto_9
    const/4 v0, 0x0

    .line 12
    :goto_a
    iget-object v6, p0, Lb/b/k/k;->Z:Lb/b/k/s;

    sget-boolean v7, Lb/b/k/k;->c0:Z

    invoke-static {}, Lb/b/q/o0;->a()Z

    move-result v8

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_b

    :cond_f
    move-object p1, p3

    .line 14
    :goto_b
    sget-object v0, Lb/b/j;->View:[I

    invoke-virtual {p1, p4, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v7, :cond_10

    sget v7, Lb/b/j;->View_android_theme:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    goto :goto_c

    :cond_10
    const/4 v7, 0x0

    :goto_c
    if-nez v7, :cond_11

    sget v7, Lb/b/j;->View_theme:I

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_11

    const-string v9, "AppCompatViewInflater"

    const-string v10, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_13

    instance-of v0, p1, Lb/b/p/c;

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lb/b/p/c;

    .line 15
    iget v0, v0, Lb/b/p/c;->a:I

    if-eq v0, v7, :cond_13

    .line 16
    :cond_12
    new-instance v0, Lb/b/p/c;

    invoke-direct {v0, p1, v7}, Lb/b/p/c;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :cond_13
    if-eqz v8, :cond_14

    .line 17
    invoke-static {p1}, Lb/b/q/g0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    const-string v0, "Button"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_d

    :cond_15
    const/16 v3, 0xd

    goto/16 :goto_e

    :sswitch_1
    const-string v0, "EditText"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_d

    :cond_16
    const/16 v3, 0xc

    goto/16 :goto_e

    :sswitch_2
    const-string v0, "CheckBox"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_d

    :cond_17
    const/16 v3, 0xb

    goto/16 :goto_e

    :sswitch_3
    const-string v0, "AutoCompleteTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_d

    :cond_18
    const/16 v3, 0xa

    goto/16 :goto_e

    :sswitch_4
    const-string v0, "ImageView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_d

    :cond_19
    const/16 v3, 0x9

    goto/16 :goto_e

    :sswitch_5
    const-string v0, "ToggleButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_d

    :cond_1a
    const/16 v3, 0x8

    goto/16 :goto_e

    :sswitch_6
    const-string v0, "RadioButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_d

    :cond_1b
    const/4 v3, 0x7

    goto :goto_e

    :sswitch_7
    const-string v0, "Spinner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v3, 0x6

    goto :goto_e

    :sswitch_8
    const-string v0, "SeekBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_d

    :cond_1d
    const/4 v3, 0x5

    goto :goto_e

    :sswitch_9
    const-string v0, "ImageButton"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_d

    :cond_1e
    const/4 v3, 0x4

    goto :goto_e

    :sswitch_a
    const-string v0, "TextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_d

    :sswitch_b
    const-string v0, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_d

    :cond_1f
    const/4 v3, 0x2

    goto :goto_e

    :sswitch_c
    const-string v0, "CheckedTextView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_d

    :cond_20
    const/4 v3, 0x1

    goto :goto_e

    :sswitch_d
    const-string v0, "RatingBar"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_d

    :cond_21
    const/4 v3, 0x0

    goto :goto_e

    :goto_d
    const/4 v3, -0x1

    :cond_22
    :goto_e
    packed-switch v3, :pswitch_data_0

    invoke-virtual {v6}, Lb/b/k/s;->f()Landroid/view/View;

    move-result-object v0

    goto :goto_10

    :pswitch_0
    invoke-virtual {v6, p1, p4}, Lb/b/k/s;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatButton;

    move-result-object v0

    goto :goto_f

    .line 18
    :pswitch_1
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 19
    :pswitch_2
    invoke-virtual {v6, p1, p4}, Lb/b/k/s;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v0

    goto :goto_f

    :pswitch_3
    invoke-virtual {v6, p1, p4}, Lb/b/k/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    move-result-object v0

    goto :goto_f

    .line 20
    :pswitch_4
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 21
    :pswitch_5
    new-instance v0, Landroidx/appcompat/widget/AppCompatToggleButton;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 22
    :pswitch_6
    invoke-virtual {v6, p1, p4}, Lb/b/k/s;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v0

    goto :goto_f

    .line 23
    :pswitch_7
    new-instance v0, Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 24
    :pswitch_8
    new-instance v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 25
    :pswitch_9
    new-instance v0, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 26
    :pswitch_a
    invoke-virtual {v6, p1, p4}, Lb/b/k/s;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    goto :goto_f

    .line 27
    :pswitch_b
    new-instance v0, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 28
    :pswitch_c
    new-instance v0, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_f

    .line 29
    :pswitch_d
    new-instance v0, Landroidx/appcompat/widget/AppCompatRatingBar;

    invoke-direct {v0, p1, p4}, Landroidx/appcompat/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    :goto_f
    invoke-virtual {v6, v0, p2}, Lb/b/k/s;->h(Landroid/view/View;Ljava/lang/String;)V

    :goto_10
    if-nez v0, :cond_27

    if-eq p3, p1, :cond_27

    const-string p3, "view"

    .line 31
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    const-string p2, "class"

    invoke-interface {p4, v2, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_23
    :try_start_3
    iget-object p3, v6, Lb/b/k/s;->a:[Ljava/lang/Object;

    aput-object p1, p3, v1

    aput-object p4, p3, v5

    const/16 p3, 0x2e

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v7, p3, :cond_26

    const/4 p3, 0x0

    :goto_11
    sget-object v0, Lb/b/k/s;->d:[Ljava/lang/String;

    array-length v3, v0

    if-ge p3, v3, :cond_25

    aget-object v0, v0, p3

    invoke-virtual {v6, p1, p2, v0}, Lb/b/k/s;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_24

    iget-object p1, v6, Lb/b/k/s;->a:[Ljava/lang/Object;

    aput-object v2, p1, v1

    aput-object v2, p1, v5

    goto :goto_12

    :cond_24
    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_25
    iget-object p1, v6, Lb/b/k/s;->a:[Ljava/lang/Object;

    aput-object v2, p1, v1

    aput-object v2, p1, v5

    goto :goto_13

    :cond_26
    :try_start_4
    invoke-virtual {v6, p1, p2, v2}, Lb/b/k/s;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p2, v6, Lb/b/k/s;->a:[Ljava/lang/Object;

    aput-object v2, p2, v1

    aput-object v2, p2, v5

    move-object v2, p1

    goto :goto_13

    :catchall_1
    move-exception p1

    iget-object p2, v6, Lb/b/k/s;->a:[Ljava/lang/Object;

    aput-object v2, p2, v1

    aput-object v2, p2, v5

    throw p1

    :catch_2
    iget-object p1, v6, Lb/b/k/s;->a:[Ljava/lang/Object;

    aput-object v2, p1, v1

    aput-object v2, p1, v5

    goto :goto_13

    :cond_27
    :goto_12
    move-object v2, v0

    :goto_13
    if-eqz v2, :cond_2a

    .line 32
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_2a

    .line 33
    sget-object p2, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p2

    if-nez p2, :cond_28

    goto :goto_14

    .line 34
    :cond_28
    sget-object p2, Lb/b/k/s;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_29

    new-instance p3, Lb/b/k/s$a;

    invoke-direct {p3, v2, p2}, Lb/b/k/s$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_29
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2a
    :goto_14
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lb/b/k/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->t(Z)V

    :cond_0
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/k/k;->L:Z

    invoke-virtual {p0}, Lb/b/k/k;->C()Z

    return-void
.end method

.method public s()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/b/k/k;->L:Z

    .line 1
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v1, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->t(Z)V

    :cond_0
    return-void
.end method

.method public u(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 2
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lb/b/k/k;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lb/b/k/k;->A:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    iput-boolean v1, p0, Lb/b/k/k;->A:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    iget-object v0, p0, Lb/b/k/k;->g:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lb/b/k/k;->Z()V

    iput-boolean v4, p0, Lb/b/k/k;->B:Z

    return v4

    :cond_5
    invoke-virtual {p0}, Lb/b/k/k;->Z()V

    iput-boolean v4, p0, Lb/b/k/k;->A:Z

    return v4

    :cond_6
    invoke-virtual {p0}, Lb/b/k/k;->Z()V

    iput-boolean v4, p0, Lb/b/k/k;->C:Z

    return v4

    :cond_7
    invoke-virtual {p0}, Lb/b/k/k;->Z()V

    iput-boolean v4, p0, Lb/b/k/k;->z:Z

    return v4

    :cond_8
    invoke-virtual {p0}, Lb/b/k/k;->Z()V

    iput-boolean v4, p0, Lb/b/k/k;->y:Z

    return v4

    :cond_9
    invoke-virtual {p0}, Lb/b/k/k;->Z()V

    iput-boolean v4, p0, Lb/b/k/k;->E:Z

    return v4
.end method

.method public v(I)V
    .locals 2

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    iget-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lb/b/k/k;->f:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object p1, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    .line 1
    iget-object p1, p1, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    iget-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    .line 1
    iget-object p1, p1, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public x(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lb/b/k/k;->M()V

    iget-object v0, p0, Lb/b/k/k;->v:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    .line 1
    iget-object p1, p1, Lb/b/p/h;->c:Landroid/view/Window$Callback;

    .line 2
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public y(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    iget-object v0, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lb/b/k/k;->S()V

    iget-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    .line 2
    instance-of v1, v0, Lb/b/k/x;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lb/b/k/k;->k:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->i()V

    :cond_1
    if-eqz p1, :cond_3

    new-instance v0, Lb/b/k/u;

    .line 3
    iget-object v1, p0, Lb/b/k/k;->e:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/b/k/k;->l:Ljava/lang/CharSequence;

    .line 4
    :goto_0
    iget-object v2, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    invoke-direct {v0, p1, v1, v2}, Lb/b/k/u;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    iget-object p1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    .line 5
    iget-object v0, v0, Lb/b/k/u;->c:Landroid/view/Window$Callback;

    goto :goto_1

    .line 6
    :cond_3
    iput-object v1, p0, Lb/b/k/k;->j:Landroidx/appcompat/app/ActionBar;

    iget-object p1, p0, Lb/b/k/k;->g:Landroid/view/Window;

    iget-object v0, p0, Lb/b/k/k;->h:Lb/b/k/k$f;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {p0}, Lb/b/k/k;->k()V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lb/b/k/k;->O:I

    return-void
.end method
