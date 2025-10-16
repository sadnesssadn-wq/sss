.class public Lc/b/m/c/a;
.super Lcom/emsportal/base/BaseFragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lc/b/x/c$a;
.implements Lc/b/l/s$a;
.implements Lc/b/l/g0$a;
.implements Lc/b/m/b/e$a;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public e:Landroidx/appcompat/widget/Toolbar;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroidx/recyclerview/widget/RecyclerView;

.field public k:Lc/b/m/b/e;

.field public l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/f;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lc/b/l/s;

.field public n:Lc/b/l/g0;

.field public o:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public p:Lc/b/x/c;

.field public q:Landroid/widget/TextView;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Z

.field public x:Lc/b/m/d/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/b/m/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseFragment;-><init>()V

    const-string v0, "7"

    iput-object v0, p0, Lc/b/m/c/a;->c:Ljava/lang/String;

    const-string v0, "ALL"

    iput-object v0, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lc/b/m/c/a;->v:I

    iput-boolean v0, p0, Lc/b/m/c/a;->w:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 p4, 0x0

    iput-boolean p4, p0, Lc/b/m/c/a;->w:Z

    invoke-virtual {p0}, Lc/b/m/c/a;->o()V

    const/4 p5, 0x1

    iput p5, p0, Lc/b/m/c/a;->v:I

    iget-object v0, p0, Lc/b/m/c/a;->p:Lc/b/x/c;

    .line 1
    iput p5, v0, Lc/b/x/c;->e:I

    .line 2
    iput-boolean p4, v0, Lc/b/x/c;->i:Z

    .line 3
    iput-object p1, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    iput-object p2, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iput-object p3, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Lc/b/m/c/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lc/b/m/c/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2, p3, p5}, Lc/b/m/c/a;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/m/c/a;->w:Z

    invoke-virtual {p0}, Lc/b/m/c/a;->q()V

    return-void
.end method

.method public e()I
    .locals 1

    const v0, 0x7f0b006c

    return v0
.end method

.method public f()V
    .locals 3

    invoke-static {}, Lb/u/a;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/m/c/a;->c:Ljava/lang/String;

    .line 1
    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v2, "PREF_SETTINGS_FILTER"

    invoke-virtual {v1, v2, v0}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "ALL"

    iput-object v0, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/b/m/c/a;->w:Z

    invoke-virtual {p0}, Lc/b/m/c/a;->q()V

    return-void
.end method

