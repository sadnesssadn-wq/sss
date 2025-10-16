.class public final synthetic Lc/b/r/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/r/a/k;->c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object p1, p0, Lc/b/r/a/k;->c:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->U:Lc/b/r/b/e;

    invoke-virtual {p2, p3}, Lc/b/r/b/e;->a(I)Lc/b/r/c/c;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lc/b/r/c/c;->c()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lc/b/r/c/c;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lc/b/r/c/c;->e()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lc/b/r/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc/b/r/c/c;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object v2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/r/c/c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->j:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string p2, ""

    .line 3
    iput-object p2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Y:Ljava/lang/String;

    const p2, 0x7f10016b

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->S:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/b/r/c/a;

    .line 5
    iget-object v2, p3, Lc/b/r/c/a;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object p3, p3, Lc/b/r/c/a;->d:Ljava/lang/String;

    .line 8
    iget-object v2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v2, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->l:Landroid/widget/EditText;

    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->m:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->Y:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
