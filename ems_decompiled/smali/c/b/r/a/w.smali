.class public Lc/b/r/a/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/w;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/b/r/a/w;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->M:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/c/i;

    iget-object p2, p0, Lc/b/r/a/w;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    .line 3
    iput p3, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->W:I

    .line 4
    iget-object p2, p0, Lc/b/r/a/w;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 5
    iget p4, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->W:I

    .line 6
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x1

    .line 7
    invoke-virtual {p2, p5}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->E(Z)V

    new-instance v0, Lc/b/r/a/t;

    invoke-direct {v0, p2}, Lc/b/r/a/t;-><init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V

    .line 8
    invoke-static {p4, p5, v0}, Lc/b/s/a;->h(Ljava/lang/String;ZLc/b/t/b$d;)V

    const-string p4, ""

    .line 9
    iput-object p4, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->X:Ljava/lang/String;

    const p5, 0x7f10016b

    invoke-virtual {p2, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p5

    iget-object p2, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, p0, Lc/b/r/a/w;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-virtual {p1}, Lc/b/r/c/i;->a()Ljava/util/List;

    move-result-object p1

    .line 11
    iget-object p5, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    iget-object p5, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->A:Landroid/widget/Spinner;

    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p5, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    new-instance p5, Lc/b/r/c/p;

    const-string v0, "Lo\u1ea1i h\u00e0ng ho\u00e1"

    invoke-direct {p5, v0, p4}, Lc/b/r/c/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->A:Landroid/widget/Spinner;

    iget-object p3, p2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->P:Lc/b/r/b/s;

    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {p2}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->C()V

    .line 12
    iget-object p1, p0, Lc/b/r/a/w;->c:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lc/b/j/a;->b:Ljava/util/List;

    iget p3, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->W:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->o:Landroid/widget/EditText;

    const p3, 0x7f1000de

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(I)V

    iget-object p2, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->p:Landroid/widget/EditText;

    const p3, 0x7f100108

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->q:Landroid/widget/EditText;

    const p2, 0x7f1000d5

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->o:Landroid/widget/EditText;

    const p3, 0x7f1000df

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(I)V

    iget-object p2, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->p:Landroid/widget/EditText;

    const p3, 0x7f100109

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setHint(I)V

    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->q:Landroid/widget/EditText;

    const p2, 0x7f1000d4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