.method public i(Lc/b/m/d/w;)V
    .locals 7

    invoke-virtual {p0}, Lc/b/m/c/a;->o()V

    const/4 v0, 0x1

    iput v0, p0, Lc/b/m/c/a;->v:I

    iget-object v1, p0, Lc/b/m/c/a;->p:Lc/b/x/c;

    .line 1
    iput v0, v1, Lc/b/x/c;->e:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lc/b/x/c;->i:Z

    .line 3
    invoke-virtual {p1}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    iput-object p1, p0, Lc/b/m/c/a;->x:Lc/b/m/d/w;

    invoke-virtual {p1}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lc/b/m/c/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    iget-object v3, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iget-object v4, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    iget-object v5, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/b/m/c/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public j()V
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lc/b/m/c/a;->e:Landroidx/appcompat/widget/Toolbar;

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->n(I)V

    iget-object v1, p0, Lc/b/m/c/a;->e:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Lc/b/m/c/a$a;

    invoke-direct {v2, p0}, Lc/b/m/c/a$a;-><init>(Lc/b/m/c/a;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lc/b/m/c/a;->e:Landroidx/appcompat/widget/Toolbar;

    new-instance v2, Lc/b/m/c/a$b;

    invoke-direct {v2, p0}, Lc/b/m/c/a$b;-><init>(Lc/b/m/c/a;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$e;)V

    iget-object v1, p0, Lc/b/m/c/a;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc/b/m/c/a;->l:Ljava/util/ArrayList;

    new-instance v3, Lc/b/m/b/e;

    invoke-direct {v3, v2}, Lc/b/m/b/e;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, p0, Lc/b/m/c/a;->k:Lc/b/m/b/e;

    .line 2
    iput-object p0, v3, Lc/b/m/b/e;->a:Lc/b/m/b/e$a;

    .line 3
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, p0, Lc/b/m/c/a;->k:Lc/b/m/b/e;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v1, p0, Lc/b/m/c/a;->k:Lc/b/m/b/e;

    new-instance v2, Lc/b/m/c/b;

    invoke-direct {v2, p0}, Lc/b/m/c/b;-><init>(Lc/b/m/c/a;)V

    .line 4
    iput-object v2, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 5
    iget-object v1, p0, Lc/b/m/c/a;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lc/b/m/c/a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lc/b/m/c/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lc/b/m/c/a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lc/b/m/c/a;->o:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    new-instance v1, Lc/b/x/c;

    invoke-direct {v1, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v1, p0, Lc/b/m/c/a;->p:Lc/b/x/c;

    iget-object v2, p0, Lc/b/m/c/a;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    iget-object v1, p0, Lc/b/m/c/a;->m:Lc/b/l/s;

    .line 6
    iput-object p0, v1, Lc/b/l/s;->J:Lc/b/l/s$a;

    .line 7
    iget-object v1, p0, Lc/b/m/c/a;->g:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iput v0, p0, Lc/b/m/c/a;->v:I

    .line 8
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3, v3, v1}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v2, v3, v3, v1}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Lc/b/m/d/m;

    sget-object v10, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v3, v4, v1, v10}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    invoke-virtual {v3, v8}, Lc/b/m/d/m;->x(I)V

    invoke-virtual {v3, v7}, Lc/b/m/d/m;->z(I)V

    invoke-virtual {v3, v5}, Lc/b/m/d/m;->E(I)V

    invoke-virtual {v3, v2}, Lc/b/m/d/m;->F(I)V

    invoke-virtual {v3, v6}, Lc/b/m/d/m;->G(I)V

    invoke-virtual {v3, v9}, Lc/b/m/d/m;->H(I)V

    .line 9
    invoke-virtual {v3}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    invoke-virtual {v3}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lc/b/m/c/a;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {v3}, Lb/u/a;->c0(Lc/b/m/d/m;)V

    .line 11
    iget-object v1, p0, Lc/b/m/c/a;->n:Lc/b/l/g0;

    .line 12
    iput-object p0, v1, Lc/b/l/g0;->h:Lc/b/l/g0$a;

    .line 13
    iget-object v3, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    iget-object v4, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iget-object v5, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    iget-object v6, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lc/b/m/c/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iget-object v2, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lc/b/m/c/a;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Landroid/view/View;)V
    .locals 1

    const p1, 0x7f080434

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    iput-object p1, p0, Lc/b/m/c/a;->e:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0700cb

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(I)V

    iget-object p1, p0, Lc/b/m/c/a;->e:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0804d5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/a;->f:Landroid/widget/TextView;

    const v0, 0x7f1003a1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f080084

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/m/c/a;->i:Landroid/view/ViewGroup;

    const p1, 0x7f080128

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p1, p0, Lc/b/m/c/a;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const p1, 0x7f080219

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lc/b/m/c/a;->j:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0804c9

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/a;->g:Landroid/widget/TextView;

    const p1, 0x7f08047d

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/a;->h:Landroid/widget/TextView;

    const p1, 0x7f08040a

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lc/b/m/c/a;->o:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const p1, 0x7f08049a

    invoke-virtual {p0, p1}, Lcom/emsportal/base/BaseFragment;->d(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/m/c/a;->q:Landroid/widget/TextView;

    invoke-static {}, Lc/b/l/s;->l()Lc/b/l/s;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/c/a;->m:Lc/b/l/s;

    invoke-static {}, Lc/b/l/g0;->e()Lc/b/l/g0;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/c/a;->n:Lc/b/l/g0;

    return-void
.end method

.method public m(I)V
    .locals 6

    iput p1, p0, Lc/b/m/c/a;->v:I

    iget-object v1, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    iget-object v2, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iget-object v3, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    iget-object v4, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/b/m/c/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lc/b/m/c/a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lc/b/m/c/a;->k:Lc/b/m/b/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x144

    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    if-eq p2, p3, :cond_1

    :cond_0
    const/16 v0, 0xe8

    if-ne p1, v0, :cond_2

    const/16 v1, 0x28b

    if-ne p2, v1, :cond_2

    :cond_1
    invoke-static {}, Lb/u/a;->A()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/b/m/c/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/16 v0, 0x338

    if-ne p2, v0, :cond_3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance p2, Lc/b/o/s;

    invoke-direct {p2}, Lc/b/o/s;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object p1

    const-string p3, "CreateInventory"

    invoke-virtual {p2, p1, p3}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x4c7

    if-ne p1, v0, :cond_4

    if-ne p2, p3, :cond_4

    const-string p1, "ALL"

    iput-object p1, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lc/b/m/c/a;->o:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 4
    iput-boolean p2, p0, Lc/b/m/c/a;->w:Z

    invoke-virtual {p0}, Lc/b/m/c/a;->q()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/c/a;->d:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/16 v0, 0x4c7

    invoke-static {p0, p1, v0}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lc/b/m/c/a;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x1bf

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-static {}, Lc/b/l/s;->l()Lc/b/l/s;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {p1, v0, p0, v1}, Lc/b/l/s;->p(Lb/m/d/y;Lc/b/l/s$a;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lc/b/m/c/a;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lc/b/m/c/a;->n:Lc/b/l/g0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/l/g0;->f(Lb/m/d/y;)V

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/b/m/c/a;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget-object v2, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    new-instance v5, Lc/b/m/c/a$c;

    invoke-direct {v5, p0}, Lc/b/m/c/a$c;-><init>(Lc/b/m/c/a;)V

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lc/b/s/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final q()V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lc/b/m/c/a;->v:I

    iget-object v1, p0, Lc/b/m/c/a;->p:Lc/b/x/c;

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v1, Lc/b/x/c;->i:Z

    .line 2
    iput v0, v1, Lc/b/x/c;->e:I

    .line 3
    iget-object v0, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iget-object v1, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lc/b/m/c/a;->p(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lc/b/m/c/a;->x:Lc/b/m/d/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/b/m/c/a;->x:Lc/b/m/d/w;

    invoke-virtual {v1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc/b/m/c/a;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lc/b/m/c/a;->o()V

    iget-object v3, p0, Lc/b/m/c/a;->t:Ljava/lang/String;

    iget-object v4, p0, Lc/b/m/c/a;->r:Ljava/lang/String;

    iget-object v5, p0, Lc/b/m/c/a;->s:Ljava/lang/String;

    iget-object v6, p0, Lc/b/m/c/a;->u:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lc/b/m/c/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    invoke-static {}, Lb/u/a;->A()Ljava/lang/String;

    iget v0, p0, Lc/b/m/c/a;->v:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lc/b/m/c/a$d;

    invoke-direct {v9, p0}, Lc/b/m/c/a$d;-><init>(Lc/b/m/c/a;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v8, p5

    invoke-static/range {v1 .. v9}, Lc/b/s/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "dd/MM/yyyy"

    const-string v1, "dd/MM"

    invoke-static {p1, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1}, Lb/u/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " - "

    invoke-static {p1, v0, p2}, Lc/a/a/a/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/m/c/a;->h:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/c/a;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
