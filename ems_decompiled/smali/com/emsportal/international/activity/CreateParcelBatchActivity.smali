.class public Lcom/emsportal/international/activity/CreateParcelBatchActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic c0:I


# instance fields
.field public A:Landroid/widget/Spinner;

.field public B:Landroid/widget/Spinner;

.field public C:Landroid/widget/Spinner;

.field public D:Landroid/view/ViewGroup;

.field public E:Landroid/view/ViewGroup;

.field public F:Landroid/view/ViewGroup;

.field public G:Landroid/view/ViewGroup;

.field public H:Lcom/emsportal/widget/CurrencyEditText;

.field public I:Lcom/emsportal/widget/CurrencyEditText;

.field public J:Landroid/widget/ProgressBar;

.field public K:Lcom/google/android/material/button/MaterialButton;

.field public L:Landroid/widget/CheckBox;

.field public M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/i;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lc/b/r/b/q;

.field public O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/p;",
            ">;"
        }
    .end annotation
.end field

.field public P:Lc/b/r/b/s;

.field public Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/j;",
            ">;"
        }
    .end annotation
.end field

.field public R:Lc/b/r/b/k;

.field public S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public T:Lc/b/r/b/b;

.field public U:Lc/b/r/b/e;

.field public V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a0:Lc/b/r/c/j;

.field public b0:Lc/b/m/d/h0;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/EditText;

.field public p:Landroid/widget/EditText;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/EditText;

.field public s:Landroid/widget/EditText;

.field public t:Landroid/widget/EditText;

.field public u:Landroid/widget/EditText;

.field public v:Landroid/widget/EditText;

.field public w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public x:Landroid/widget/CheckBox;

.field public y:Landroid/widget/CheckBox;

.field public z:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->W:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Y:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Z:Ljava/util/List;

    return-void
.end method

