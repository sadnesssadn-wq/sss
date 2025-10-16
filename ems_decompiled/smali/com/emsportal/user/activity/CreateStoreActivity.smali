.class public Lcom/emsportal/user/activity/CreateStoreActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public A:Lc/b/i/m;

.field public B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/emsportal/model/ObjWard;",
            ">;"
        }
    .end annotation
.end field

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:I

.field public G:Lc/b/m/d/h0;

.field public H:I

.field public I:Lcom/emsportal/model/ObjProvince;

.field public J:Lcom/emsportal/model/ObjDistrict;

.field public K:Lcom/emsportal/model/ObjWard;

.field public L:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public M:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public N:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public c:Landroidx/appcompat/widget/AppCompatSpinner;

.field public d:Landroidx/appcompat/widget/AppCompatSpinner;

.field public e:Landroidx/appcompat/widget/AppCompatSpinner;

.field public f:Landroid/view/ViewGroup;

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/Switch;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:I

.field public w:Lc/b/i/i;

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/emsportal/model/ObjProvince;",
            ">;"
        }
    .end annotation
.end field

.field public y:Lc/b/i/b;

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->E:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->H:I

    new-instance v0, Lcom/emsportal/user/activity/CreateStoreActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/CreateStoreActivity$a;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/emsportal/user/activity/CreateStoreActivity$b;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/CreateStoreActivity$b;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/emsportal/user/activity/CreateStoreActivity$c;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/CreateStoreActivity$c;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public static v(Lcom/emsportal/user/activity/CreateStoreActivity;ILjava/util/List;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->H:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    const/16 v0, 0x39

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xc1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2a5

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/emsportal/model/ObjWard;

    invoke-virtual {v3}, Lcom/emsportal/model/ObjWard;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/m/d/h0;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 3
    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->e:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->e:Landroidx/appcompat/widget/AppCompatSpinner;

    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_6

    :cond_3
    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_5

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v3}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/m/d/h0;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 5
    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/emsportal/user/activity/CreateStoreActivity;->w(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_8

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v3}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/m/d/h0;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 7
    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/emsportal/user/activity/CreateStoreActivity;->x(Ljava/lang/String;)V

    :goto_6
    iget p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->H:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->H:I

    :cond_9
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b002a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->o:Landroid/widget/TextView;

    const v1, 0x7f100263

    if-ne p1, v0, :cond_5

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    const/16 v1, 0x7b

    const-string v2, "address"

    const-string v3, "active"

    const-string v4, "phone"

    const-string v5, "username"

    const-string v6, "name"

    const/4 v7, 0x0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3ff

    if-eq p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/emsportal/user/activity/CreateStoreActivity;->y()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->n:Landroid/widget/Switch;

    invoke-virtual {v10}, Landroid/widget/Switch;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_1

    iput v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    goto :goto_0

    :cond_1
    iput v7, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    :goto_0
    iget-object v7, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v7}, Lc/b/m/d/h0;->h()Ljava/lang/String;

    move-result-object v7

    iget v10, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 1
    new-instance v11, Lc/b/v/a/l;

    invoke-direct {v11, p0}, Lc/b/v/a/l;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    .line 2
    sget v12, Lc/b/s/a;->d:I

    const-string v12, "id"

    invoke-static {v12, v7, v6, p1}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "http://ws.ems.com.vn/api/v1/inventory/update"

    invoke-static {v1, p1, v0, v11}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    goto/16 :goto_3

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/emsportal/user/activity/CreateStoreActivity;->y()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->n:Landroid/widget/Switch;

    invoke-virtual {v10}, Landroid/widget/Switch;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    iput v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    goto :goto_1

    :cond_3
    iput v7, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    :goto_1
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->C:Ljava/lang/String;

    iget-object v7, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->D:Ljava/lang/String;

    iget-object v10, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->E:Ljava/lang/String;

    iget v11, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 4
    new-instance v12, Lc/b/v/a/k;

    invoke-direct {v12, p0}, Lc/b/v/a/k;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    .line 5
    sget v13, Lc/b/s/a;->d:I

    invoke-static {v6, p1, v5, v1}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "province_code"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "district_code"

    invoke-virtual {p1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ward_code"

    invoke-virtual {p1, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://ws.ems.com.vn/api/v1/inventory/create"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v12}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    goto/16 :goto_3

    :cond_4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->s:Landroid/widget/TextView;

    const/16 v2, 0x1d4

    const-string v3, "FLAG_TARGET"

    const-string v4, "WARD"

    const-string v5, "DISTRICT"

    const-string v6, "PROVINCE"

    if-ne p1, v0, :cond_7

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->I:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->J:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->K:Lcom/emsportal/model/ObjWard;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v0, Lcom/emsportal/activity/SelectProvinceActivity;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->t:Landroid/widget/TextView;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->I:Lcom/emsportal/model/ObjProvince;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002b7

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_8
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->I:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->J:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->K:Lcom/emsportal/model/ObjWard;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectDistrictActivity;

    :goto_2
    invoke-static {p0, v0, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->u:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->J:Lcom/emsportal/model/ObjDistrict;

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10026c

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_b
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_c
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->I:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->J:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->K:Lcom/emsportal/model/ObjWard;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/activity/SelectWardActivity;

    const/16 v1, 0x277

    invoke-static {p0, v0, v1, p1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_d
    :goto_3
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

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

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->I:Lcom/emsportal/model/ObjProvince;

    iput-object v1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->J:Lcom/emsportal/model/ObjDistrict;

    iput-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->K:Lcom/emsportal/model/ObjWard;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->C:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->J:Lcom/emsportal/model/ObjDistrict;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->D:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->K:Lcom/emsportal/model/ObjWard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjWard;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/emsportal/model/ObjWard;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->E:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 8

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3ff

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f1003b6

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "KEY_STORE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/h0;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/m/d/h0;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->k:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v3}, Lc/b/m/d/h0;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->l:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v3}, Lc/b/m/d/h0;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->m:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v3}, Lc/b/m/d/h0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v0}, Lc/b/m/d/h0;->a()I

    move-result v0

    iput v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->F:I

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->n:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v3}, Lc/b/m/d/h0;->a()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v2}, Lc/b/m/d/h0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v2}, Lc/b/m/d/h0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->r:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->G:Lc/b/m/d/h0;

    invoke-virtual {v2}, Lc/b/m/d/h0;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->o:Landroid/widget/TextView;

    const v2, 0x7f1003cb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f100391

    .line 2
    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->x:Ljava/util/ArrayList;

    .line 4
    new-instance v5, Lcom/emsportal/model/ObjProvince;

    const-string v6, "112"

    const-string v7, "T\u1ec9nh/Th\u00e0nh ph\u1ed1*"

    invoke-direct {v5, v6, v7}, Lcom/emsportal/model/ObjProvince;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lc/b/i/i;

    iget-object v5, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->x:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lc/b/i/i;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->w:Lc/b/i/i;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->L:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->z:Ljava/util/ArrayList;

    invoke-static {}, Lcom/emsportal/model/ObjDistrict;->b()Lcom/emsportal/model/ObjDistrict;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lc/b/i/b;

    iget-object v5, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->z:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lc/b/i/b;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->y:Lc/b/i/b;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    if-ne v4, v3, :cond_4

    iget-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->e:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->B:Ljava/util/ArrayList;

    invoke-static {}, Lcom/emsportal/model/ObjWard;->b()Lcom/emsportal/model/ObjWard;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lc/b/i/m;

    iget-object v5, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->B:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lc/b/i/m;-><init>(Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->A:Lc/b/i/m;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v4, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    if-ne v4, v3, :cond_5

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->N:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 10
    :cond_5
    new-instance v0, Lc/b/v/a/j;

    invoke-direct {v0, p0}, Lc/b/v/a/j;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    invoke-static {v0}, Lc/b/s/a;->k(Lc/b/t/b$d;)V

    .line 11
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->n:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public r()V
    .locals 2

    const v0, 0x7f0800fd

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f08010b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f080406

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->n:Landroid/widget/Switch;

    const v0, 0x7f080442

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0803e3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->c:Landroidx/appcompat/widget/AppCompatSpinner;

    const v0, 0x7f0803e2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->d:Landroidx/appcompat/widget/AppCompatSpinner;

    const v0, 0x7f0803eb

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSpinner;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->e:Landroidx/appcompat/widget/AppCompatSpinner;

    const v0, 0x7f080255

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->f:Landroid/view/ViewGroup;

    const v0, 0x7f080244

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->g:Landroid/view/ViewGroup;

    const v0, 0x7f080267

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->h:Landroid/view/ViewGroup;

    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->i:Landroid/view/ViewGroup;

    const v0, 0x7f0804b5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f080474

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0804f0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    const v0, 0x7f0804b8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f080476

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0804f1

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->u:Landroid/widget/TextView;

    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/emsportal/user/activity/CreateStoreActivity$d;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/CreateStoreActivity$d;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    .line 1
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "province_code"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http://ws.ems.com.vn/api/v1/address/district"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/emsportal/user/activity/CreateStoreActivity$e;

    invoke-direct {v0, p0}, Lcom/emsportal/user/activity/CreateStoreActivity$e;-><init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V

    .line 1
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "district_code"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http://ws.ems.com.vn/api/v1/address/ward"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public final y()Z
    .locals 6

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f10028f

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 2
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f10028a

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 4
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f10028b

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 6
    :cond_2
    iget v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->v:I

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const v1, 0x7f10026d

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->D:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 12
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const v0, 0x7f1002c1

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    :cond_6
    return v5
.end method
