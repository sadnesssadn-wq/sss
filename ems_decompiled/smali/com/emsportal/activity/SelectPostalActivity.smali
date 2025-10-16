.class public Lcom/emsportal/activity/SelectPostalActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/Postal;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lc/b/i/j;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/Postal;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/emsportal/model/ObjProvince;

.field public i:Lcom/emsportal/model/ObjDistrict;

.field public j:Lcom/emsportal/model/Postal;

.field public k:Lcom/emsportal/activity/SelectPostalActivity;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/emsportal/model/Postal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    iput-boolean v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->o:Ljava/util/List;

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

    iget-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/emsportal/activity/SelectPostalActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/activity/SelectPostalActivity$a;-><init>(Lcom/emsportal/activity/SelectPostalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public r()V
    .locals 6

    iput-object p0, p0, Lcom/emsportal/activity/SelectPostalActivity;->k:Lcom/emsportal/activity/SelectPostalActivity;

    const v0, 0x7f1003b0

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->c:Landroid/widget/EditText;

    const v1, 0x7f1000e9

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DISTRICT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "POSTAL"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjProvince;

    iput-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->h:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    iput-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->i:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/Postal;

    iput-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->j:Lcom/emsportal/model/Postal;

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "FLAG_TARGET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->l:I

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->e:Ljava/util/List;

    new-instance v2, Lc/b/i/j;

    invoke-direct {v2, v1}, Lc/b/i/j;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/emsportal/activity/SelectPostalActivity;->f:Lc/b/i/j;

    new-instance v1, Lc/b/h/n;

    invoke-direct {v1, p0}, Lc/b/h/n;-><init>(Lcom/emsportal/activity/SelectPostalActivity;)V

    .line 4
    iput-object v1, v2, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 5
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->f:Lc/b/i/j;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 6
    iget-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->i:Lcom/emsportal/model/ObjDistrict;

    if-eqz v0, :cond_3

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const v0, 0x7f100263

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->h:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/emsportal/activity/SelectPostalActivity;->i:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v2}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v3, Lc/b/h/o;

    invoke-direct {v3, p0}, Lc/b/h/o;-><init>(Lcom/emsportal/activity/SelectPostalActivity;)V

    .line 10
    sget v4, Lc/b/s/a;->d:I

    const-string v4, "district_code"

    const-string v5, "province_code"

    invoke-static {v4, v2, v5, v0}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "http://ws.ems.com.vn/api/v1/address/postal"

    invoke-static {v2, v0, v1, v3}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    :cond_3
    return-void
.end method

.method public final v(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/emsportal/model/Postal;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->o:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/Postal;

    invoke-virtual {v1}, Lcom/emsportal/model/Postal;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lb/u/a;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/emsportal/activity/SelectPostalActivity;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    const/4 v3, 0x0

    if-ne v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/emsportal/activity/SelectPostalActivity;->n:Z

    if-eqz v2, :cond_3

    iput v3, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    iput-boolean v3, p0, Lcom/emsportal/activity/SelectPostalActivity;->n:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/emsportal/activity/SelectPostalActivity;->v(Ljava/lang/String;)Ljava/util/List;

    :goto_1
    iget-object p1, p0, Lcom/emsportal/activity/SelectPostalActivity;->o:Ljava/util/List;

    return-object p1
.end method

.method public final w(Lcom/emsportal/model/Postal;)V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/activity/SelectPostalActivity;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/Postal;

    invoke-virtual {v1}, Lcom/emsportal/model/Postal;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/emsportal/model/Postal;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/emsportal/model/Postal;->f(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Lcom/emsportal/model/Postal;->f(Z)V

    :goto_0
    iget v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lcom/emsportal/activity/SelectPostalActivity;->n:Z

    if-eqz v3, :cond_2

    iput v4, p0, Lcom/emsportal/activity/SelectPostalActivity;->m:I

    iput-boolean v4, p0, Lcom/emsportal/activity/SelectPostalActivity;->n:Z

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/emsportal/activity/SelectPostalActivity;->w(Lcom/emsportal/model/Postal;)V

    return-void
.end method
