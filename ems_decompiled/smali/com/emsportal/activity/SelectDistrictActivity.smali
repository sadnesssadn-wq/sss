.class public Lcom/emsportal/activity/SelectDistrictActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lc/b/i/j;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/emsportal/model/ObjProvince;

.field public i:Lcom/emsportal/model/ObjDistrict;

.field public j:Lcom/emsportal/model/ObjWard;

.field public k:Lcom/emsportal/model/Postal;

.field public l:Lcom/emsportal/activity/SelectDistrictActivity;

.field public m:I

.field public n:I

.field public o:Z

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    iput-boolean v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->p:Ljava/util/List;

    return-void
.end method

.method public static v(Lcom/emsportal/activity/SelectDistrictActivity;Ljava/lang/Class;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->e:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/emsportal/model/ObjDistrict;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->h:Lcom/emsportal/model/ObjProvince;

    const-string v2, "PROVINCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "DISTRICT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->k:Lcom/emsportal/model/Postal;

    const-string v1, "POSTAL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "FLAG_TARGET"

    const/16 v1, 0x216

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->l:Lcom/emsportal/activity/SelectDistrictActivity;

    invoke-static {p0, p1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public static w(Lcom/emsportal/activity/SelectDistrictActivity;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjDistrict;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->m:I

    const-string v2, "FLAG_TARGET"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->h:Lcom/emsportal/model/ObjProvince;

    const-string v2, "PROVINCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "DISTRICT"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->j:Lcom/emsportal/model/ObjWard;

    const-string v1, "WARD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->l:Lcom/emsportal/activity/SelectDistrictActivity;

    const-class p1, Lcom/emsportal/activity/SelectWardActivity;

    invoke-static {p0, p1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0050

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
    .locals 2

    iget-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/emsportal/activity/SelectDistrictActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/activity/SelectDistrictActivity$a;-><init>(Lcom/emsportal/activity/SelectDistrictActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public r()V
    .locals 4

    iput-object p0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->l:Lcom/emsportal/activity/SelectDistrictActivity;

    const v0, 0x7f1003ad

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->c:Landroid/widget/EditText;

    const v1, 0x7f1000e1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "DISTRICT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjProvince;

    iput-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->h:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    iput-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->i:Lcom/emsportal/model/ObjDistrict;

    const-string v1, "FLAG_TARGET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->m:I

    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->h:Lcom/emsportal/model/ObjProvince;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/emsportal/model/ObjProvince;->b()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->g:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->i:Lcom/emsportal/model/ObjDistrict;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/emsportal/activity/SelectDistrictActivity;->y(Lcom/emsportal/model/ObjDistrict;)V

    :cond_1
    const-string v1, "WARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjWard;

    iput-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->j:Lcom/emsportal/model/ObjWard;

    :cond_2
    const-string v1, "POSTAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/Postal;

    iput-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->k:Lcom/emsportal/model/Postal;

    .line 2
    :cond_3
    iget-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Lc/b/i/j;

    iget-object v2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->e:Ljava/util/List;

    invoke-direct {v1, v2}, Lc/b/i/j;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->f:Lc/b/i/j;

    new-instance v2, Lc/b/h/m;

    invoke-direct {v2, p0}, Lc/b/h/m;-><init>(Lcom/emsportal/activity/SelectDistrictActivity;)V

    .line 4
    iput-object v2, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->f:Lc/b/i/j;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v1}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lb/u/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->p:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    const/4 v3, 0x0

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->o:Z

    if-eqz v2, :cond_3

    iput v3, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    iput-boolean v3, p0, Lcom/emsportal/activity/SelectDistrictActivity;->o:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/emsportal/activity/SelectDistrictActivity;->x(Ljava/lang/String;)Ljava/util/List;

    :goto_1
    iget-object p1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->p:Ljava/util/List;

    return-object p1
.end method

.method public final y(Lcom/emsportal/model/ObjDistrict;)V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/activity/SelectDistrictActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v1}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/emsportal/model/ObjDistrict;->h(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Lcom/emsportal/model/ObjDistrict;->h(Z)V

    :goto_0
    iget v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/emsportal/activity/SelectDistrictActivity;->o:Z

    if-eqz v3, :cond_3

    iput v4, p0, Lcom/emsportal/activity/SelectDistrictActivity;->n:I

    iput-boolean v4, p0, Lcom/emsportal/activity/SelectDistrictActivity;->o:Z

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/emsportal/activity/SelectDistrictActivity;->y(Lcom/emsportal/model/ObjDistrict;)V

    return-void
.end method
