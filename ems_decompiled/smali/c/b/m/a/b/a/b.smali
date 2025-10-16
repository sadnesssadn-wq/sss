.class public final synthetic Lc/b/m/a/b/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

.field public final synthetic d:Lc/b/m/b/i;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;Lc/b/m/b/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/a/b/a/b;->c:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    iput-object p2, p0, Lc/b/m/a/b/a/b;->d:Lc/b/m/b/i;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object p1, p0, Lc/b/m/a/b/a/b;->c:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    iget-object p2, p0, Lc/b/m/a/b/a/b;->d:Lc/b/m/b/i;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p4, p2, Lc/b/m/b/i;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lc/b/m/b/i;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/m/d/q;

    :goto_0
    if-eqz p2, :cond_7

    .line 3
    invoke-virtual {p2}, Lc/b/m/d/q;->e()I

    move-result p3

    invoke-virtual {p2}, Lc/b/m/d/q;->d()D

    move-result-wide p4

    invoke-virtual {p2}, Lc/b/m/d/q;->f()D

    move-result-wide v0

    invoke-static {p4, p5}, Lb/u/a;->i(D)Ljava/lang/String;

    move-result-object p4

    .line 4
    invoke-virtual {p2}, Lc/b/m/d/q;->g()[Ljava/lang/String;

    move-result-object p5

    array-length v2, p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    :try_start_1
    aget-object p5, p5, v2

    goto :goto_1

    :cond_1
    move-object p5, v3

    .line 5
    :goto_1
    invoke-virtual {p2}, Lc/b/m/d/q;->g()[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x1

    if-ne v5, v4, :cond_2

    aget-object v2, v2, v6

    goto :goto_2

    :cond_2
    move-object v2, v3

    .line 6
    :goto_2
    invoke-virtual {p2}, Lc/b/m/d/q;->g()[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    if-ne v7, v4, :cond_3

    const/4 v3, 0x2

    aget-object v3, v5, v3

    .line 7
    :cond_3
    invoke-virtual {p2}, Lc/b/m/d/q;->c()I

    move-result v4

    invoke-virtual {p2}, Lc/b/m/d/q;->a()Ljava/lang/String;

    move-result-object v5

    iput v4, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->K:I

    iput-object v5, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->L:Ljava/lang/String;

    iget-object v4, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->j:Landroid/widget/EditText;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->r:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->k:Landroid/widget/EditText;

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->l:Landroid/widget/EditText;

    invoke-virtual {p3, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->w:Landroid/widget/CheckBox;

    invoke-virtual {p3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->m:Landroid/widget/EditText;

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->n:Landroid/widget/EditText;

    invoke-virtual {p3, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/m/d/q;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->q:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method
