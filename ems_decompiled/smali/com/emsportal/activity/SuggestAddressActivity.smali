.class public Lcom/emsportal/activity/SuggestAddressActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Lcom/emsportal/model/ObjProvince;

.field public j:Lcom/emsportal/model/ObjDistrict;

.field public k:Lcom/emsportal/model/ObjWard;

.field public l:I

.field public m:Lc/b/i/l;

.field public n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0053

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/emsportal/activity/SuggestAddressActivity;->v()V

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x1e6

    const-string v2, "WARD"

    const-string v3, "DISTRICT"

    const-string v4, "PROVINCE"

    const/16 v5, 0x1e1

    const/16 v6, 0x1d4

    const v7, 0x7f100263

    const-string v8, "FLAG_TARGET"

    const/16 v9, 0x216

    if-ne p1, v0, :cond_6

    .line 1
    iget-object p1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->i:Lcom/emsportal/model/ObjProvince;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002b7

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto/16 :goto_3

    :cond_2
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto/16 :goto_3

    :cond_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->l:I

    if-ne v0, v9, :cond_4

    const/16 v1, 0x1e1

    goto :goto_1

    :cond_4
    if-ne v0, v6, :cond_5

    :goto_1
    invoke-virtual {p1, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->i:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->k:Lcom/emsportal/model/ObjWard;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectDistrictActivity;

    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_3

    .line 2
    :cond_6
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_b

    .line 3
    iget-object p1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10026c

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_3

    :cond_7
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v7}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_3

    :cond_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->l:I

    if-ne v0, v9, :cond_9

    const/16 v1, 0x1e1

    goto :goto_2

    :cond_9
    if-ne v0, v6, :cond_a

    :goto_2
    invoke-virtual {p1, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_a
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->i:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->k:Lcom/emsportal/model/ObjWard;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectWardActivity;

    const/16 v1, 0x277

    invoke-static {p0, v0, v1, p1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_b
    :goto_3
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "PROVINCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DISTRICT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WARD"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjWard;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->i:Lcom/emsportal/model/ObjProvince;

    iput-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    iput-object p1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->k:Lcom/emsportal/model/ObjWard;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/emsportal/activity/SuggestAddressActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->k:Lcom/emsportal/model/ObjWard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjWard;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "FLAG_TARGET"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->l:I

    const-string v1, "PROVINCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjProvince;

    iput-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->i:Lcom/emsportal/model/ObjProvince;

    const-string v1, "DISTRICT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    iput-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    :cond_0
    const-string v1, "WARD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjWard;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->k:Lcom/emsportal/model/ObjWard;

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->n:Ljava/util/List;

    new-instance v2, Lc/b/i/l;

    invoke-direct {v2, v1}, Lc/b/i/l;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/emsportal/activity/SuggestAddressActivity;->m:Lc/b/i/l;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->m:Lc/b/i/l;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080115

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v0, 0x7f0800dc

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v0, 0x7f08049c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804b5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f080474

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0804f0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f080457

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/SuggestAddressActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080259

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-void
.end method

.method public final v()V
    .locals 4

    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100263

    invoke-static {v0, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->l:I

    const/16 v2, 0x216

    const-string v3, "FLAG_TARGET"

    if-ne v1, v2, :cond_1

    const/16 v1, 0x1e1

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x1d4

    if-ne v1, v2, :cond_2

    const/16 v1, 0x1e6

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->i:Lcom/emsportal/model/ObjProvince;

    const-string v2, "PROVINCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->j:Lcom/emsportal/model/ObjDistrict;

    const-string v2, "DISTRICT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/emsportal/activity/SuggestAddressActivity;->k:Lcom/emsportal/model/ObjWard;

    const-string v2, "WARD"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v1, Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-static {p0, v1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
