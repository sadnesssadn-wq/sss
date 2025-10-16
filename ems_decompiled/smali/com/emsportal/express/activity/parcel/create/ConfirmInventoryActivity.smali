.class public Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic z:I


# instance fields
.field public c:Landroid/widget/Spinner;

.field public d:Landroidx/appcompat/widget/SwitchCompat;

.field public e:Landroidx/appcompat/widget/SwitchCompat;

.field public f:Landroidx/appcompat/widget/SwitchCompat;

.field public g:Landroid/widget/TextView;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Landroid/view/ViewGroup;

.field public j:Landroid/widget/EditText;

.field public k:Lcom/emsportal/widget/CurrencyEditText;

.field public l:Lcom/emsportal/widget/CurrencyEditText;

.field public m:Landroid/view/ViewGroup;

.field public n:Landroid/view/ViewGroup;

.field public o:Lc/b/m/b/o;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/m/d/e0;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/u;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lc/b/m/b/q;

.field public s:Lc/b/m/d/j;

.field public t:Ljava/lang/String;

.field public u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0023

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->g:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v0, 0x7f1002be

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const-string v2, "0"

    const-string v3, "\\s+"

    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->k:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v4}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v:Ljava/lang/String;

    invoke-static {v4}, Lb/u/a;->q(Ljava/lang/String;)D

    move-result-wide v4

    const-wide v6, 0x4187d78400000000L    # 5.0E7

    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v0, 0x7f100257

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v0, 0x7f100258

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->k:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_3
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->l:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v4}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->w:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v0, 0x7f100273

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->l:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_4
    const/16 v3, 0x8

    if-ne p1, v3, :cond_5

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v:Ljava/lang/String;

    :cond_5
    if-ne v1, v3, :cond_6

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->w:Ljava/lang/String;

    .line 1
    :cond_6
    new-instance p1, Lc/b/m/a/b/a/g;

    invoke-direct {p1, p0}, Lc/b/m/a/b/a/g;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V

    const v0, 0x7f10025d

    invoke-static {p0, v0, p1}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    :cond_7
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/j;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/b/m/d/j;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    invoke-virtual {v0}, Lc/b/m/d/j;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lb/u/a;->K()Z

    move-result v0

    iput-boolean v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->y:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->c:Landroid/widget/Spinner;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->q:Ljava/util/ArrayList;

    .line 2
    new-instance v2, Lc/b/m/d/u;

    const-string v3, "999"

    const-string v4, "Ch\u1ecdn d\u1ecbch v\u1ee5"

    invoke-direct {v2, v3, v4}, Lc/b/m/d/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lc/b/m/b/q;

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->q:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lc/b/m/b/q;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->r:Lc/b/m/b/q;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    new-instance v1, Lc/b/m/a/b/a/c;

    invoke-direct {v1, p0}, Lc/b/m/a/b/a/c;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    new-instance v2, Lc/b/m/b/o;

    invoke-direct {v2, v1}, Lc/b/m/b/o;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->o:Lc/b/m/b/o;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->o:Lc/b/m/b/o;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->o:Lc/b/m/b/o;

    new-instance v1, Lc/b/m/a/b/a/d;

    invoke-direct {v1, p0}, Lc/b/m/a/b/a/d;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V

    .line 6
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 7
    new-instance v0, Lc/b/m/a/b/a/e;

    invoke-direct {v0, p0}, Lc/b/m/a/b/a/e;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V

    .line 8
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/config/service"

    invoke-static {v3, v1, v2, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 9
    new-instance v0, Lc/b/m/a/b/a/f;

    invoke-direct {v0, p0}, Lc/b/m/a/b/a/f;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V

    invoke-static {v0}, Lc/b/s/a;->m(Lc/b/t/b$d;)V

    .line 10
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->i:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public r()V
    .locals 2

    iput-object p0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f0803e7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->c:Landroid/widget/Spinner;

    const v0, 0x7f080405

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->d:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f080404

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->e:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f080402

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->f:Landroidx/appcompat/widget/SwitchCompat;

    const v0, 0x7f080458

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->h:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080236

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->i:Landroid/view/ViewGroup;

    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->k:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->l:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f080246

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->m:Landroid/view/ViewGroup;

    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->n:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final v(Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/m/d/e0;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/e0;

    invoke-virtual {v0}, Lc/b/m/d/e0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lc/b/m/d/e0;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->n:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_3
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v(Ljava/util/List;ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
