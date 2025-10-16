.class public Lcom/emsportal/international/activity/UpdateItemActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# instance fields
.field public c:Landroid/widget/EditText;

.field public d:Landroid/widget/EditText;

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/EditText;

.field public g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Lcom/emsportal/widget/CurrencyEditText;

.field public k:Lcom/google/android/material/button/MaterialButton;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/view/ViewGroup;

.field public n:Landroid/view/ViewGroup;

.field public o:Lc/b/r/b/m;

.field public p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0054

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->k:Lcom/google/android/material/button/MaterialButton;

    if-ne p1, v0, :cond_a

    .line 1
    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    invoke-static {v1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    invoke-static {v4}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    invoke-static {v5}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100268

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100267

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->c:Landroid/widget/EditText;

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100265

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002cd

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002d2

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const v0, 0x7f1002d6

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    goto :goto_3

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002b9

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    :goto_2
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_3
    if-eqz v6, :cond_a

    .line 2
    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {p1}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->c:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s+"

    const-string v5, ""

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    invoke-static {v0}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lb/u/a;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->h:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "00000"

    :cond_9
    move-object v7, p1

    iget-object p1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    new-instance p1, Lc/b/r/c/f;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lc/b/r/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_ITEM_INTERNATIONAL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v0, 0x144

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->k:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1
    new-instance v0, Lc/b/r/b/m;

    invoke-direct {v0, p0}, Lc/b/r/b/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->o:Lc/b/r/b/m;

    iget-object v1, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v1, Lc/b/r/a/r;

    invoke-direct {v1, p0}, Lc/b/r/a/r;-><init>(Lcom/emsportal/international/activity/UpdateItemActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->l:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public r()V
    .locals 10

    const v0, 0x7f1003b7

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f0800e8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f0800e7

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f0800f3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f0800e5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->k:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->l:Landroid/view/ViewGroup;

    const v0, 0x7f080266

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->m:Landroid/view/ViewGroup;

    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KEY_ITEM_INTERNATIONAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc/b/r/c/f;

    if-eqz v1, :cond_0

    .line 1
    invoke-virtual {v1}, Lc/b/r/c/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lc/b/r/c/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, v1, Lc/b/r/c/f;->h:Ljava/lang/String;

    .line 3
    iget-object v5, v1, Lc/b/r/c/f;->e:Ljava/lang/String;

    .line 4
    iget-object v6, v1, Lc/b/r/c/f;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v1}, Lc/b/r/c/f;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lc/b/r/c/f;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lc/b/r/c/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lb/u/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->g:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "SERVICE_ID"

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->p:I

    sget-object v1, Lc/b/j/a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->h:Landroid/widget/EditText;

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    const-string v1, "VN"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    const-string v2, "Cai"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    const-string v1, "1000"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->h:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->j:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/emsportal/international/activity/UpdateItemActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method
