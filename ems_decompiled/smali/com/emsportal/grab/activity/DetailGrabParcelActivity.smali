.class public Lcom/emsportal/grab/activity/DetailGrabParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field public n:Landroid/widget/Button;

.field public o:Landroid/widget/Button;

.field public p:Landroidx/recyclerview/widget/RecyclerView;

.field public q:Lc/b/p/b/c;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Lc/b/p/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "X"

    const-string v1, "X1"

    const-string v2, "XX"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->u:Ljava/util/List;

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

    const v0, 0x7f0b002c

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->n:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->t:Lc/b/p/e/b;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lc/b/p/e/b;->c()Lc/b/p/e/d;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100296

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v0

    .line 1
    sget-object v1, Lc/b/l/b0;->j:Ljava/lang/String;

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_DATA_DRIVER"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance p1, Lc/b/l/b0;

    invoke-direct {p1}, Lc/b/l/b0;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 3
    sget-object v1, Lc/b/l/b0;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->o:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->t:Lc/b/p/e/b;

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->t:Lc/b/p/e/b;

    invoke-virtual {v0}, Lc/b/p/e/b;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KEY_URL_FOLLOW_DRIVER_ON_MAP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/emsportal/grab/activity/FollowDriverOnMapActivity;

    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 14

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/p/e/b;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->t:Lc/b/p/e/b;

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {v0}, Lc/b/p/e/b;->f()Lc/b/p/e/g;

    move-result-object v1

    invoke-virtual {v1}, Lc/b/p/e/g;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lc/b/p/e/g;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/p/e/l;

    invoke-virtual {v1}, Lc/b/p/e/g;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/p/e/b;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc/b/p/e/b;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lc/b/p/e/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lc/b/p/e/l;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lc/b/p/e/l;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lc/b/p/e/l;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lc/b/p/e/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lc/b/p/e/b;->r()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lc/b/p/e/b;->i()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v2}, Lc/b/p/e/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->m:Landroid/widget/TextView;

    const-string v2, "#,### \u0111"

    invoke-static {v11, v2}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->r:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-static {v4, v2}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->k:Landroid/widget/TextView;

    const-string v4, "#.# Km"

    invoke-static {v10, v4}, Lb/u/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->j:Landroid/widget/TextView;

    invoke-static {v11, v2}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lc/b/p/e/b;->f()Lc/b/p/e/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/p/e/g;->a()Ljava/util/List;

    move-result-object v0

    new-instance v4, Lc/b/p/b/c;

    invoke-direct {v4, v0}, Lc/b/p/b/c;-><init>(Ljava/util/List;)V

    iput-object v4, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->q:Lc/b/p/b/c;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->q:Lc/b/p/b/c;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080452

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804c9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080496

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f080468

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080495

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0804a9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f080446

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0804d6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f080473

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0804a5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0804d7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f08045e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f08049f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080472

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f08023a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f080232

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f08044b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->n:Landroid/widget/Button;

    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;->o:Landroid/widget/Button;

    return-void
.end method
