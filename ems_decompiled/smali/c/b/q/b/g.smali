.class public Lc/b/q/b/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lc/b/q/b/f$b;


# direct methods
.method public constructor <init>(Lc/b/q/b/f$b;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/b/g;->c:Lc/b/q/b/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/b/q/b/g;->c:Lc/b/q/b/f$b;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object p2, p1, Lc/b/q/b/f$b;->a:Lc/b/q/b/b;

    invoke-virtual {p2, p3}, Lc/b/q/b/b;->a(I)Lc/b/q/d/b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p1, Lc/b/q/b/f$b;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/q/d/b;->a()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lc/b/q/b/f$b;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Lc/b/q/d/b;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p2}, Lc/b/q/d/b;->e()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p1, Lc/b/q/b/f$b;->f:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p3, p1, Lc/b/q/b/f$b;->k:Lc/b/q/b/f;

    .line 2
    iget-object p3, p3, Lcom/emsportal/base/BaseAdapter;->listDatas:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getAdapterPosition()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/d;

    invoke-virtual {p2}, Lc/b/q/d/b;->b()D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p2}, Lc/b/q/d/b;->c()D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lc/b/q/d/d;->r(D)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lc/b/q/d/d;->u(D)V
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