.method public static v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1
    :goto_0
    iget-object p0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->J:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public static w(Lcom/emsportal/international/activity/CreateParcelBatchActivity;DDDDD)V
    .locals 10

    move-object v0, p0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b00b5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f05027b

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v3, 0x7f0804d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f10039e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0804dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0804de

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f08048c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f08047b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0804d6

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p7 .. p8}, Lb/u/a;->l(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " usd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v8, p9

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " g"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3, p4}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static/range {p5 .. p6}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f080076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const v4, 0x7f080079

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    new-instance v4, Lc/b/r/a/i;

    invoke-direct {v4, v1}, Lc/b/r/a/i;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lc/b/r/a/m;

    invoke-direct {v3, p0, v1}, Lc/b/r/a/m;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100077

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public final A(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/b/r/c/f;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/f;

    .line 1
    iget-object v0, v0, Lc/b/r/c/f;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->A(ILjava/util/List;)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final B(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/b/r/c/j;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/r/c/j;

    invoke-virtual {v1}, Lc/b/r/c/j;->a()Ljava/util/List;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->A(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->B(ILjava/util/List;)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final C(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/b/r/c/j;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/j;

    .line 1
    iget-object v0, v0, Lc/b/r/c/j;->e:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->C(ILjava/util/List;)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final D(Lc/b/m/d/h0;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f050276

    .line 1
    invoke-static {p0, v1}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lc/b/m/d/h0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/b/m/d/h0;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/h0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/m/d/h0;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->V:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f100276

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f050277

    .line 3
    invoke-static {p0, v0}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->f:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final E()Ljava/util/List;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/r/c/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->j:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v2}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-static {v4}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-static {v5}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->H:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v6}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lb/u/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-static {v9}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v9, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->o:Landroid/widget/EditText;

    invoke-static {v9}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->p:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->q:Landroid/widget/EditText;

    invoke-static {v11}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->r:Landroid/widget/EditText;

    invoke-static {v12}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->u:Landroid/widget/EditText;

    invoke-static {v13}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v:Landroid/widget/EditText;

    invoke-static {v14}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->I:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v15}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v7}, Lb/u/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v7, "0"

    :goto_0
    iget-object v8, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->L:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    iget-object v15, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v15}, Landroid/widget/CheckBox;->isChecked()Z

    iget-object v15, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->t:Landroid/widget/EditText;

    invoke-static {v15}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->s:Landroid/widget/EditText;

    invoke-static {v15}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {v15}, Lc/b/m/d/h0;->q()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v13

    iget-object v13, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {v13}, Lc/b/m/d/h0;->n()Ljava/lang/String;

    move-result-object v13

    move/from16 v19, v8

    iget-object v8, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {v8}, Lc/b/m/d/h0;->c()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v12

    iget-object v12, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {v12}, Lc/b/m/d/h0;->r()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v21, v9

    iget-object v9, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {v9}, Lc/b/m/d/h0;->b()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v10

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {v10}, Lc/b/m/d/h0;->l()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v23

    move-object/from16 v24, v11

    invoke-virtual/range {v23 .. v23}, Lc/b/v/c/a;->d()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v25, "A"

    const-string v26, "B"

    const-string v27, "C"

    const-string v28, "D"

    const-string v29, "E"

    const-string v30, "N"

    const-string v31, "D"

    const-string v32, "R"

    const-string v33, "O"

    const-string v34, "I"

    filled-new-array/range {v25 .. v34}, [Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v7

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    move-object/from16 v27, v6

    iget-object v6, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v28, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lc/b/r/c/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v32, v6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v25, v0

    const/4 v0, 0x3

    if-le v6, v0, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    :cond_1
    const-wide/16 v33, 0x3e8

    div-long v30, v30, v33

    if-nez v28, :cond_2

    goto :goto_2

    :cond_2
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :goto_2
    add-int/lit8 v28, v28, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move-object v0, v14

    :goto_3
    new-instance v6, Lc/b/r/c/b$b;

    invoke-direct {v6}, Lc/b/r/c/b$b;-><init>()V

    move-object/from16 v30, v7

    const-string v7, "VN"

    .line 1
    iput-object v7, v6, Lc/b/r/c/b$b;->c:Ljava/lang/String;

    .line 2
    iput-object v15, v6, Lc/b/r/c/b$b;->e:Ljava/lang/String;

    .line 3
    iput-object v13, v6, Lc/b/r/c/b$b;->f:Ljava/lang/String;

    .line 4
    iput-object v8, v6, Lc/b/r/c/b$b;->g:Ljava/lang/String;

    .line 5
    iput-object v12, v6, Lc/b/r/c/b$b;->h:Ljava/lang/String;

    .line 6
    iput-object v9, v6, Lc/b/r/c/b$b;->i:Ljava/lang/String;

    .line 7
    iput-object v10, v6, Lc/b/r/c/b$b;->d:Ljava/lang/String;

    .line 8
    iput-object v0, v6, Lc/b/r/c/b$b;->z:Ljava/lang/String;

    const/16 v0, 0x21

    .line 9
    iput v0, v6, Lc/b/r/c/b$b;->a:I

    .line 10
    iput-object v11, v6, Lc/b/r/c/b$b;->b:Ljava/lang/String;

    .line 11
    iput-object v1, v6, Lc/b/r/c/b$b;->j:Ljava/lang/String;

    .line 12
    iput-object v2, v6, Lc/b/r/c/b$b;->k:Ljava/lang/String;

    .line 13
    iput-object v3, v6, Lc/b/r/c/b$b;->l:Ljava/lang/String;

    .line 14
    iput-object v4, v6, Lc/b/r/c/b$b;->m:Ljava/lang/String;

    .line 15
    iput-object v5, v6, Lc/b/r/c/b$b;->n:Ljava/lang/String;

    move-object/from16 v0, v27

    .line 16
    iput-object v0, v6, Lc/b/r/c/b$b;->o:Ljava/lang/String;

    move-object/from16 v7, v23

    .line 17
    iput-object v7, v6, Lc/b/r/c/b$b;->w:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v24

    .line 18
    invoke-virtual {v6, v0, v1, v2}, Lc/b/r/c/b$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lc/b/r/c/b$b;

    move-object/from16 v23, v0

    move-object/from16 v24, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->X:I

    .line 19
    iput v1, v6, Lc/b/r/c/b$b;->r:I

    .line 20
    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->W:Ljava/lang/String;

    .line 21
    iput-object v1, v6, Lc/b/r/c/b$b;->t:Ljava/lang/String;

    .line 22
    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Y:Ljava/lang/String;

    .line 23
    iput-object v1, v6, Lc/b/r/c/b$b;->u:Ljava/lang/String;

    .line 24
    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->V:Ljava/lang/String;

    .line 25
    iput-object v1, v6, Lc/b/r/c/b$b;->q:Ljava/lang/String;

    .line 26
    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Z:Ljava/util/List;

    .line 27
    iput-object v1, v6, Lc/b/r/c/b$b;->s:Ljava/util/List;

    .line 28
    invoke-virtual/range {v29 .. v29}, Lc/b/r/c/j;->a()Ljava/util/List;

    move-result-object v1

    .line 29
    iput-object v1, v6, Lc/b/r/c/b$b;->v:Ljava/util/List;

    move-object/from16 v1, v20

    .line 30
    iput-object v1, v6, Lc/b/r/c/b$b;->x:Ljava/lang/String;

    move/from16 v1, v19

    .line 31
    iput v1, v6, Lc/b/r/c/b$b;->A:I

    move-object/from16 v1, v18

    .line 32
    iput-object v1, v6, Lc/b/r/c/b$b;->p:Ljava/lang/String;

    .line 33
    iget-object v1, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->W:Ljava/lang/String;

    .line 34
    iput-object v1, v6, Lc/b/r/c/b$b;->t:Ljava/lang/String;

    move-object/from16 v1, v16

    .line 35
    iput-object v1, v6, Lc/b/r/c/b$b;->B:Ljava/lang/String;

    move-object/from16 v0, v17

    .line 36
    iput-object v0, v6, Lc/b/r/c/b$b;->C:Ljava/lang/String;

    .line 37
    new-instance v0, Lc/b/r/c/b;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lc/b/r/c/b;-><init>(Lc/b/r/c/b$b;Lc/b/r/c/b$a;)V

    move-object/from16 v1, v26

    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v21, v23

    move-object/from16 v6, v32

    move-object/from16 v23, v7

    move-object/from16 v7, v30

    move-object/from16 v35, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v22

    move-object/from16 v22, v35

    goto/16 :goto_1

    :cond_4
    move-object/from16 v1, v26

    return-object v1
.end method

.method public final F()V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/r/c/p;

    .line 1
    iget-object v2, v2, Lc/b/r/c/p;->b:Ljava/lang/String;

    const-string v3, "91"

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->A:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final G(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->J:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0026

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x144

    const/16 v1, 0x61d

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string v1, "KEY_STORE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc/b/m/d/h0;

    iput-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-static {v1}, Lb/u/a;->h0(Lc/b/m/d/h0;)V

    invoke-virtual {p0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->D(Lc/b/m/d/h0;)V

    :cond_1
    const/16 v1, 0x5fc

    const-string v2, "PARCEL_BATCH"

    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc/b/r/c/j;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "B\u01b0u g\u1eedi "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1
    iput-object v4, v1, Lc/b/r/c/j;->c:Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->R:Lc/b/r/b/k;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemInserted(I)V

    invoke-virtual {p0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->x()V

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->G:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    const/16 v1, 0x5fe

    if-ne p1, v1, :cond_5

    if-ne p2, v0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc/b/r/c/j;

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v1}, Lc/b/r/c/j;->a()Ljava/util/List;

    move-result-object v2

    .line 3
    iget-object v3, v1, Lc/b/r/c/j;->e:Ljava/lang/String;

    .line 4
    iget-object v1, v1, Lc/b/r/c/j;->f:Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->a0:Lc/b/r/c/j;

    .line 6
    iput-object v3, v4, Lc/b/r/c/j;->e:Ljava/lang/String;

    .line 7
    iput-object v1, v4, Lc/b/r/c/j;->f:Ljava/lang/String;

    .line 8
    iput-object v2, v4, Lc/b/r/c/j;->d:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->x()V

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->R:Lc/b/r/b/k;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_5
    const/16 v1, 0x3d25

    if-ne p1, v1, :cond_6

    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p2, "country"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/r/c/a;

    .line 10
    iget-object p2, p1, Lc/b/r/c/a;->e:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Y:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lc/b/r/c/a;->d:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->c:Landroid/widget/TextView;

    const v3, 0x7f100263

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v5, "FROM_CREATE_INVENTORY"

    invoke-virtual {v2, v5, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/emsportal/user/activity/ListStoresActivity;

    const/16 v6, 0x61d

    invoke-static {v0, v5, v6, v2}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :cond_1
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->d:Landroid/widget/TextView;

    const v5, 0x7f1002be

    if-ne v1, v2, :cond_14

    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 4
    :cond_2
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->j:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v6}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-static {v7}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-static {v8}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-static {v9}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->H:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v10}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\s+"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->o:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->p:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->q:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->u:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->t:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->s:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->A(Landroid/widget/EditText;)V

    iget v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->X:I

    const/4 v13, 0x0

    if-nez v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto/16 :goto_4

    :cond_3
    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->D:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->I:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v10}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    const v12, 0x7f100258

    if-nez v11, :cond_6

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v10}, Lb/u/a;->q(Ljava/lang/String;)D

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmpl-double v16, v10, v14

    if-nez v16, :cond_5

    goto :goto_0

    :cond_5
    const-wide v14, 0x4187d78400000000L    # 5.0E7

    cmpl-double v12, v10, v14

    if-lez v12, :cond_7

    sget-object v2, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    const v6, 0x7f100257

    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_1

    :cond_6
    :goto_0
    sget-object v2, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    invoke-static {v2, v12}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :goto_1
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->I:Lcom/emsportal/widget/CurrencyEditText;

    goto/16 :goto_2

    :cond_7
    iget-object v10, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->V:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002c0

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002ad

    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f10028d

    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->j:Landroid/widget/EditText;

    goto :goto_2

    :cond_a
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002b6

    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->k:Landroid/widget/EditText;

    goto :goto_2

    :cond_b
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f100250

    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->l:Landroid/widget/EditText;

    goto :goto_2

    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002b3

    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->m:Landroid/widget/EditText;

    :goto_2
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_4

    :cond_d
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f100264

    goto :goto_3

    :cond_e
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f100283

    goto :goto_3

    :cond_f
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v6, 0xa

    if-le v2, v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f100284

    goto :goto_3

    :cond_10
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->W:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002cb

    goto :goto_3

    :cond_11
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->W:Ljava/lang/String;

    const-string v6, "91"

    .line 5
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-nez v2, :cond_12

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002cc

    goto :goto_3

    :cond_12
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->x:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f1002c3

    :goto_3
    invoke-static {v2, v6}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_4

    :cond_13
    const/4 v13, 0x1

    :goto_4
    if-eqz v13, :cond_14

    .line 7
    new-instance v2, Lc/b/r/a/g0;

    invoke-direct {v2, v0}, Lc/b/r/a/g0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    const v6, 0x7f10025e

    invoke-static {v0, v6, v2}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    .line 8
    :cond_14
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->K:Lcom/google/android/material/button/MaterialButton;

    if-ne v1, v2, :cond_16

    .line 9
    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_15

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 11
    :cond_15
    const-class v2, Lcom/emsportal/international/activity/AddParcelBatchActivity;

    const/16 v6, 0x5fc

    invoke-static {v0, v2, v6}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    .line 12
    :cond_16
    :goto_5
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->g:Landroid/widget/TextView;

    if-ne v1, v2, :cond_19

    iget v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->X:I

    if-nez v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_17
    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_18

    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    .line 14
    :cond_18
    iget v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->X:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "SERVICE_ID"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/emsportal/international/activity/ListCountryActivity;

    const/16 v6, 0x3d25

    invoke-static {v0, v2, v6, v5}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 16
    :cond_19
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->h:Landroid/widget/TextView;

    if-ne v1, v2, :cond_1b

    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 17
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1a
    const-string v2, "https://ems.com.vn/dich-vu-quoc-te"

    .line 18
    invoke-static {v0, v2}, Lb/u/a;->T(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1b
    iget-object v2, v0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->i:Landroid/widget/TextView;

    if-ne v1, v2, :cond_1d

    invoke-static {}, Lb/u/a;->M()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 19
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1c
    const-string v1, "https://ems.com.vn/thong-tin-gui-hang-quoc-te"

    .line 20
    invoke-static {v0, v1}, Lb/u/a;->T(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->F:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->K:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->M:Ljava/util/ArrayList;

    new-instance v0, Lc/b/r/b/q;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->M:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lc/b/r/b/q;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->N:Lc/b/r/b/q;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->B:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->B:Landroid/widget/Spinner;

    new-instance v1, Lc/b/r/a/d0;

    invoke-direct {v1, p0}, Lc/b/r/a/d0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->O:Ljava/util/ArrayList;

    new-instance v0, Lc/b/r/b/s;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->O:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lc/b/r/b/s;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->P:Lc/b/r/b/s;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->A:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->A:Landroid/widget/Spinner;

    new-instance v1, Lc/b/r/a/e0;

    invoke-direct {v1, p0}, Lc/b/r/a/e0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    new-instance v1, Lc/b/r/b/k;

    invoke-direct {v1, v0}, Lc/b/r/b/k;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->R:Lc/b/r/b/k;

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->R:Lc/b/r/b/k;

    new-instance v1, Lc/b/r/a/j;

    invoke-direct {v1, p0}, Lc/b/r/a/j;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    .line 4
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 5
    new-instance v1, Lc/b/r/a/l;

    invoke-direct {v1, p0}, Lc/b/r/a/l;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    .line 6
    iput-object v1, v0, Lc/b/r/b/k;->a:Lc/b/r/b/k$a;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->S:Ljava/util/ArrayList;

    new-instance v0, Lc/b/r/b/b;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->S:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lc/b/r/b/b;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->T:Lc/b/r/b/b;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->C:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->C:Landroid/widget/Spinner;

    new-instance v1, Lc/b/r/a/f0;

    invoke-direct {v1, p0}, Lc/b/r/a/f0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 8
    new-instance v0, Lc/b/r/b/e;

    invoke-direct {v0, p0}, Lc/b/r/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->U:Lc/b/r/b/e;

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v1, Lc/b/r/a/k;

    invoke-direct {v1, p0}, Lc/b/r/a/k;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->G(Z)V

    new-instance v1, Lc/b/r/a/h0;

    invoke-direct {v1, p0}, Lc/b/r/a/h0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    .line 10
    sget v2, Lc/b/s/a;->d:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "datatype"

    const-string v4, "list"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http://ws.ems.com.vn/api/v1/order-intl/service"

    invoke-static {v3, v2, v0, v1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 11
    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->y:Landroid/widget/CheckBox;

    new-instance v1, Lc/b/r/a/n;

    invoke-direct {v1, p0}, Lc/b/r/a/n;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lb/u/a;->I()Lc/b/m/d/h0;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->b0:Lc/b/m/d/h0;

    invoke-virtual {p0, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->D(Lc/b/m/d/h0;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080451

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f080492

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f080446

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->H:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->o:Landroid/widget/EditText;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->p:Landroid/widget/EditText;

    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->q:Landroid/widget/EditText;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->r:Landroid/widget/EditText;

    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v:Landroid/widget/EditText;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->y:Landroid/widget/CheckBox;

    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f08021c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0803ea

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->A:Landroid/widget/Spinner;

    const v0, 0x7f0803e6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->B:Landroid/widget/Spinner;

    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->D:Landroid/view/ViewGroup;

    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->E:Landroid/view/ViewGroup;

    const v0, 0x7f0800f7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->I:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f080462

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->J:Landroid/widget/ProgressBar;

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->F:Landroid/view/ViewGroup;

    const v0, 0x7f0803e1

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->C:Landroid/widget/Spinner;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->K:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08024c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->G:Landroid/view/ViewGroup;

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->L:Landroid/widget/CheckBox;

    const v0, 0x7f08045c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0804af

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->u:Landroid/widget/EditText;

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->x:Landroid/widget/CheckBox;

    const v0, 0x7f08044e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0800ec

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->t:Landroid/widget/EditText;

    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->s:Landroid/widget/EditText;

    const v0, 0x7f10038d

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->B(ILjava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->C(ILjava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->y(ILjava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->H:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final y(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/b/r/c/j;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/r/c/j;

    invoke-virtual {v1}, Lc/b/r/c/j;->a()Ljava/util/List;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->z(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->y(ILjava/util/List;)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final z(ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/b/r/c/f;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/f;

    invoke-virtual {v0}, Lc/b/r/c/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->z(ILjava/util/List;)I

    move-result p1

    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v0
.end method
