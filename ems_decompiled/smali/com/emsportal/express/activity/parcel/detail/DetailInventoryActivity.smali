.class public Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/ImageView;

.field public C:Landroid/widget/ImageView;

.field public D:Landroidx/recyclerview/widget/RecyclerView;

.field public E:Landroid/view/ViewGroup;

.field public F:Landroid/view/ViewGroup;

.field public G:Landroid/view/ViewGroup;

.field public H:Lc/b/m/d/f;

.field public I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/e0;",
            ">;"
        }
    .end annotation
.end field

.field public J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/f0;",
            ">;"
        }
    .end annotation
.end field

.field public K:Lc/b/m/b/p;

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

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b002e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    const v2, 0x7f100263

    const-string v3, "DATA_INVENTORY"

    if-ne p1, v0, :cond_1

    .line 1
    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->H:Lc/b/m/d/f;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v4, Lcom/emsportal/express/activity/parcel/detail/RoutePackageActivity;

    invoke-static {p0, v4, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->w:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 5
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->H:Lc/b/m/d/f;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/express/activity/parcel/detail/RouteDeliveredPackageActivity;

    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 8

    const v0, 0x7f100393

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/f;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->H:Lc/b/m/d/f;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->H:Lc/b/m/d/f;

    if-eqz v0, :cond_16

    const-string v1, "1"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->I()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->q:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc/b/m/d/f;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " s\u1ea3n ph\u1ea9m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->o:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc/b/m/d/f;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " g"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/f;->F()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "0"

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v2, v3

    :cond_2
    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->p:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/f;->i()Lc/b/m/d/k;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v4, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lc/b/m/d/k;->b()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v4, v3

    :cond_5
    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->r:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_6

    move-object v4, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Lc/b/m/d/k;->f()Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move-object v4, v3

    :cond_8
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->v:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_9

    move-object v6, v3

    goto :goto_2

    :cond_9
    invoke-virtual {v2}, Lc/b/m/d/k;->c()Ljava/lang/String;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    move-object v6, v3

    :cond_b
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    if-nez v2, :cond_c

    move-object v2, v3

    goto :goto_3

    :cond_c
    invoke-virtual {v2}, Lc/b/m/d/k;->a()Ljava/lang/String;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_4

    :cond_d
    move-object v3, v2

    :cond_e
    :goto_4
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sub-double v4, v2, v4

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->s:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide v6, 0x3ff199999999999aL    # 1.1

    mul-double v4, v4, v6

    iget-object v6, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->t:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->u:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x7f07005a

    const v4, 0x7f070059

    if-eqz v2, :cond_f

    const v2, 0x7f070059

    goto :goto_5

    :cond_f
    const v2, 0x7f07005a

    :goto_5
    iget-object v5, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->B:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lc/b/m/d/f;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const v3, 0x7f070059

    :cond_10
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lc/b/m/d/f;->n()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->D:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->J:Ljava/util/List;

    .line 2
    new-instance v4, Lc/b/m/b/p;

    invoke-direct {v4, v3}, Lc/b/m/b/p;-><init>(Ljava/util/List;)V

    iput-object v4, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->K:Lc/b/m/b/p;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->K:Lc/b/m/b/p;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    new-instance v1, Lc/b/m/a/b/b/b;

    invoke-direct {v1, p0}, Lc/b/m/a/b/b/b;-><init>(Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;)V

    invoke-static {v1}, Lc/b/s/a;->m(Lc/b/t/b$d;)V

    goto :goto_6

    .line 4
    :cond_11
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->E:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc/b/m/d/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f10031b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/b/m/d/f;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/f;->w()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    const-string v1, ""

    :cond_12
    invoke-virtual {v0}, Lc/b/m/d/f;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->G:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_14

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const v1, 0x7f050041

    goto :goto_8

    :cond_14
    const v1, 0x7f050042

    :goto_8
    if-eqz v0, :cond_15

    const-string v2, "C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const v1, 0x7f050097

    :cond_15
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    :cond_16
    :goto_9
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public r()V
    .locals 3

    const v0, 0x7f080452

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080496

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0804c2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f080468

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->g:Landroid/widget/TextView;

    const v1, 0x7f080495

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->h:Landroid/widget/TextView;

    const v1, 0x7f0804a9

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f080446

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f080494

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0804a8

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f080445

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->l:Landroid/widget/TextView;

    const v1, 0x7f080491

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->n:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    const v1, 0x7f0804ba

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0804f2

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f0804eb

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f08048d

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f08047f

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f0804ed

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f0804d6

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->u:Landroid/widget/TextView;

    const v1, 0x7f080478

    invoke-virtual {p0, v1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->v:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0804c3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0804a3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->z:Landroid/widget/TextView;

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->B:Landroid/widget/ImageView;

    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->C:Landroid/widget/ImageView;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->D:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08025a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->E:Landroid/view/ViewGroup;

    const v0, 0x7f08049d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->x:Landroid/widget/TextView;

    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->F:Landroid/view/ViewGroup;

    const v0, 0x7f080479

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->y:Landroid/widget/TextView;

    const v0, 0x7f08025e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->G:Landroid/view/ViewGroup;

    const v0, 0x7f0804ca

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->A:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;->F:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
