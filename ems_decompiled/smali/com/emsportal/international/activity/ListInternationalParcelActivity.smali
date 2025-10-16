.class public Lcom/emsportal/international/activity/ListInternationalParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lc/b/x/c$a;
.implements Lc/b/l/f0$a;
.implements Lc/b/l/e0$a;


# instance fields
.field public c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lc/b/r/b/f;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public j:Lc/b/x/c;

.field public k:Landroid/widget/TextView;

.field public l:Lc/b/l/f0;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->m:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final B()V
    .locals 3

    .line 1
    sget v0, Lc/b/l/e0;->G:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/l/e0;

    invoke-direct {v1}, Lc/b/l/e0;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 3
    iput-object p0, v1, Lc/b/l/e0;->C:Lc/b/l/e0$a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 10

    const-string v0, "0"

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->x()V

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->v()V

    iget-object v2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iget-object v8, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public m(I)V
    .locals 9

    iput p1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->m:I

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b003b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xbc5

    if-ne p1, p3, :cond_0

    const/16 p1, 0x144

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->x()V

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->v()V

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object p2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f100263

    if-ne p1, v0, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    .line 1
    :cond_0
    const-class v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    const/16 v2, 0xbc5

    invoke-static {p0, v0, v2}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->l:Lc/b/l/f0;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 5
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->B()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lb/b/k/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 10

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "KEY_CREATE_INTERNATIONAL_SUCCESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0xbc5

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->x()V

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->v()V

    iget-object v2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iget-object v8, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    const/4 v9, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08004a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->B()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 14

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->h:Ljava/util/ArrayList;

    new-instance v1, Lc/b/r/b/f;

    invoke-direct {v1, v0}, Lc/b/r/b/f;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->g:Lc/b/r/b/f;

    new-instance v0, Lc/b/x/c;

    invoke-direct {v0, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->j:Lc/b/x/c;

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->g:Lc/b/r/b/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->j:Lc/b/x/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->g:Lc/b/r/b/f;

    new-instance v1, Lc/b/r/a/p;

    invoke-direct {v1, p0}, Lc/b/r/a/p;-><init>(Lcom/emsportal/international/activity/ListInternationalParcelActivity;)V

    .line 2
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2, v2, v0}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v1, v2, v2, v0}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v2, Lc/b/m/d/m;

    sget-object v10, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v2, v3, v0, v10}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    invoke-virtual {v2, v8}, Lc/b/m/d/m;->x(I)V

    invoke-virtual {v2, v7}, Lc/b/m/d/m;->z(I)V

    invoke-virtual {v2, v5}, Lc/b/m/d/m;->E(I)V

    invoke-virtual {v2, v1}, Lc/b/m/d/m;->F(I)V

    invoke-virtual {v2, v6}, Lc/b/m/d/m;->G(I)V

    invoke-virtual {v2, v9}, Lc/b/m/d/m;->H(I)V

    .line 4
    invoke-virtual {v2}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    invoke-virtual {v2}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v2}, Lb/u/a;->b0(Lc/b/m/d/m;)V

    .line 6
    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->l:Lc/b/l/f0;

    .line 7
    iput-object p0, v0, Lc/b/l/f0;->h:Lc/b/l/f0$a;

    .line 8
    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v4}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iget-object v9, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iget-object v10, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iget-object v11, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iget-object v12, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    const/4 v13, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public r()V
    .locals 3

    const v0, 0x7f1003a3

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f08047d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f08040a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->i:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f08049a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->k:Landroid/widget/TextView;

    .line 1
    sget v0, Lc/b/l/f0;->i:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/l/f0;

    invoke-direct {v1}, Lc/b/l/f0;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lc/b/l/f0;->f:Ljava/util/List;

    new-instance v2, Lc/b/r/b/r;

    invoke-direct {v2, v0}, Lc/b/r/b/r;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Lc/b/l/f0;->g:Lc/b/r/b/r;

    .line 2
    iput-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->l:Lc/b/l/f0;

    return-void
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->g:Lc/b/r/b/f;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;

    invoke-direct {v0, p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;-><init>(Lcom/emsportal/international/activity/ListInternationalParcelActivity;)V

    .line 1
    sget v1, Lc/b/s/a;->d:I

    const-string v1, "time_start"

    const-string v2, "time_end"

    invoke-static {v1, p1, v2, p2}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string p2, "datatype"

    const-string v1, "list"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "http://ws.ems.com.vn/api/v1/order-intl/count-group"

    invoke-static {p2, p1, p3, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final x()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->m:I

    iget-object v1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->j:Lc/b/x/c;

    .line 1
    iput v0, v1, Lc/b/x/c;->e:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lc/b/x/c;->i:Z

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    iget v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity$a;-><init>(Lcom/emsportal/international/activity/ListInternationalParcelActivity;)V

    .line 1
    sget v2, Lc/b/s/a;->d:I

    const-string v2, "limit"

    const-string v3, "10"

    const-string v4, "page"

    invoke-static {v2, v3, v4, v0}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v2, "group_status"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "time_start"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "time_end"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p4, :cond_3

    const-string p1, "itemcode"

    invoke-virtual {v0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "senderInfo"

    invoke-virtual {v0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz p6, :cond_5

    const-string p1, "receiverInfo"

    invoke-virtual {v0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p7, :cond_6

    const-string p1, "to_country"

    invoke-virtual {v0, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p1, "http://ws.ems.com.vn/api/v1/order-intl/list"

    invoke-static {p1, v0, p8, v1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)V
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

    iget-object p2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
