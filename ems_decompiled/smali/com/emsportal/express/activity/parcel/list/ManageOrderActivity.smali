.class public Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;
.implements Lc/b/x/c$a;
.implements Lc/b/l/s$a;
.implements Lc/b/l/g0$a;
.implements Lc/b/m/b/e$a;


# instance fields
.field public c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Lc/b/m/b/e;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/f;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lc/b/l/g0;

.field public j:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public k:Lc/b/x/c;

.field public l:Landroid/widget/TextView;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:I

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:Z

.field public v:Lc/b/m/d/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    const-class v0, Lc/b/m/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, "ALL"

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->t:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->u:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->d:Landroid/widget/TextView;

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

.method public final B()V
    .locals 3

    invoke-static {}, Lc/b/l/s;->l()Lc/b/l/s;

    move-result-object v0

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v1

    const/16 v2, 0x1bf

    invoke-virtual {v0, v1, p0, v2}, Lc/b/l/s;->p(Lb/m/d/y;Lc/b/l/s$a;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v8, p0

    move-object v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->t:Z

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->v()V

    const/4 v1, 0x1

    iput v1, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    iget-object v2, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->k:Lc/b/x/c;

    .line 1
    iput v1, v2, Lc/b/x/c;->e:I

    .line 2
    iput-boolean v0, v2, Lc/b/x/c;->i:Z

    move-object v11, p1

    .line 3
    iput-object v11, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    iput-object v9, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iput-object v10, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    move-object/from16 v5, p4

    iput-object v5, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    move-object/from16 v12, p5

    iput-object v12, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->s:Ljava/lang/String;

    invoke-virtual {p0, p2, v10}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->z(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v8, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object v3, p1

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->t:Z

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->x()V

    return-void
.end method

.method public h()V
    .locals 1

    const-string v0, "ALL"

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->t:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->x()V

    return-void
.end method

.method public i(Lc/b/m/d/w;)V
    .locals 9

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->v()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->k:Lc/b/x/c;

    .line 1
    iput v0, v1, Lc/b/x/c;->e:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, v1, Lc/b/x/c;->i:Z

    .line 3
    invoke-virtual {p1}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->s:Ljava/lang/String;

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public m(I)V
    .locals 8

    iput p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->s:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0043

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x4c7

    if-ne p1, v0, :cond_1

    const/16 p1, 0x144

    if-ne p2, p1, :cond_1

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    if-nez p3, :cond_0

    const-string p1, "ALL"

    .line 1
    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->j:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 3
    iput-boolean p2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->t:Z

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->x()V

    :cond_0
    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "DATA_INVENTORY"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x180

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-ne p1, v0, :cond_0

    const-class p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const/16 v0, 0x4c7

    invoke-static {p0, p1, v0}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->B()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->i:Lc/b/l/g0;

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/b/l/g0;->f(Lb/m/d/y;)V

    goto :goto_1

    :cond_2
    const p1, 0x7f100263

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3
    :cond_3
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08004a

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->B()V

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
    .locals 12

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->h:Ljava/util/ArrayList;

    new-instance v2, Lc/b/m/b/e;

    invoke-direct {v2, v1}, Lc/b/m/b/e;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->g:Lc/b/m/b/e;

    .line 2
    iput-object p0, v2, Lc/b/m/b/e;->a:Lc/b/m/b/e$a;

    .line 3
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->g:Lc/b/m/b/e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->g:Lc/b/m/b/e;

    new-instance v1, Lc/b/m/a/b/c/a;

    invoke-direct {v1, p0}, Lc/b/m/a/b/c/a;-><init>(Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;)V

    .line 4
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 5
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->j:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$h;)V

    new-instance v0, Lc/b/x/c;

    invoke-direct {v0, p0}, Lc/b/x/c;-><init>(Lc/b/x/c$a;)V

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->k:Lc/b/x/c;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$q;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    invoke-static {}, Lb/u/a;->C()Lc/b/m/d/m;

    move-result-object v2

    const-string v3, "created_at"

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lc/b/m/d/m;->h()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lc/b/m/d/m;->l()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v2

    :goto_3
    iput-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->s:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "KEY_DATA_FILTER_REPORT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lc/b/m/d/i;

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->u:Z

    invoke-virtual {v3}, Lc/b/m/d/i;->b()Lc/b/m/d/w;

    move-result-object v4

    iput-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->v:Lc/b/m/d/w;

    invoke-virtual {v3}, Lc/b/m/d/i;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    invoke-virtual {v3}, Lc/b/m/d/i;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    invoke-virtual {v3}, Lc/b/m/d/i;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    :cond_4
    iget-boolean v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->u:Z

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->k:Lc/b/x/c;

    .line 7
    iput-boolean v1, v0, Lc/b/x/c;->i:Z

    .line 8
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->v:Lc/b/m/d/w;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->v:Lc/b/m/d/w;

    invoke-virtual {v1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->z(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 9
    :cond_6
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4, v4, v1}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v3, v4, v4, v1}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    new-instance v3, Lc/b/m/d/m;

    sget-object v4, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v3, v5, v1, v4}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    invoke-virtual {v3, v9}, Lc/b/m/d/m;->x(I)V

    invoke-virtual {v3, v8}, Lc/b/m/d/m;->z(I)V

    invoke-virtual {v3, v6}, Lc/b/m/d/m;->E(I)V

    invoke-virtual {v3, v0}, Lc/b/m/d/m;->F(I)V

    invoke-virtual {v3, v7}, Lc/b/m/d/m;->G(I)V

    invoke-virtual {v3, v10}, Lc/b/m/d/m;->H(I)V

    .line 10
    invoke-virtual {v3}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    invoke-virtual {v3}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lc/b/m/d/m;->A(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v3}, Lb/u/a;->c0(Lc/b/m/d/m;)V

    .line 12
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->i:Lc/b/l/g0;

    .line 13
    iput-object p0, v0, Lc/b/l/g0;->h:Lc/b/l/g0$a;

    .line 14
    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v8, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    iget-object v9, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    const/4 v11, 0x1

    move-object v4, p0

    move-object v10, v2

    invoke-virtual/range {v4 .. v11}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    const/4 v9, 0x1

    move-object v8, v2

    invoke-virtual/range {v4 .. v9}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f1003a1

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->c:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f080219

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->f:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f08047d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f08040a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->j:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v0, 0x7f08049a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->l:Landroid/widget/TextView;

    invoke-static {}, Lc/b/l/g0;->e()Lc/b/l/g0;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->i:Lc/b/l/g0;

    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->g:Lc/b/m/b/e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    new-instance v5, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;

    invoke-direct {v5, p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;-><init>(Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lc/b/s/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final x()V
    .locals 8

    const/4 v0, 0x1

    iput v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->k:Lc/b/x/c;

    const/4 v2, 0x0

    .line 1
    iput-boolean v2, v1, Lc/b/x/c;->i:Z

    .line 2
    iput v0, v1, Lc/b/x/c;->e:I

    .line 3
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->s:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->v()V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->p:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->r:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->s:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    move-object v0, p0

    iget v1, v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->q:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$b;

    invoke-direct {v10, p0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$b;-><init>(Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;)V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v10}, Lc/b/s/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc/b/t/b$d;)V

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

    iget-object p2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
