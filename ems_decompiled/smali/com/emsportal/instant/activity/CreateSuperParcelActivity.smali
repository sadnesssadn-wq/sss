.class public Lcom/emsportal/instant/activity/CreateSuperParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final w:Ljava/lang/String;


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/widget/TextView;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Lcom/google/android/material/button/MaterialButton;

.field public k:Lcom/google/android/material/button/MaterialButton;

.field public l:Lc/b/q/b/f;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/q/d/d;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lc/b/q/d/e;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Lc/b/q/b/b;

.field public r:Lb/a/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/e/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lb/a/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/e/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public u:D

.field public v:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->o:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b002b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x266

    if-ne p1, v0, :cond_0

    const/16 p1, 0x202a

    if-ne p2, p1, :cond_0

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/q/d/d;

    invoke-virtual {v3}, Lc/b/q/d/d;->l()Z

    move-result v6

    if-nez v6, :cond_0

    const v0, 0x7f100274

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v3}, Lc/b/q/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb/u/a;->q(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    const-wide v6, 0x412e848000000000L    # 1000000.0

    cmpl-double v0, v1, v6

    if-lez v0, :cond_2

    const v0, 0x7f1002c8

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_3

    .line 5
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    invoke-static/range {v1 .. v7}, Lc/b/q/d/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lc/b/q/d/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->u:D

    invoke-virtual {v0, v1, v2}, Lc/b/q/d/a;->h(D)V

    iget-wide v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->v:D

    invoke-virtual {v0, v1, v2}, Lc/b/q/d/a;->i(D)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    const/16 v2, 0x266

    invoke-static {p0, v0, v2, v1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->g:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    .line 6
    new-instance v1, Lc/b/q/d/d;

    invoke-direct {v1}, Lc/b/q/d/d;-><init>()V

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->l:Lc/b/q/b/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->j:Lcom/google/android/material/button/MaterialButton;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->r:Lb/a/e/c;

    invoke-virtual {p0, v0}, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->w(Lb/a/e/c;)V

    :cond_5
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->k:Lcom/google/android/material/button/MaterialButton;

    if-ne p1, v0, :cond_6

    new-instance p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$c;

    invoke-direct {p1, p0}, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$c;-><init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V

    invoke-static {p0, p1}, Lb/u/a;->k0(Landroid/content/Context;Lc/b/w/l;)V

    :cond_6
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->j:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->k:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    .line 2
    new-instance v3, Lc/b/q/d/d;

    invoke-direct {v3}, Lc/b/q/d/d;-><init>()V

    .line 3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lc/b/q/b/f;

    iget-object v3, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Lc/b/q/b/f;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->l:Lc/b/q/b/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->l:Lc/b/q/b/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->l:Lc/b/q/b/f;

    new-instance v1, Lc/b/q/a/e;

    invoke-direct {v1, p0}, Lc/b/q/a/e;-><init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V

    .line 4
    iput-object v1, v0, Lc/b/q/b/f;->b:Lc/b/q/b/f$a;

    .line 5
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->n:Lc/b/q/d/e;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/q/d/e;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/q/d/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Lc/b/q/d/e;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/q/d/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->m:Ljava/util/List;

    invoke-virtual {v0}, Lc/b/q/d/e;->v()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->l:Lc/b/q/b/f;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    invoke-virtual {v0}, Lc/b/q/d/e;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lc/b/q/d/e;->u()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->u:D

    invoke-virtual {v0}, Lc/b/q/d/e;->w()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->v:D

    invoke-virtual {v0}, Lc/b/q/d/e;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ghi n\u1ee3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "18"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->p:Ljava/lang/String;

    .line 7
    :cond_1
    new-instance v0, Lc/b/q/b/b;

    invoke-direct {v0, p0}, Lc/b/q/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->q:Lc/b/q/b/b;

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v1, Lc/b/q/a/a;

    invoke-direct {v1, p0}, Lc/b/q/a/a;-><init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public r()V
    .locals 3

    const v0, 0x7f100392

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f0800f8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0800e6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->i:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08022f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->g:Landroid/view/ViewGroup;

    const v0, 0x7f08045b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f080449

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->j:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->k:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/q/d/e;

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->n:Lc/b/q/d/e;

    :cond_0
    new-instance v0, Lb/a/e/f/c;

    invoke-direct {v0}, Lb/a/e/f/c;-><init>()V

    new-instance v1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$a;-><init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lb/a/e/f/a;Lb/a/e/b;)Lb/a/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->r:Lb/a/e/c;

    new-instance v0, Lb/a/e/f/c;

    invoke-direct {v0}, Lb/a/e/f/c;-><init>()V

    new-instance v1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;

    invoke-direct {v1, p0}, Lcom/emsportal/instant/activity/CreateSuperParcelActivity$b;-><init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lb/a/e/f/a;Lb/a/e/b;)Lb/a/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->s:Lb/a/e/c;

    return-void
.end method

.method public final v()Z
    .locals 6

    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v1}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const v4, 0x7f100274

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v3

    :cond_0
    invoke-static {v1}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    return v3

    :cond_1
    invoke-static {v2}, Lb/u/a;->L(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6
    iget-object v0, p0, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return v3

    :cond_2
    return v5
.end method

.method public final w(Lb/a/e/c;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/libraries/places/api/model/Place$Field;

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->NAME:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Field;->LAT_LNG:Lcom/google/android/libraries/places/api/model/Place$Field;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    sget-object v2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-direct {v1, v2, v0}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;)V

    const-string v0, "VN"

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setCountry(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    const v1, 0x7f1000f7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->setHint(Ljava/lang/String;)Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/widget/Autocomplete$IntentBuilder;->build(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Lb/a/e/c;->a(Ljava/lang/Object;Lb/i/e/c;)V

    return-void
.end method
