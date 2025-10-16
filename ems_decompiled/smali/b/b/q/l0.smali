.class public Lb/b/q/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/b/q/r;


# instance fields
.field public a:Landroidx/appcompat/widget/Toolbar;

.field public b:I

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/view/Window$Callback;

.field public m:Z

.field public n:Lb/b/q/c;

.field public o:I

.field public p:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Z)V
    .locals 5

    sget v0, Lb/b/h;->abc_action_bar_up_description:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lb/b/q/l0;->o:I

    iput-object p1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lb/b/q/l0;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lb/b/q/l0;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Lb/b/q/l0;->i:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lb/b/q/l0;->h:Z

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lb/b/q/l0;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lb/b/j;->ActionBar:[I

    sget v3, Lb/b/a;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3, v1}, Lb/b/q/j0;->r(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lb/b/q/j0;

    move-result-object p1

    sget v2, Lb/b/j;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {p1, v2}, Lb/b/q/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lb/b/q/l0;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_e

    sget p2, Lb/b/j;->ActionBar_title:I

    invoke-virtual {p1, p2}, Lb/b/q/j0;->o(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p2}, Lb/b/q/l0;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget p2, Lb/b/j;->ActionBar_subtitle:I

    invoke-virtual {p1, p2}, Lb/b/q/j0;->o(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, p2}, Lb/b/q/l0;->q(Ljava/lang/CharSequence;)V

    :cond_2
    sget p2, Lb/b/j;->ActionBar_logo:I

    invoke-virtual {p1, p2}, Lb/b/q/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    iput-object p2, p0, Lb/b/q/l0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->C()V

    .line 3
    :cond_3
    sget p2, Lb/b/j;->ActionBar_icon:I

    invoke-virtual {p1, p2}, Lb/b/q/j0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4
    iput-object p2, p0, Lb/b/q/l0;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->C()V

    .line 5
    :cond_4
    iget-object p2, p0, Lb/b/q/l0;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_5

    iget-object p2, p0, Lb/b/q/l0;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_5

    .line 6
    iput-object p2, p0, Lb/b/q/l0;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->B()V

    .line 7
    :cond_5
    sget p2, Lb/b/j;->ActionBar_displayOptions:I

    invoke-virtual {p1, p2, v1}, Lb/b/q/j0;->j(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lb/b/q/l0;->p(I)V

    sget p2, Lb/b/j;->ActionBar_customNavigationLayout:I

    invoke-virtual {p1, p2, v1}, Lb/b/q/j0;->m(II)I

    move-result p2

    if-eqz p2, :cond_8

    iget-object v2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 8
    iget-object v2, p0, Lb/b/q/l0;->d:Landroid/view/View;

    if-eqz v2, :cond_6

    iget v3, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    iget-object v3, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iput-object p2, p0, Lb/b/q/l0;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    iget v2, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    iget-object v2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    :cond_7
    iget p2, p0, Lb/b/q/l0;->b:I

    or-int/lit8 p2, p2, 0x10

    invoke-virtual {p0, p2}, Lb/b/q/l0;->p(I)V

    :cond_8
    sget p2, Lb/b/j;->ActionBar_height:I

    invoke-virtual {p1, p2, v1}, Lb/b/q/j0;->l(II)I

    move-result p2

    if-lez p2, :cond_9

    iget-object v2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    sget p2, Lb/b/j;->ActionBar_contentInsetStart:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Lb/b/q/j0;->e(II)I

    move-result p2

    sget v3, Lb/b/j;->ActionBar_contentInsetEnd:I

    invoke-virtual {p1, v3, v2}, Lb/b/q/j0;->e(II)I

    move-result v2

    if-gez p2, :cond_a

    if-ltz v2, :cond_b

    :cond_a
    iget-object v3, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 10
    invoke-virtual {v3}, Landroidx/appcompat/widget/Toolbar;->d()V

    iget-object v3, v3, Landroidx/appcompat/widget/Toolbar;->v:Lb/b/q/b0;

    invoke-virtual {v3, p2, v2}, Lb/b/q/b0;->a(II)V

    .line 11
    :cond_b
    sget p2, Lb/b/j;->ActionBar_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Lb/b/q/j0;->m(II)I

    move-result p2

    if-eqz p2, :cond_c

    iget-object v2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 12
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->n:I

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 13
    :cond_c
    sget p2, Lb/b/j;->ActionBar_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Lb/b/q/j0;->m(II)I

    move-result p2

    if-eqz p2, :cond_d

    iget-object v2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 14
    iput p2, v2, Landroidx/appcompat/widget/Toolbar;->o:I

    iget-object v2, v2, Landroidx/appcompat/widget/Toolbar;->e:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v3, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 15
    :cond_d
    sget p2, Lb/b/j;->ActionBar_popupTheme:I

    invoke-virtual {p1, p2, v1}, Lb/b/q/j0;->m(II)I

    move-result p2

    if-eqz p2, :cond_10

    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/Toolbar;->setPopupTheme(I)V

    goto :goto_2

    .line 16
    :cond_e
    iget-object p2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_f

    const/16 p2, 0xf

    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lb/b/q/l0;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_f
    const/16 p2, 0xb

    .line 17
    :goto_1
    iput p2, p0, Lb/b/q/l0;->b:I

    .line 18
    :cond_10
    :goto_2
    iget-object p1, p1, Lb/b/q/j0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    iget p1, p0, Lb/b/q/l0;->o:I

    if-ne v0, p1, :cond_11

    goto :goto_4

    :cond_11
    iput v0, p0, Lb/b/q/l0;->o:I

    iget-object p1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, p0, Lb/b/q/l0;->o:I

    if-nez p1, :cond_12

    goto :goto_3

    .line 20
    :cond_12
    invoke-virtual {p0}, Lb/b/q/l0;->n()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    :goto_3
    iput-object v4, p0, Lb/b/q/l0;->k:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lb/b/q/l0;->A()V

    .line 22
    :cond_13
    :goto_4
    iget-object p1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lb/b/q/l0;->k:Ljava/lang/CharSequence;

    iget-object p1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    new-instance p2, Lb/b/q/k0;

    invoke-direct {p2, p0}, Lb/b/q/k0;-><init>(Lb/b/q/l0;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget v0, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/q/l0;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lb/b/q/l0;->o:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lb/b/q/l0;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final B()V
    .locals 2

    iget v0, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lb/b/q/l0;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb/b/q/l0;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final C()V
    .locals 2

    iget v0, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/q/l0;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/b/q/l0;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/Menu;Lb/b/p/i/m$a;)V
    .locals 5

    iget-object v0, p0, Lb/b/q/l0;->n:Lb/b/q/c;

    if-nez v0, :cond_0

    new-instance v0, Lb/b/q/c;

    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/b/q/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/b/q/l0;->n:Lb/b/q/c;

    sget v1, Lb/b/f;->action_menu_presenter:I

    .line 1
    iput v1, v0, Lb/b/p/i/b;->k:I

    .line 2
    :cond_0
    iget-object v0, p0, Lb/b/q/l0;->n:Lb/b/q/c;

    .line 3
    iput-object p2, v0, Lb/b/p/i/b;->g:Lb/b/p/i/m$a;

    .line 4
    iget-object p2, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    check-cast p1, Lb/b/p/i/g;

    if-nez p1, :cond_1

    .line 5
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/Toolbar;->f()V

    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    .line 6
    iget-object v1, v1, Landroidx/appcompat/widget/ActionMenuView;->r:Lb/b/p/i/g;

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->L:Lb/b/q/c;

    invoke-virtual {v1, v2}, Lb/b/p/i/g;->u(Lb/b/p/i/m;)V

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {v1, v2}, Lb/b/p/i/g;->u(Lb/b/p/i/m;)V

    :cond_3
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v1, :cond_4

    new-instance v1, Landroidx/appcompat/widget/Toolbar$d;

    invoke-direct {v1, p2}, Landroidx/appcompat/widget/Toolbar$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object v1, p2, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    :cond_4
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lb/b/q/c;->t:Z

    if-eqz p1, :cond_5

    .line 9
    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    iget-object v1, p2, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    iget-object v2, p2, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lb/b/p/i/g;->b(Lb/b/p/i/m;Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->l:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lb/b/q/c;->d(Landroid/content/Context;Lb/b/p/i/g;)V

    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    .line 10
    iget-object v3, p1, Landroidx/appcompat/widget/Toolbar$d;->c:Lb/b/p/i/g;

    if-eqz v3, :cond_6

    iget-object v4, p1, Landroidx/appcompat/widget/Toolbar$d;->d:Lb/b/p/i/i;

    if-eqz v4, :cond_6

    invoke-virtual {v3, v4}, Lb/b/p/i/g;->d(Lb/b/p/i/i;)Z

    :cond_6
    iput-object v2, p1, Landroidx/appcompat/widget/Toolbar$d;->c:Lb/b/p/i/g;

    .line 11
    invoke-virtual {v0, v1}, Lb/b/q/c;->g(Z)V

    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar$d;->g(Z)V

    :goto_0
    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    iget v1, p2, Landroidx/appcompat/widget/Toolbar;->m:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object p1, p2, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Lb/b/q/c;)V

    iput-object v0, p2, Landroidx/appcompat/widget/Toolbar;->L:Lb/b/q/c;

    :goto_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->p()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/q/l0;->m:Z

    return-void
.end method

.method public collapseActionView()V
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->d:Lb/b/p/i/i;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb/b/p/i/i;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    sget-object v1, Lb/i/m/r;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e()Z
    .locals 4

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lb/b/q/c;

    if-eqz v0, :cond_2

    .line 3
    iget-object v3, v0, Lb/b/q/c;->y:Lb/b/q/c$c;

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lb/b/q/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lb/b/q/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/q/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->v()Z

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Landroidx/appcompat/widget/ActionMenuView;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->v:Lb/b/q/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/b/q/c;->a()Z

    :cond_0
    return-void
.end method

.method public j(Lb/b/p/i/m$a;Lb/b/p/i/g$a;)V
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iput-object p1, v0, Landroidx/appcompat/widget/Toolbar;->N:Lb/b/p/i/m$a;

    iput-object p2, v0, Landroidx/appcompat/widget/Toolbar;->O:Lb/b/p/i/g$a;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->c:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Landroidx/appcompat/widget/ActionMenuView;->w:Lb/b/p/i/m$a;

    iput-object p2, v0, Landroidx/appcompat/widget/ActionMenuView;->x:Lb/b/p/i/g$a;

    :cond_0
    return-void
.end method

.method public k(Lb/b/q/c0;)V
    .locals 1

    iget-object p1, p0, Lb/b/q/l0;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lb/b/q/l0;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lb/b/q/l0;->c:Landroid/view/View;

    return-void
.end method

.method public l()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    return-object v0
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method

.method public n()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->M:Landroidx/appcompat/widget/Toolbar$d;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->d:Lb/b/p/i/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(I)V
    .locals 3

    iget v0, p0, Lb/b/q/l0;->b:I

    xor-int/2addr v0, p1

    iput p1, p0, Lb/b/q/l0;->b:I

    if-eqz v0, :cond_6

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lb/b/q/l0;->A()V

    :cond_0
    invoke-virtual {p0}, Lb/b/q/l0;->B()V

    :cond_1
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lb/b/q/l0;->C()V

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lb/b/q/l0;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    iget-object v2, p0, Lb/b/q/l0;->j:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/b/q/l0;->d:Landroid/view/View;

    if-eqz v0, :cond_6

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    iget-object p1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public q(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lb/b/q/l0;->j:Ljava/lang/CharSequence;

    iget v0, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lb/b/q/l0;->b:I

    return v0
.end method

.method public s()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/b/q/l0;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-object p1, p0, Lb/b/q/l0;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->C()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lb/b/q/l0;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->C()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/b/q/l0;->h:Z

    .line 1
    iput-object p1, p0, Lb/b/q/l0;->i:Ljava/lang/CharSequence;

    iget v0, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lb/b/q/l0;->l:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lb/b/q/l0;->h:Z

    if-nez v0, :cond_0

    .line 1
    iput-object p1, p0, Lb/b/q/l0;->i:Ljava/lang/CharSequence;

    iget v0, p0, Lb/b/q/l0;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/b/q/l0;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-object p1, p0, Lb/b/q/l0;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->C()V

    return-void
.end method

.method public u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v(IJ)Lb/i/m/y;
    .locals 2

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0}, Lb/i/m/r;->b(Landroid/view/View;)Lb/i/m/y;

    move-result-object v0

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lb/i/m/y;->a(F)Lb/i/m/y;

    invoke-virtual {v0, p2, p3}, Lb/i/m/y;->c(J)Lb/i/m/y;

    new-instance p2, Lb/b/q/l0$a;

    invoke-direct {p2, p0, p1}, Lb/b/q/l0$a;-><init>(Lb/b/q/l0;I)V

    .line 1
    iget-object p1, v0, Lb/i/m/y;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1, p2}, Lb/i/m/y;->e(Landroid/view/View;Lb/i/m/z;)V

    :cond_1
    return-object v0
.end method

.method public w()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public x()V
    .locals 2

    const-string v0, "ToolbarWidgetWrapper"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public y(Z)V
    .locals 1

    iget-object v0, p0, Lb/b/q/l0;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setCollapsible(Z)V

    return-void
.end method

.method public z(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lb/b/q/l0;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/b/l/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-object p1, p0, Lb/b/q/l0;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lb/b/q/l0;->B()V

    return-void
.end method
