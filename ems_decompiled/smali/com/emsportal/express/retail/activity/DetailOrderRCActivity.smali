.class public Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public A:Landroidx/recyclerview/widget/RecyclerView;

.field public B:Landroid/view/ViewGroup;

.field public C:Landroid/view/ViewGroup;

.field public D:Lc/b/m/e/d/c;

.field public E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/e0;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/e/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lc/b/m/b/p;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Landroid/widget/TextView;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b002f

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 11

    const v0, 0x7f100393

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_ORDER_DRAFT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/e/d/c;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->D:Lc/b/m/e/d/c;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->D:Lc/b/m/e/d/c;

    const/16 v1, 0x8

    if-eqz v0, :cond_7

    const-string v2, "1"

    const-string v3, " - "

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lc/b/m/e/d/c;->a()Lc/b/m/e/d/a;

    move-result-object v4

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/e/d/c;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/e/d/c;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/e/d/c;->l()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lb/u/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lc/b/m/e/d/a;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->r()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->p:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lc/b/m/e/d/a;->y()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " s\u1ea3n ph\u1ea9m"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->n:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lc/b/m/e/d/a;->z()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " g"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->x()D

    move-result-wide v5

    invoke-static {v5, v6}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->l()D

    move-result-wide v5

    invoke-static {v5, v6}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/e/d/c;->b()Lc/b/m/e/d/b;

    move-result-object v3

    invoke-virtual {v0}, Lc/b/m/e/d/c;->n()Lc/b/m/e/d/f;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/b/m/e/d/f;->b()D

    move-result-wide v7

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    iget-object v9, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->u:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lc/b/m/e/d/b;->a()D

    move-result-wide v5

    :cond_2
    sub-double v7, v5, v7

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->r:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide v9, 0x3ff199999999999aL    # 1.1

    mul-double v7, v7, v9

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->s:Landroid/widget/TextView;

    invoke-static {v7, v8}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->t:Landroid/widget/TextView;

    invoke-static {v5, v6}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lc/b/m/e/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v5, 0x7f07005a

    const v6, 0x7f070059

    if-eqz v3, :cond_3

    const v3, 0x7f070059

    goto :goto_1

    :cond_3
    const v3, 0x7f07005a

    :goto_1
    iget-object v7, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->y:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v4}, Lc/b/m/e/d/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v5, 0x7f070059

    :cond_4
    iget-object v2, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->z:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lc/b/m/e/d/f;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->F:Ljava/util/List;

    .line 2
    new-instance v3, Lc/b/m/b/p;

    invoke-direct {v3}, Lc/b/m/b/p;-><init>()V

    iput-object v3, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->G:Lc/b/m/b/p;

    .line 3
    iput-object v2, v3, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 4
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->G:Lc/b/m/b/p;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 5
    new-instance v0, Lc/b/m/e/a/a;

    invoke-direct {v0, p0}, Lc/b/m/e/a/a;-><init>(Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;)V

    invoke-static {v0}, Lc/b/s/a;->m(Lc/b/t/b$d;)V

    goto :goto_3

    .line 6
    :cond_6
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v4}, Lc/b/m/e/d/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->c:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public r()V
    .locals 2

    const v0, 0x7f080452

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080496

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f080468

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080495

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0804a9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f080446

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080494

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0804a8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f080445

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f080491

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->m:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0804ba

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0804f2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f0804eb

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f08048d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f08047f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0804ed

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0804d6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f080478

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0804c3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f08049d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->y:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->z:Landroid/widget/ImageView;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->B:Landroid/view/ViewGroup;

    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->C:Landroid/view/ViewGroup;

    const v0, 0x7f080479

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->x:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/emsportal/express/retail/activity/DetailOrderRCActivity;->C:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
