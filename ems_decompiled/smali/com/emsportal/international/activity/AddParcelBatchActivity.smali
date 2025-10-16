.class public Lcom/emsportal/international/activity/AddParcelBatchActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/view/ViewGroup;

.field public d:Landroid/view/ViewGroup;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/EditText;

.field public p:Landroid/widget/EditText;

.field public q:Lcom/emsportal/widget/CurrencyEditText;

.field public r:Lcom/google/android/material/button/MaterialButton;

.field public s:Lcom/google/android/material/button/MaterialButton;

.field public t:Landroidx/recyclerview/widget/RecyclerView;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/r/c/f;",
            ">;"
        }
    .end annotation
.end field

.field public v:Lc/b/r/b/i;

.field public w:Lc/b/r/b/m;

.field public x:Lc/b/r/c/f;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->z:I

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b001e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x5fe

    if-ne p1, v0, :cond_0

    const/16 p1, 0x144

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_ITEM_INTERNATIONAL"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/r/c/f;

    invoke-virtual {p1}, Lc/b/r/c/f;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lc/b/r/c/f;->b()Ljava/lang/String;

    move-result-object p3

    .line 1
    iget-object v0, p1, Lc/b/r/c/f;->h:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lc/b/r/c/f;->e:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lc/b/r/c/f;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lc/b/r/c/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/r/c/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lc/b/r/c/f;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    invoke-virtual {v5, p2}, Lc/b/r/c/f;->n(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    invoke-virtual {p2, p3}, Lc/b/r/c/f;->l(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    .line 5
    iput-object v1, p2, Lc/b/r/c/f;->e:Ljava/lang/String;

    .line 6
    iput-object v2, p2, Lc/b/r/c/f;->f:Ljava/lang/String;

    .line 7
    iput-object v0, p2, Lc/b/r/c/f;->h:Ljava/lang/String;

    .line 8
    invoke-virtual {p2, v3}, Lc/b/r/c/f;->q(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    invoke-virtual {p2, v4}, Lc/b/r/c/f;->p(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    invoke-virtual {p2, p1}, Lc/b/r/c/f;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->x:Lc/b/r/c/f;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->v:Lc/b/r/b/i;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->r:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_b

    .line 1
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v0}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->f:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    invoke-static {v4}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    invoke-static {v5}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    invoke-static {v7}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-static {v8}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100268

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100267

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->f:Landroid/widget/EditText;

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100265

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1002cd

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1002d2

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const v3, 0x7f1002d6

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1002b9

    invoke-static {v0, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    :goto_2
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_3
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v0}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->f:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\s+"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v9

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v3, "00000"

    :cond_9
    move-object v10, v3

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Lb/u/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lc/b/r/c/f;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lc/b/r/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->v:Lc/b/r/b/i;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemChanged(I)V

    .line 3
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lc/b/j/a;->b:Ljava/util/List;

    iget v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->s:Lcom/google/android/material/button/MaterialButton;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100282

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_c
    invoke-virtual {p0, v1}, Lcom/emsportal/international/activity/AddParcelBatchActivity;->v(I)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002ca

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_d
    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->o:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->p:Landroid/widget/EditText;

    invoke-static {v3}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const v5, 0x7f1002da

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_f
    const/16 v5, 0x7530

    if-le v4, v5, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002db

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const v5, 0x7f10027f

    if-eqz v4, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const v5, 0x7f1002dd

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->o:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const v5, 0x7f10027c

    if-eqz v4, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_15
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    :cond_16
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/r/c/j;

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, p1, v0}, Lc/b/r/c/j;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PARCEL_BATCH"

    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x144

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_17
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 7

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->r:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->s:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "PARCEL_BATCH"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lc/b/r/c/j;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/b/r/c/j;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1
    :cond_0
    iget-object v3, v2, Lc/b/r/c/j;->e:Ljava/lang/String;

    .line 2
    iget-object v2, v2, Lc/b/r/c/j;->f:Ljava/lang/String;

    const-string v4, "x"

    .line 3
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v1

    const/4 v5, 0x1

    aget-object v5, v2, v5

    const/4 v6, 0x2

    aget-object v2, v2, v6

    iget-object v6, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "SERVICE_ID"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->y:I

    sget-object v2, Lc/b/j/a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->k:Landroid/widget/EditText;

    const-string v2, "000000"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    const-string v2, "VN"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    const-string v3, "Cai"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    const-string v2, "1000"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :cond_2
    new-instance v0, Lc/b/r/b/i;

    iget-object v2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lc/b/r/b/i;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->v:Lc/b/r/b/i;

    iget-object v2, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->v:Lc/b/r/b/i;

    new-instance v1, Lc/b/r/a/c;

    invoke-direct {v1, p0}, Lc/b/r/a/c;-><init>(Lcom/emsportal/international/activity/AddParcelBatchActivity;)V

    .line 7
    iput-object v1, v0, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 8
    new-instance v0, Lc/b/r/b/m;

    invoke-direct {v0, p0}, Lc/b/r/b/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->w:Lc/b/r/b/m;

    iget-object v1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v1, Lc/b/r/a/d;

    invoke-direct {v1, p0}, Lc/b/r/a/d;-><init>(Lcom/emsportal/international/activity/AddParcelBatchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->c:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f100384

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->r:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08021a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->t:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080083

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->s:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->c:Landroid/view/ViewGroup;

    const v0, 0x7f080266

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->d:Landroid/view/ViewGroup;

    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->e:Landroid/view/ViewGroup;

    const v0, 0x7f08011d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f0800f6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->o:Landroid/widget/EditText;

    const v0, 0x7f0800f0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->p:Landroid/widget/EditText;

    return-void
.end method

.method public final v(I)Z
    .locals 3

    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iput v1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->z:I

    :cond_0
    const/4 v2, 0x1

    if-lt p1, v0, :cond_2

    iget p1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->z:I

    const/16 v0, 0x7530

    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/f;

    .line 1
    iget-object v0, v0, Lc/b/r/c/f;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->z:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/emsportal/international/activity/AddParcelBatchActivity;->z:I

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/emsportal/international/activity/AddParcelBatchActivity;->v(I)Z

    move-result p1

    return p1
.end method
