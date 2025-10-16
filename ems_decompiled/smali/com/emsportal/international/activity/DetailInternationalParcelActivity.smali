.class public Lcom/emsportal/international/activity/DetailInternationalParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public A:Landroidx/recyclerview/widget/RecyclerView;

.field public B:Landroid/view/ViewGroup;

.field public C:Lc/b/r/c/e;

.field public D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/e0;",
            ">;"
        }
    .end annotation
.end field

.field public E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public F:Lc/b/r/b/p;

.field public G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/r/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public H:Lc/b/r/b/j;

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

.field public y:Landroid/widget/TextView;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b002d

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    const v2, 0x7f100263

    const-string v3, "KEY_INTERNATIONAL_PARCEL"

    if-ne p1, v0, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->C:Lc/b/r/c/e;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v4, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;

    invoke-static {p0, v4, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->s:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 4
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->C:Lc/b/r/c/e;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/international/activity/RouteDeliveredInternationalParcelActivity;

    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 10

    const v0, 0x7f100393

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->C:Lc/b/r/c/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 1
    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc/b/r/c/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b/r/c/e;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b/r/c/e;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b/r/c/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc/b/r/c/e;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b/r/c/e;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b/r/c/e;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->n:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc/b/r/c/e;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " g"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->o:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc/b/r/c/e;->G()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/u/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " usd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/r/c/e;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v2, v0, Lc/b/r/c/e;->L:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lc/b/r/c/e;->L:Ljava/util/List;

    :cond_0
    iget-object v2, v0, Lc/b/r/c/e;->L:Ljava/util/List;

    .line 3
    iput-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->E:Ljava/util/List;

    .line 4
    iget-object v2, v0, Lc/b/r/c/e;->M:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lc/b/r/c/e;->M:Ljava/util/List;

    :cond_1
    iget-object v2, v0, Lc/b/r/c/e;->M:Ljava/util/List;

    .line 5
    iput-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->G:Ljava/util/List;

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->E:Ljava/util/List;

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->E:Ljava/util/List;

    .line 6
    new-instance v5, Lc/b/r/b/p;

    invoke-direct {v5, v4}, Lc/b/r/b/p;-><init>(Ljava/util/List;)V

    iput-object v5, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->F:Lc/b/r/b/p;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->F:Lc/b/r/b/p;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 7
    new-instance v2, Lc/b/r/a/k0;

    invoke-direct {v2, p0}, Lc/b/r/a/k0;-><init>(Lcom/emsportal/international/activity/DetailInternationalParcelActivity;)V

    invoke-static {v2}, Lc/b/s/a;->m(Lc/b/t/b$d;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    :goto_0
    new-instance v2, Lc/b/r/b/j;

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->G:Ljava/util/List;

    invoke-direct {v2, v4}, Lc/b/r/b/j;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->H:Lc/b/r/b/j;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->H:Lc/b/r/b/j;

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 10
    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->t:Landroid/widget/TextView;

    .line 11
    iget-object v4, v0, Lc/b/r/c/e;->D:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/r/c/e;->q()D

    move-result-wide v4

    invoke-virtual {v0}, Lc/b/r/c/e;->E()D

    move-result-wide v6

    sub-double v8, v6, v4

    invoke-static {v4, v5}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "D "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v4, v0, Lc/b/r/c/e;->n:Ljava/lang/String;

    .line 14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " x R "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v4, v0, Lc/b/r/c/e;->o:Ljava/lang/String;

    .line 16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " x C "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v4, v0, Lc/b/r/c/e;->p:Ljava/lang/String;

    const-string v5, " (cm)"

    .line 18
    invoke-static {v2, v4, v5}, Lc/a/a/a/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/r/c/e;->p()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/r/c/e;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lc/b/r/c/e;->D()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Lc/b/r/c/e;->F()Ljava/lang/String;

    move-result-object v0

    .line 19
    new-instance v2, Lc/b/r/a/l0;

    invoke-direct {v2, p0}, Lc/b/r/a/l0;-><init>(Lcom/emsportal/international/activity/DetailInternationalParcelActivity;)V

    invoke-static {v0, v1, v2}, Lc/b/s/a;->p(Ljava/lang/String;ZLc/b/t/b$d;)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()V
    .locals 3

    const v0, 0x7f080452

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080496

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0804c2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080468

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f080495

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0804a9

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f080446

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f080494

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0804a8

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f080445

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f0804f2

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0804eb

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f08048d

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f08047f

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f0804ed

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f0804d6

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f080478

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0804c3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->A:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->B:Landroid/view/ViewGroup;

    const v0, 0x7f08049d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0804b3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0804df

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->v:Landroid/widget/TextView;

    const v1, 0x7f080216

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f080471

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f080481

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f0804d4

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->y:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KEY_INTERNATIONAL_PARCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/r/c/e;

    iput-object v0, p0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->C:Lc/b/r/c/e;

    :cond_0
    return-void
.end method
