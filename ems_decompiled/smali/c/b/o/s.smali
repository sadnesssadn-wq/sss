.class public Lc/b/o/s;
.super Lb/m/d/l;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public A:Landroid/widget/Switch;

.field public B:Landroid/widget/Switch;

.field public C:Landroid/widget/TextView;

.field public D:Landroid/widget/ProgressBar;

.field public E:Z

.field public F:Lc/b/i/k;

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/h0;",
            ">;"
        }
    .end annotation
.end field

.field public H:Lc/b/i/i;

.field public I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/emsportal/model/ObjProvince;",
            ">;"
        }
    .end annotation
.end field

.field public J:Lc/b/i/b;

.field public K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/emsportal/model/ObjDistrict;",
            ">;"
        }
    .end annotation
.end field

.field public L:Lc/b/m/b/q;

.field public M:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/u;",
            ">;"
        }
    .end annotation
.end field

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public c:Lc/b/o/s;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/FrameLayout;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/widget/FrameLayout;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/Spinner;

.field public j:Landroid/widget/Spinner;

.field public k:Landroid/widget/Spinner;

.field public l:Landroid/widget/Spinner;

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

.field public w:Landroid/widget/EditText;

.field public x:Landroid/widget/CheckBox;

.field public y:Landroid/widget/CheckBox;

