.class public final synthetic Lc/b/q/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/instant/activity/CreateSuperParcelActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/q/a/a;->c:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lc/b/q/a/a;->c:Lcom/emsportal/instant/activity/CreateSuperParcelActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p2, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->q:Lc/b/q/b/b;

    invoke-virtual {p2, p3}, Lc/b/q/b/b;->a(I)Lc/b/q/d/b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/q/d/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/q/d/b;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/q/d/b;->e()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    invoke-virtual {p2}, Lc/b/q/d/b;->b()D

    move-result-wide p3

    iput-wide p3, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->u:D

    invoke-virtual {p2}, Lc/b/q/d/b;->c()D

    move-result-wide p2

    iput-wide p2, p1, Lcom/emsportal/instant/activity/CreateSuperParcelActivity;->v:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
