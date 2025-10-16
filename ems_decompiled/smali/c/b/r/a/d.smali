.class public final synthetic Lc/b/r/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/AddParcelBatchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/AddParcelBatchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/d;->c:Lcom/emsportal/international/activity/AddParcelBatchActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lc/b/r/a/d;->c:Lcom/emsportal/international/activity/AddParcelBatchActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p2, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->w:Lc/b/r/b/m;

    invoke-virtual {p2, p3}, Lc/b/r/b/m;->a(I)Lc/b/r/c/h;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/r/c/h;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/r/c/h;->b()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->j:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    sget-object p3, Lc/b/j/a;->b:Ljava/util/List;

    iget p4, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->y:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->g:Landroid/widget/EditText;

    .line 3
    iget-object p4, p2, Lc/b/r/c/h;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->i:Landroid/widget/EditText;

    .line 5
    iget-object p4, p2, Lc/b/r/c/h;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->h:Landroid/widget/EditText;

    .line 7
    iget-object p4, p2, Lc/b/r/c/h;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/r/c/h;->f()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/r/c/h;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lc/b/r/c/h;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb/u/a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/emsportal/international/activity/AddParcelBatchActivity;->q:Lcom/emsportal/widget/CurrencyEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
