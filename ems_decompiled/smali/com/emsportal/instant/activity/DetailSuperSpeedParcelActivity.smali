.class public Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final x:Ljava/util/List;


# instance fields
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

.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Lc/b/q/b/d;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/view/ViewGroup;

.field public u:Landroid/view/ViewGroup;

.field public v:Landroid/view/ViewGroup;

.field public w:Landroid/view/ViewGroup;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->x:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0032

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
    .locals 8

    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080452

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080496

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f080468

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080495

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0804a9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f080446

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0804d6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f080473

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0804a5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0804d7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->n:Landroid/widget/TextView;

    const v0, 0x7f08045e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f08049f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080472

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f08023a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->v:Landroid/view/ViewGroup;

    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->t:Landroid/view/ViewGroup;

    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->u:Landroid/view/ViewGroup;

    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->w:Landroid/view/ViewGroup;

    const v0, 0x7f08044b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/q/d/e;

    if-eqz v0, :cond_2

    .line 1
    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->x:Ljava/util/List;

    invoke-virtual {v0}, Lc/b/q/d/e;->C()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->w:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-virtual {v0}, Lc/b/q/d/e;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v1, "#,### \u0111"

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    iget-object v2, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->u:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->t:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->v:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    iget-object v2, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->i()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#.### Km"

    invoke-static {v3, v4}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lc/b/q/b/d;

    invoke-virtual {v0}, Lc/b/q/d/e;->v()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lc/b/q/b/d;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->q:Lc/b/q/b/d;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/DetailSuperSpeedParcelActivity;->q:Lc/b/q/b/d;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    :cond_2
    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method
