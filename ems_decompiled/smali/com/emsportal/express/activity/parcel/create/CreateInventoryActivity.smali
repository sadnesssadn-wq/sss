.class public Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

.field public G:Lc/b/m/d/j;

.field public H:Lcom/emsportal/model/ObjProvince;

.field public I:Lcom/emsportal/model/ObjDistrict;

.field public J:Lcom/emsportal/model/Postal;

.field public K:I

.field public L:Ljava/lang/String;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/view/ViewGroup;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Landroid/widget/EditText;

.field public j:Landroid/widget/EditText;

.field public k:Landroid/widget/EditText;

.field public l:Landroid/widget/EditText;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/EditText;

.field public p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

.field public r:Lcom/emsportal/widget/CurrencyEditText;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/CheckBox;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->B:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->E:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0028

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x144

    const/16 v1, 0x61d

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "KEY_STORE"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lc/b/m/d/h0;

    invoke-static {p1}, Lb/u/a;->h0(Lc/b/m/d/h0;)V

    invoke-virtual {p0, p1}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->v(Lc/b/m/d/h0;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x4c7

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->c:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->s:Landroid/widget/TextView;

    const-string v3, "POSTAL"

    const-string v4, "DISTRICT"

    const-string v5, "PROVINCE"

    const-string v6, "FLAG_TARGET"

    const/4 v7, 0x1

    const v8, 0x7f100263

    if-ne v1, v2, :cond_1b

    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->F:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    invoke-static {v1, v8}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    .line 1
    :cond_0
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v10}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->r:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->E:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    const v2, 0x7f1002c0

    goto :goto_0

    :cond_1
    iget-object v14, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->E:Ljava/lang/String;

    const-string v15, "-99999"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const v2, 0x7f100277

    .line 2
    :goto_0
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    goto/16 :goto_a

    .line 3
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f10028d

    .line 4
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 5
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->h:Landroid/widget/EditText;

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f1002ad

    goto :goto_1

    :cond_4
    const-string v2, "^0[1-9][0-9]{8}$"

    .line 6
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f1002ae

    .line 7
    :goto_1
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 8
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f1002b7

    goto :goto_2

    :cond_6
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->y:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const v2, 0x7f10026c

    .line 9
    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    goto :goto_3

    .line 10
    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f100250

    goto :goto_2

    .line 11
    :goto_3
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 12
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->i:Landroid/widget/EditText;

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x7f10028c

    .line 13
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 14
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    :goto_4
    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto/16 :goto_a

    :cond_9
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f100289

    .line 15
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 16
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->r:Lcom/emsportal/widget/CurrencyEditText;

    goto/16 :goto_9

    :cond_a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f1002b9

    .line 17
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 18
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x7f1002d6

    goto :goto_5

    :cond_c
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    const v2, 0x7f1002d8

    goto :goto_5

    :cond_d
    const/16 v8, 0x7530

    if-lt v2, v8, :cond_e

    const v2, 0x7f1002d7

    .line 19
    :goto_5
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 20
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->k:Landroid/widget/EditText;

    goto/16 :goto_9

    :cond_e
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    const v2, 0x7f100280

    goto :goto_6

    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    const v2, 0x7f100281

    .line 21
    :goto_6
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 22
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->l:Landroid/widget/EditText;

    goto :goto_9

    :cond_10
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f1002de

    goto :goto_7

    :cond_11
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    const v2, 0x7f10024b

    .line 23
    :goto_7
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 24
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->m:Landroid/widget/EditText;

    goto :goto_9

    :cond_12
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x7f10027d

    goto :goto_8

    :cond_13
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    const v2, 0x7f10024a

    .line 25
    :goto_8
    invoke-static {v0, v2, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    .line 26
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->n:Landroid/widget/EditText;

    :goto_9
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_a
    const/4 v7, 0x0

    :cond_14
    if-nez v7, :cond_15

    return-void

    .line 27
    :cond_15
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->h:Landroid/widget/EditText;

    invoke-static {v2}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v7}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->i:Landroid/widget/EditText;

    invoke-static {v8}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-static {v9}, Lc/a/a/a/a;->d(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    invoke-static {v10}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->k:Landroid/widget/EditText;

    invoke-static {v11}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->r:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v12}, Lcom/emsportal/widget/CurrencyEditText;->getCurrencyText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    const-string v14, "\\s+"

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lb/u/a;->q(Ljava/lang/String;)D

    iget-object v14, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->o:Landroid/widget/EditText;

    invoke-static {v14}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v15}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v15

    const-string v16, "0"

    if-eqz v15, :cond_16

    iget-object v15, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->l:Landroid/widget/EditText;

    invoke-static {v15}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v13

    iget-object v13, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->m:Landroid/widget/EditText;

    invoke-static {v13}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    iget-object v13, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->n:Landroid/widget/EditText;

    invoke-static {v13}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v19, v4

    move-object/from16 v20, v18

    move-object/from16 v18, v3

    move-object v3, v15

    move-object v15, v13

    move-object/from16 v13, v20

    goto :goto_b

    :cond_16
    move-object/from16 v17, v13

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v3, v16

    move-object v13, v3

    move-object v15, v13

    :goto_b
    iget-object v4, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->G:Lc/b/m/d/j;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lc/b/m/d/j;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    iget-object v4, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->G:Lc/b/m/d/j;

    invoke-virtual {v4}, Lc/b/m/d/j;->h()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v6

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v20

    goto :goto_c

    :cond_17
    move-object/from16 v4, v17

    move-object/from16 v17, v6

    move-object/from16 v20, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v20

    :goto_c
    new-instance v6, Lc/b/m/d/j$b;

    invoke-direct {v6}, Lc/b/m/d/j$b;-><init>()V

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->L(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v7}, Lc/b/m/d/j$b;->N(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v8}, Lc/b/m/d/j$b;->z(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v9}, Lc/b/m/d/j$b;->K(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v10}, Lc/b/m/d/j$b;->R(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v11}, Lc/b/m/d/j$b;->U(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v5}, Lc/b/m/d/j$b;->E(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->S(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->E:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->I(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->z:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->B(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->y:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->A(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->x:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->D(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->A:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->O(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->B:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->Q(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->C:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->G(Ljava/lang/String;)Lc/b/m/d/j$b;

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->D:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lc/b/m/d/j$b;->T(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v3}, Lc/b/m/d/j$b;->J(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v13}, Lc/b/m/d/j$b;->V(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v15}, Lc/b/m/d/j$b;->H(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {v6, v14}, Lc/b/m/d/j$b;->M(Ljava/lang/String;)Lc/b/m/d/j$b;

    .line 28
    new-instance v2, Lc/b/m/d/j;

    invoke-direct {v2, v6}, Lc/b/m/d/j;-><init>(Lc/b/m/d/j$b;)V

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v2, v4}, Lc/b/m/d/j;->R(Ljava/lang/String;)V

    :cond_18
    iget v3, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->K:I

    if-eqz v3, :cond_19

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/b/m/d/j;->R(Ljava/lang/String;)V

    :cond_19
    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->L:Ljava/lang/String;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->L:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc/b/m/d/j;->O(Ljava/lang/String;)V

    :cond_1a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "DATA_INVENTORY"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const/16 v4, 0x4c7

    invoke-static {v0, v2, v4, v3}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_d

    :cond_1b
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 30
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->v:Landroid/widget/TextView;

    if-ne v1, v2, :cond_1d

    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_1c

    const v1, 0x7f100263

    .line 31
    invoke-static {v0, v1, v0, v7}, Lc/a/a/a/a;->B(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;ILcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;I)V

    return-void

    .line 32
    :cond_1c
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "FROM_CREATE_INVENTORY"

    invoke-virtual {v2, v3, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/emsportal/user/activity/ListStoresActivity;

    const/16 v4, 0x61d

    invoke-static {v0, v3, v4, v2}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    :goto_d
    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    goto/16 :goto_e

    :cond_1d
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->e:Landroid/widget/TextView;

    if-ne v1, v2, :cond_1f

    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100263

    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_1e
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v3, 0x216

    move-object/from16 v4, v17

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    move-object/from16 v5, v16

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    move-object/from16 v6, v19

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->J:Lcom/emsportal/model/Postal;

    move-object/from16 v7, v18

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v3, Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-static {v0, v3, v2}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_e

    :cond_1f
    move-object/from16 v5, v16

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->f:Landroid/widget/TextView;

    if-ne v1, v2, :cond_23

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    if-nez v2, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1002b7

    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_20
    invoke-static {}, Lb/u/a;->M()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100263

    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_21
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v2}, Lcom/emsportal/model/ObjProvince;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v1, Lc/b/u/d;->a:Lc/b/u/d;

    new-instance v2, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;

    invoke-direct {v2, v0}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity$a;-><init>(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;)V

    invoke-virtual {v1, v2}, Lc/b/u/d;->a(Lc/b/u/d$a;)V

    return-void

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->x()V

    :cond_23
    :goto_e
    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->g:Landroid/widget/TextView;

    if-ne v1, v2, :cond_26

    iget-object v1, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    if-nez v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f10026c

    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_24
    invoke-static {}, Lb/u/a;->M()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100263

    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v2, 0x216

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, v0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->J:Lcom/emsportal/model/Postal;

    invoke-virtual {v1, v7, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v2, Lcom/emsportal/activity/SelectPostalActivity;

    invoke-static {v0, v2, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_26
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Lb/m/d/m;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "PROVINCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DISTRICT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/emsportal/model/ObjDistrict;

    const-string v2, "POSTAL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/Postal;

    invoke-virtual {p0, v0, v1, p1}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w(Lcom/emsportal/model/ObjProvince;Lcom/emsportal/model/ObjDistrict;Lcom/emsportal/model/Postal;)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 5

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DATA_INVENTORY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/m/d/j;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->G:Lc/b/m/d/j;

    :cond_0
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->G:Lc/b/m/d/j;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    .line 1
    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/m/d/j;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Lc/b/m/d/j;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/m/d/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v0}, Lc/b/m/d/j;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->r:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {v0}, Lc/b/m/d/j;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/m/d/j;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/m/d/j;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lc/b/m/d/j;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/m/d/j;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lc/b/m/d/j;->r()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->n:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    invoke-virtual {v0}, Lc/b/m/d/j;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->E:Ljava/lang/String;

    invoke-virtual {v0}, Lc/b/m/d/j;->E()Lcom/emsportal/model/ObjProvince;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/m/d/j;->l()Lcom/emsportal/model/ObjDistrict;

    move-result-object v2

    invoke-virtual {v0}, Lc/b/m/d/j;->C()Lcom/emsportal/model/Postal;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w(Lcom/emsportal/model/ObjProvince;Lcom/emsportal/model/ObjDistrict;Lcom/emsportal/model/Postal;)V

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->G:Lc/b/m/d/j;

    invoke-virtual {v0}, Lc/b/m/d/j;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-99999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lb/u/a;->I()Lc/b/m/d/h0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->v(Lc/b/m/d/h0;)V

    :cond_4
    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->d:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lb/u/a;->c(Landroid/app/Activity;Landroid/view/View;)V

    .line 3
    new-instance v0, Lc/b/m/b/i;

    invoke-direct {v0, p0}, Lc/b/m/b/i;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v3, Lc/b/m/a/b/a/b;

    invoke-direct {v3, p0, v0}, Lc/b/m/a/b/a/b;-><init>(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;Lc/b/m/b/i;)V

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    new-instance v0, Lc/b/m/b/b;

    invoke-direct {v0, p0}, Lc/b/m/b/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    new-instance v2, Lc/b/m/a/b/a/a;

    invoke-direct {v2, p0, v0}, Lc/b/m/a/b/a/a;-><init>(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;Lc/b/m/b/b;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public r()V
    .locals 1

    iput-object p0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->F:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    const v0, 0x7f10038f

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f08022a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0803e3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v0, 0x7f0803e2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v0, 0x7f0803eb

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v0, 0x7f0800fc

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f0800dd

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->i:Landroid/widget/EditText;

    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f0800fa

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    const v0, 0x7f08011c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->k:Landroid/widget/EditText;

    const v0, 0x7f0800f5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->l:Landroid/widget/EditText;

    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->m:Landroid/widget/EditText;

    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emsportal/widget/CurrencyEditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->r:Lcom/emsportal/widget/CurrencyEditText;

    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->o:Landroid/widget/EditText;

    const v0, 0x7f08045b

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f080242

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    const v0, 0x7f0801fa

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v0, 0x7f080446

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f080492

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f080451

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0804b5

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f080474

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0804b2

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->g:Landroid/widget/TextView;

    return-void
.end method

.method public final v(Lc/b/m/d/h0;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->t:Landroid/widget/TextView;

    const v1, 0x7f050276

    .line 1
    invoke-static {p0, v1}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->t:Landroid/widget/TextView;

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

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->u:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/m/d/h0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/m/d/h0;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->E:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f100276

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f050277

    .line 3
    invoke-static {p0, v0}, Lb/i/f/a;->b(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->u:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final w(Lcom/emsportal/model/ObjProvince;Lcom/emsportal/model/ObjDistrict;Lcom/emsportal/model/Postal;)V
    .locals 2

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    iput-object p2, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    iput-object p3, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->J:Lcom/emsportal/model/Postal;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->z:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->B:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->y:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/emsportal/model/ObjDistrict;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->C:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->J:Lcom/emsportal/model/Postal;

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/emsportal/model/Postal;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->A:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/emsportal/model/Postal;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->D:Ljava/lang/String;

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/emsportal/model/Postal;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->g:Landroid/widget/TextView;

    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final x()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "FLAG_TARGET"

    const/16 v2, 0x216

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    const-string v2, "PROVINCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    const-string v2, "DISTRICT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->J:Lcom/emsportal/model/Postal;

    const-string v2, "POSTAL"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v1, Lcom/emsportal/activity/SelectDistrictActivity;

    invoke-static {p0, v1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