.field public z:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/o/s;->E:Z

    const-string v0, ""

    iput-object v0, p0, Lc/b/o/s;->N:Ljava/lang/String;

    iput-object v0, p0, Lc/b/o/s;->O:Ljava/lang/String;

    iput-object v0, p0, Lc/b/o/s;->P:Ljava/lang/String;

    iput-object v0, p0, Lc/b/o/s;->Q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lc/b/o/s;->D:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public final e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/b/o/s;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lc/b/o/s;->C:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_13

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1
    iget-object p1, p0, Lc/b/o/s;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/b/o/s;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lc/b/o/s;->n:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc/b/o/s;->p:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc/b/o/s;->q:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc/b/o/s;->r:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc/b/o/s;->v:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lc/b/o/s;->w:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lc/b/o/s;->P:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002c0

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f10028d

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->m:Landroid/widget/EditText;

    :goto_1
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002ad

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->o:Landroid/widget/EditText;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100250

    :goto_2
    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->n:Landroid/widget/EditText;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lc/b/o/s;->O:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002b7

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lc/b/o/s;->N:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f10026c

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f10028c

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->p:Landroid/widget/EditText;

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002b9

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->q:Landroid/widget/EditText;

    goto :goto_1

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002d6

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->r:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_8
    iget-boolean p1, p0, Lc/b/o/s;->E:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lc/b/o/s;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lc/b/o/s;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lc/b/o/s;->u:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100280

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->s:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002de

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->t:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f10027d

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->u:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100289

    :goto_3
    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->v:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_c
    iget-object p1, p0, Lc/b/o/s;->Q:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002be

    goto :goto_3

    :cond_d
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002a8

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/o/s;->w:Landroid/widget/EditText;

    goto/16 :goto_1

    :cond_e
    :goto_4
    if-eqz v1, :cond_16

    .line 2
    iget-object p1, p0, Lc/b/o/s;->m:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->o:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->q:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->r:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->v:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->w:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-boolean p1, p0, Lc/b/o/s;->E:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lc/b/o/s;->s:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->t:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p1, p0, Lc/b/o/s;->u:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lc/b/o/s;->x:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "cod"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v0, p0, Lc/b/o/s;->y:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "ppa"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object p1, p0, Lc/b/o/s;->z:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lc/b/o/s;->A:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lc/b/o/s;->B:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    invoke-virtual {p0}, Lc/b/o/s;->d()V

    goto :goto_5

    :cond_12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f100263

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lc/b/o/s;->g:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_14

    .line 3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f100387

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f10025c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lc/b/o/l;

    invoke-direct {v0, p0}, Lc/b/o/l;-><init>(Lc/b/o/s;)V

    const v1, 0x7f100319

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lc/b/o/m;

    invoke-direct {v0, p0}, Lc/b/o/m;-><init>(Lc/b/o/s;)V

    const v1, 0x7f100311

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    .line 4
    :cond_14
    iget-object v0, p0, Lc/b/o/s;->e:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_16

    iget-boolean p1, p0, Lc/b/o/s;->E:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lc/b/o/s;->E:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lc/b/o/s;->f:Landroid/widget/ImageView;

    const v0, 0x7f0700db

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lc/b/o/s;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5

    :cond_15
    iget-object p1, p0, Lc/b/o/s;->h:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lc/b/o/s;->f:Landroid/widget/ImageView;

    const v0, 0x7f0700e8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    :goto_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lb/m/d/l;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lc/b/o/s;->c:Lc/b/o/s;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Lb/m/d/l;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f05027b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0b00aa

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/o/s;->d:Landroid/view/View;

    const p1, 0x7f080134

    .line 1
    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/b/o/s;->e:Landroid/widget/FrameLayout;

    const p1, 0x7f080077

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lc/b/o/s;->g:Landroid/widget/FrameLayout;

    const p1, 0x7f0803e9

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lc/b/o/s;->i:Landroid/widget/Spinner;

    const p1, 0x7f0803e3

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lc/b/o/s;->j:Landroid/widget/Spinner;

    const p1, 0x7f0803e2

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lc/b/o/s;->k:Landroid/widget/Spinner;

    const p1, 0x7f0803e7

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lc/b/o/s;->l:Landroid/widget/Spinner;

    const p1, 0x7f080113

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->m:Landroid/widget/EditText;

    const p1, 0x7f0800df

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->n:Landroid/widget/EditText;

    const p1, 0x7f08010b

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->o:Landroid/widget/EditText;

    const p1, 0x7f0800fb

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->p:Landroid/widget/EditText;

    const p1, 0x7f080112

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->q:Landroid/widget/EditText;

    const p1, 0x7f08011c

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->r:Landroid/widget/EditText;

    const p1, 0x7f0800f5

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->s:Landroid/widget/EditText;

    const p1, 0x7f08011e

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->t:Landroid/widget/EditText;

    const p1, 0x7f0800f2

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->u:Landroid/widget/EditText;

    const p1, 0x7f0800e3

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->v:Landroid/widget/EditText;

    const p1, 0x7f0800e4

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/o/s;->w:Landroid/widget/EditText;

    const p1, 0x7f0800a1

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lc/b/o/s;->x:Landroid/widget/CheckBox;

    const p1, 0x7f0800a2

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lc/b/o/s;->y:Landroid/widget/CheckBox;

    const p1, 0x7f080405

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lc/b/o/s;->z:Landroid/widget/Switch;

    const p1, 0x7f080404

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lc/b/o/s;->A:Landroid/widget/Switch;

    const p1, 0x7f080402

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lc/b/o/s;->B:Landroid/widget/Switch;

    const p1, 0x7f08045b

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/o/s;->C:Landroid/widget/TextView;

    const p1, 0x7f080240

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lc/b/o/s;->h:Landroid/widget/LinearLayout;

    const p1, 0x7f08015a

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/o/s;->f:Landroid/widget/ImageView;

    const p1, 0x7f0801fa

    invoke-virtual {p0, p1}, Lc/b/o/s;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lc/b/o/s;->D:Landroid/widget/ProgressBar;

    .line 2
    iget-object p1, p0, Lc/b/o/s;->C:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/o/s;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/o/s;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/o/s;->q:Landroid/widget/EditText;

    const-string p2, "1"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/o/s;->i:Landroid/widget/Spinner;

    .line 3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/b/o/s;->G:Ljava/util/ArrayList;

    new-instance p2, Lc/b/i/k;

    iget-object p3, p0, Lc/b/o/s;->G:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Lc/b/i/k;-><init>(Ljava/util/ArrayList;)V

    iput-object p2, p0, Lc/b/o/s;->F:Lc/b/i/k;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p2, Lc/b/o/n;

    invoke-direct {p2, p0}, Lc/b/o/n;-><init>(Lc/b/o/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    iget-object p1, p0, Lc/b/o/s;->j:Landroid/widget/Spinner;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/b/o/s;->I:Ljava/util/ArrayList;

    new-instance p3, Lcom/emsportal/model/ObjProvince;

    const-string v0, "112"

    const-string v1, "T\u1ec9nh/Th\u00e0nh"

    invoke-direct {p3, v0, v1}, Lcom/emsportal/model/ObjProvince;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lc/b/i/i;

    iget-object p3, p0, Lc/b/o/s;->I:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Lc/b/i/i;-><init>(Ljava/util/ArrayList;)V

    iput-object p2, p0, Lc/b/o/s;->H:Lc/b/i/i;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p2, Lc/b/o/o;

    invoke-direct {p2, p0}, Lc/b/o/o;-><init>(Lc/b/o/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 6
    iget-object p1, p0, Lc/b/o/s;->k:Landroid/widget/Spinner;

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/b/o/s;->K:Ljava/util/ArrayList;

    new-instance p3, Lcom/emsportal/model/ObjDistrict;

    const-string v0, "1111"

    const-string v1, "Qu\u1eadn/Huy\u1ec7n"

    invoke-direct {p3, v0, v1}, Lcom/emsportal/model/ObjDistrict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Lc/b/i/b;

    iget-object p3, p0, Lc/b/o/s;->K:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Lc/b/i/b;-><init>(Ljava/util/ArrayList;)V

    iput-object p2, p0, Lc/b/o/s;->J:Lc/b/i/b;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p2, Lc/b/o/p;

    invoke-direct {p2, p0}, Lc/b/o/p;-><init>(Lc/b/o/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 8
    iget-object p1, p0, Lc/b/o/s;->l:Landroid/widget/Spinner;

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lc/b/o/s;->M:Ljava/util/ArrayList;

    new-instance p2, Lc/b/m/b/q;

    iget-object p3, p0, Lc/b/o/s;->M:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Lc/b/m/b/q;-><init>(Ljava/util/ArrayList;)V

    iput-object p2, p0, Lc/b/o/s;->L:Lc/b/m/b/q;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance p2, Lc/b/o/q;

    invoke-direct {p2, p0}, Lc/b/o/q;-><init>(Lc/b/o/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 10
    new-instance p1, Lc/b/o/r;

    invoke-direct {p1, p0}, Lc/b/o/r;-><init>(Lc/b/o/s;)V

    const/4 p2, 0x1

    const-string p3, ""

    invoke-static {p2, p3, p2, p1}, Lc/b/s/a;->n(ILjava/lang/String;ZLc/b/t/b$d;)V

    .line 11
    new-instance p1, Lc/b/o/g;

    invoke-direct {p1, p0}, Lc/b/o/g;-><init>(Lc/b/o/s;)V

    invoke-static {p1}, Lc/b/s/a;->k(Lc/b/t/b$d;)V

    .line 12
    new-instance p1, Lc/b/o/i;

    invoke-direct {p1, p0}, Lc/b/o/i;-><init>(Lc/b/o/s;)V

    .line 13
    sget p3, Lc/b/s/a;->d:I

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "http://ws.ems.com.vn/api/v1/config/service"

    invoke-static {v0, p3, p2, p1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 14
    iget-object p1, p0, Lc/b/o/s;->w:Landroid/widget/EditText;

    new-instance p2, Lc/b/o/j;

    invoke-direct {p2, p0}, Lc/b/o/j;-><init>(Lc/b/o/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lc/b/o/s;->v:Landroid/widget/EditText;

    new-instance p2, Lc/b/o/k;

    invoke-direct {p2, p0}, Lc/b/o/k;-><init>(Lc/b/o/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    iget-object p1, p0, Lc/b/o/s;->d:Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lb/m/d/l;->onStart()V

    invoke-virtual {p0}, Lb/m/d/l;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
