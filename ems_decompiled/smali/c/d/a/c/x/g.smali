.class public final Lc/d/a/c/x/g;
.super Lc/d/a/c/x/w;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/x/g$f;,
        Lc/d/a/c/x/g$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lc/d/a/c/x/w<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public d:I

.field public e:Lc/d/a/c/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/c/x/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public f:Lc/d/a/c/x/a;

.field public g:Lc/d/a/c/x/r;

.field public h:Lc/d/a/c/x/g$e;

.field public i:Lc/d/a/c/x/c;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Landroidx/recyclerview/widget/RecyclerView;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/c/x/w;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lc/d/a/c/x/v;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/c/x/v<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/d/a/c/x/w;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lc/d/a/c/x/g$a;

    invoke-direct {v1, p0, p1}, Lc/d/a/c/x/g$a;-><init>(Lc/d/a/c/x/g;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public j(Lc/d/a/c/x/r;)V
    .locals 6

    iget-object v0, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lc/d/a/c/x/u;

    .line 1
    iget-object v1, v0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 2
    iget-object v1, v1, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 3
    invoke-virtual {v1, p1}, Lc/d/a/c/x/r;->y(Lc/d/a/c/x/r;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    invoke-virtual {v0, v2}, Lc/d/a/c/x/u;->b(Lc/d/a/c/x/r;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object p1, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object p1, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    :goto_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    :cond_3
    invoke-virtual {p0, v1}, Lc/d/a/c/x/g;->f(I)V

    return-void
.end method

.method public l(Lc/d/a/c/x/g$e;)V
    .locals 4

    iput-object p1, p0, Lc/d/a/c/x/g;->h:Lc/d/a/c/x/g$e;

    sget-object v0, Lc/d/a/c/x/g$e;->d:Lc/d/a/c/x/g$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lc/d/a/c/x/b0;

    iget-object v3, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    iget v3, v3, Lc/d/a/c/x/r;->e:I

    invoke-virtual {v0, v3}, Lc/d/a/c/x/b0;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->scrollToPosition(I)V

    iget-object p1, p0, Lc/d/a/c/x/g;->l:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/d/a/c/x/g;->m:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lc/d/a/c/x/g$e;->c:Lc/d/a/c/x/g$e;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lc/d/a/c/x/g;->l:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/d/a/c/x/g;->m:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    invoke-virtual {p0, p1}, Lc/d/a/c/x/g;->j(Lc/d/a/c/x/r;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc/d/a/c/x/g;->d:I

    const-string v0, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/x/d;

    iput-object v0, p0, Lc/d/a/c/x/g;->e:Lc/d/a/c/x/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/d/a/c/x/a;

    iput-object v0, p0, Lc/d/a/c/x/g;->f:Lc/d/a/c/x/a;

    const-string v0, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/d/a/c/x/r;

    iput-object p1, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lc/d/a/c/x/g;->d:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lc/d/a/c/x/c;

    invoke-direct {v0, p3}, Lc/d/a/c/x/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/d/a/c/x/g;->i:Lc/d/a/c/x/c;

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lc/d/a/c/x/g;->f:Lc/d/a/c/x/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 2
    invoke-static {p3}, Lc/d/a/c/x/n;->e(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget v1, Lc/d/a/c/h;->mtrl_calendar_vertical:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lc/d/a/c/h;->mtrl_calendar_horizontal:I

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lc/d/a/c/f;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    new-instance v1, Lc/d/a/c/x/g$b;

    invoke-direct {v1, p0}, Lc/d/a/c/x/g$b;-><init>(Lc/d/a/c/x/g;)V

    invoke-static {p2, v1}, Lb/i/m/r;->B(Landroid/view/View;Lb/i/m/a;)V

    new-instance v1, Lc/d/a/c/x/f;

    invoke-direct {v1}, Lc/d/a/c/x/f;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v0, v0, Lc/d/a/c/x/r;->f:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p2, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    sget p2, Lc/d/a/c/f;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lc/d/a/c/x/g$c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lc/d/a/c/x/g$c;-><init>(Lc/d/a/c/x/g;Landroid/content/Context;IZI)V

    iget-object v0, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lc/d/a/c/x/u;

    iget-object v0, p0, Lc/d/a/c/x/g;->e:Lc/d/a/c/x/d;

    iget-object v1, p0, Lc/d/a/c/x/g;->f:Lc/d/a/c/x/a;

    new-instance v4, Lc/d/a/c/x/g$d;

    invoke-direct {v4, p0}, Lc/d/a/c/x/g$d;-><init>(Lc/d/a/c/x/g;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lc/d/a/c/x/u;-><init>(Landroid/content/Context;Lc/d/a/c/x/d;Lc/d/a/c/x/a;Lc/d/a/c/x/g$f;)V

    iget-object v0, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lc/d/a/c/g;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sget v1, Lc/d/a/c/f;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v4, p0, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p3, v0, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lc/d/a/c/x/b0;

    invoke-direct {v2, p0}, Lc/d/a/c/x/b0;-><init>(Lc/d/a/c/x/g;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v2, Lc/d/a/c/x/h;

    invoke-direct {v2, p0}, Lc/d/a/c/x/h;-><init>(Lc/d/a/c/x/g;)V

    .line 4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    sget v0, Lc/d/a/c/f;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "SELECTOR_TOGGLE_TAG"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lc/d/a/c/x/i;

    invoke-direct {v2, p0}, Lc/d/a/c/x/i;-><init>(Lc/d/a/c/x/g;)V

    invoke-static {v0, v2}, Lb/i/m/r;->B(Landroid/view/View;Lb/i/m/a;)V

    sget v2, Lc/d/a/c/f;->month_navigation_previous:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_PREV_TAG"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    sget v3, Lc/d/a/c/f;->month_navigation_next:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_NEXT_TAG"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/x/g;->l:Landroid/view/View;

    sget v1, Lc/d/a/c/f;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/c/x/g;->m:Landroid/view/View;

    sget-object v1, Lc/d/a/c/x/g$e;->c:Lc/d/a/c/x/g$e;

    invoke-virtual {p0, v1}, Lc/d/a/c/x/g;->l(Lc/d/a/c/x/g$e;)V

    iget-object v1, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lc/d/a/c/x/r;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lc/d/a/c/x/j;

    invoke-direct {v4, p0, p2, v0}, Lc/d/a/c/x/j;-><init>(Lc/d/a/c/x/g;Lc/d/a/c/x/u;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    new-instance v1, Lc/d/a/c/x/k;

    invoke-direct {v1, p0}, Lc/d/a/c/x/k;-><init>(Lc/d/a/c/x/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/d/a/c/x/l;

    invoke-direct {v0, p0, p2}, Lc/d/a/c/x/l;-><init>(Lc/d/a/c/x/g;Lc/d/a/c/x/u;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lc/d/a/c/x/m;

    invoke-direct {v0, p0, p2}, Lc/d/a/c/x/m;-><init>(Lc/d/a/c/x/g;Lc/d/a/c/x/u;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    :cond_2
    invoke-static {p3}, Lc/d/a/c/x/n;->e(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p3, Lb/r/d/t;

    invoke-direct {p3}, Lb/r/d/t;-><init>()V

    iget-object v0, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Lb/r/d/y;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_3
    iget-object p3, p0, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    invoke-virtual {p2, v0}, Lc/d/a/c/x/u;->b(Lc/d/a/c/x/r;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lc/d/a/c/x/g;->d:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lc/d/a/c/x/g;->e:Lc/d/a/c/x/d;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/d/a/c/x/g;->f:Lc/d/a/c/x/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lc/d/a/c/x/g;->g:Lc/d/a/c/x/r;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
