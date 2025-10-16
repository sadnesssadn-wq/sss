.class public Lc/b/l/e0;
.super Lc/d/a/c/s/e;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/l/e0$a;
    }
.end annotation


# static fields
.field public static final synthetic G:I


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Lc/b/l/e0$a;

.field public D:Lcom/emsportal/dialog/DateTimeOption;

.field public E:Lcom/emsportal/dialog/DateTimeOption;

.field public F:Lb/a/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/e/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/view/View;

.field public d:Landroid/widget/RadioButton;

.field public e:Landroid/widget/RadioButton;

.field public f:Landroid/widget/RadioButton;

.field public g:Landroid/widget/RadioButton;

.field public h:Landroid/widget/RadioButton;

.field public i:Landroid/widget/RadioButton;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/view/ViewGroup;

.field public m:Landroid/view/ViewGroup;

.field public n:Landroid/widget/EditText;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/EditText;

.field public r:Landroid/widget/EditText;

.field public s:Landroid/widget/TextView;

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/a/c/s/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/b/l/e0;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lc/b/l/e0;->p:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3, v3, v1}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lc/b/l/e0;->t:I

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, p0, Lc/b/l/e0;->u:I

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lc/b/l/e0;->v:I

    invoke-static {v2, v3, v3, v1}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lc/b/l/e0;->w:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v5

    iput v6, p0, Lc/b/l/e0;->x:I

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lc/b/l/e0;->y:I

    const-string v2, "start"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "end"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    return-void
.end method

.method public final j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p4, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {p5, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public final l()V
    .locals 4

    new-instance v0, Lc/b/m/d/m;

    iget-object v1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    iget-object v2, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    iget-object v3, p0, Lc/b/l/e0;->E:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v0, v1, v2, v3}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    iget v1, p0, Lc/b/l/e0;->v:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->x(I)V

    iget v1, p0, Lc/b/l/e0;->u:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->z(I)V

    iget v1, p0, Lc/b/l/e0;->t:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->E(I)V

    iget v1, p0, Lc/b/l/e0;->y:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->F(I)V

    iget v1, p0, Lc/b/l/e0;->x:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->G(I)V

    iget v1, p0, Lc/b/l/e0;->w:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->H(I)V

    invoke-static {v0}, Lb/u/a;->b0(Lc/b/m/d/m;)V

    return-void
.end method

.method public final o()V
    .locals 10

    iget-object v0, p0, Lc/b/l/e0;->E:Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const-string v2, "end"

    const-string v3, "start"

    const-string v4, "dd/MM/yyyy"

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eq v0, v6, :cond_3

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2

    const/4 v7, 0x4

    if-eq v0, v7, :cond_1

    if-eq v0, v5, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->w:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v1

    iput v9, p0, Lc/b/l/e0;->x:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->y:I

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    const/16 v9, -0x1e

    invoke-static {v4, v5, v9, v7}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->t:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v1

    iput v6, p0, Lc/b/l/e0;->u:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lc/b/l/e0;->v:I

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    goto/16 :goto_0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->w:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v1

    iput v9, p0, Lc/b/l/e0;->x:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->y:I

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    const/16 v9, -0xe

    invoke-static {v4, v5, v9, v7}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->t:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v1

    iput v6, p0, Lc/b/l/e0;->u:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lc/b/l/e0;->v:I

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    goto/16 :goto_0

    .line 5
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->w:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v1

    iput v9, p0, Lc/b/l/e0;->x:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->y:I

    invoke-virtual {v4}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    const/4 v9, -0x7

    invoke-static {v4, v5, v9, v7}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->t:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v1

    iput v6, p0, Lc/b/l/e0;->u:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lc/b/l/e0;->v:I

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v8, -0x1

    invoke-static {v4, v6, v8, v5, v5}, Lc/a/a/a/a;->y(Ljava/util/Calendar;IIII)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->t:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v1

    iput v9, p0, Lc/b/l/e0;->u:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->v:I

    invoke-static {v4, v5, v5, v7}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/e0;->w:I

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v1

    iput v6, p0, Lc/b/l/e0;->x:I

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lc/b/l/e0;->y:I

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lc/b/l/e0;->f()V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    iget-object v1, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc/b/l/e0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, -0x5a

    const/4 v2, 0x6

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    new-instance v6, Lc/b/l/d0;

    invoke-direct {v6, p0}, Lc/b/l/d0;-><init>(Lc/b/l/e0;)V

    iget v7, p0, Lc/b/l/e0;->w:I

    iget v3, p0, Lc/b/l/e0;->x:I

    add-int/lit8 v8, v3, -0x1

    iget v9, p0, Lc/b/l/e0;->y:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lc/a/a/a/a;->F(Ljava/util/Calendar;IILandroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lc/a/a/a/a;->G(Ljava/util/Calendar;Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1, v0}, Lc/a/a/a/a;->E(Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_3

    .line 2
    :sswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    new-instance v5, Lc/b/l/c0;

    invoke-direct {v5, p0}, Lc/b/l/c0;-><init>(Lc/b/l/e0;)V

    iget v6, p0, Lc/b/l/e0;->t:I

    iget v3, p0, Lc/b/l/e0;->u:I

    add-int/lit8 v7, v3, -0x1

    iget v8, p0, Lc/b/l/e0;->v:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lc/a/a/a/a;->F(Ljava/util/Calendar;IILandroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lc/a/a/a/a;->G(Ljava/util/Calendar;Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v1, v0}, Lc/a/a/a/a;->E(Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_3

    .line 3
    :sswitch_2
    iget-object v0, p0, Lc/b/l/e0;->C:Lc/b/l/e0$a;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lc/b/l/e0;->o()V

    iget-object v0, p0, Lc/b/l/e0;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lc/b/l/e0;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lc/b/l/e0;->r:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iget-object v4, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v2}, Lb/u/a;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0}, Lb/u/a;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    const v1, 0x7f1002bb

    invoke-static {v0, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lc/b/l/e0;->l()V

    iget-object v0, p0, Lc/b/l/e0;->C:Lc/b/l/e0$a;

    iget-object v2, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    iget-object v3, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    iget-object v11, p0, Lc/b/l/e0;->B:Ljava/lang/String;

    check-cast v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    .line 6
    invoke-virtual {v0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->x()V

    invoke-virtual {v0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->v()V

    iput-object v8, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->q:Ljava/lang/String;

    iput-object v2, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->n:Ljava/lang/String;

    iput-object v3, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->o:Ljava/lang/String;

    iput-object v9, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->r:Ljava/lang/String;

    iput-object v10, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->s:Ljava/lang/String;

    iput-object v11, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->z(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    const/4 v12, 0x1

    move-object v4, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual/range {v4 .. v12}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    :sswitch_3
    invoke-virtual {p0}, Lc/d/a/c/s/e;->dismiss()V

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v5, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object v7, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v8, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    iget-object v9, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->SENVEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->OPTION:Lcom/emsportal/dialog/DateTimeOption;

    iput-object v0, p0, Lc/b/l/e0;->E:Lcom/emsportal/dialog/DateTimeOption;

    .line 8
    iget-object v0, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    iget-object v1, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc/b/l/e0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :pswitch_4
    iget-object v3, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object v7, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->LAST_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_2

    :pswitch_5
    iget-object v2, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object v0, Lcom/emsportal/dialog/DateTimeOption;->FOURTEEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    :goto_2
    iput-object v0, p0, Lc/b/l/e0;->E:Lcom/emsportal/dialog/DateTimeOption;

    :cond_3
    :goto_3
    iget-object v0, p0, Lc/b/l/e0;->s:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lc/b/l/e0;->F:Lb/a/e/c;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    const-class v2, Lcom/emsportal/international/activity/ListCountryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Lb/a/e/c;->a(Ljava/lang/Object;Lb/i/e/c;)V

    :cond_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080157 -> :sswitch_3
        0x7f080448 -> :sswitch_2
        0x7f080480 -> :sswitch_1
        0x7f0804d3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f08021e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/m/d/l;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f1100ec

    invoke-virtual {p0, p1, v0}, Lb/m/d/l;->setStyle(II)V

    invoke-virtual {p0, p1}, Lb/m/d/l;->setCancelable(Z)V

    new-instance p1, Lb/a/e/f/c;

    invoke-direct {p1}, Lb/a/e/f/c;-><init>()V

    new-instance v0, Lc/b/l/a;

    invoke-direct {v0, p0}, Lc/b/l/a;-><init>(Lc/b/l/e0;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lb/a/e/f/a;Lb/a/e/b;)Lb/a/e/c;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/e0;->F:Lb/a/e/c;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    invoke-super {p0, p1}, Lc/d/a/c/s/e;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b00a7

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080222

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f08021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f08021f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080221

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080223

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080220

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080448

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/e0;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/l/e0;->j:Landroid/widget/ImageView;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080261

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/l/e0;->l:Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080480

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/e0;->o:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f0804d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/e0;->p:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080245

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/l/e0;->m:Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/l/e0;->n:Landroid/widget/EditText;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f0800ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/l/e0;->q:Landroid/widget/EditText;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f080117

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/l/e0;->r:Landroid/widget/EditText;

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    const p2, 0x7f0804d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/e0;->s:Landroid/widget/TextView;

    .line 2
    iget-object p1, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->o:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->p:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    new-instance p2, Lc/b/l/b;

    invoke-direct {p2, p0}, Lc/b/l/b;-><init>(Lc/b/l/e0;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    new-instance p1, Lc/d/c/e;

    invoke-direct {p1}, Lc/d/c/e;-><init>()V

    invoke-virtual {p1}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object p2

    iget-object p2, p2, Lc/b/k/a;->a:Lc/b/k/e;

    const-string p3, "PREF_SETTINGS_FILTER_INTERNATIONAL_PARCEL"

    invoke-virtual {p2, p3}, Lc/b/k/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    const-class p3, Lc/b/m/d/m;

    invoke-virtual {p1, p2, p3}, Lcom/google/gson/Gson;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/m;

    invoke-static {p1}, Lb/u/a;->u0(Lc/b/m/d/m;)Lc/b/m/d/m;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 4
    invoke-virtual {p1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->b()I

    move-result p2

    iput p2, p0, Lc/b/l/e0;->v:I

    invoke-virtual {p1}, Lc/b/m/d/m;->f()I

    move-result p2

    iput p2, p0, Lc/b/l/e0;->u:I

    invoke-virtual {p1}, Lc/b/m/d/m;->q()I

    move-result p2

    iput p2, p0, Lc/b/l/e0;->t:I

    invoke-virtual {p1}, Lc/b/m/d/m;->r()I

    move-result p2

    iput p2, p0, Lc/b/l/e0;->y:I

    invoke-virtual {p1}, Lc/b/m/d/m;->u()I

    move-result p2

    iput p2, p0, Lc/b/l/e0;->x:I

    invoke-virtual {p1}, Lc/b/m/d/m;->v()I

    move-result p2

    iput p2, p0, Lc/b/l/e0;->w:I

    invoke-virtual {p1}, Lc/b/m/d/m;->a()Lcom/emsportal/dialog/DateTimeOption;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/e0;->E:Lcom/emsportal/dialog/DateTimeOption;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, p2, :cond_5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    goto :goto_6

    :cond_1
    iget-object p1, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    :goto_1
    iget-object p2, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object p3, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    :goto_2
    iget-object p3, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    :goto_3
    iget-object v0, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object p3, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v0, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    :goto_4
    iget-object v1, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    goto :goto_5

    :cond_6
    iget-object p1, p0, Lc/b/l/e0;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/e0;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/e0;->f:Landroid/widget/RadioButton;

    iget-object p3, p0, Lc/b/l/e0;->g:Landroid/widget/RadioButton;

    iget-object v0, p0, Lc/b/l/e0;->h:Landroid/widget/RadioButton;

    iget-object v1, p0, Lc/b/l/e0;->d:Landroid/widget/RadioButton;

    :goto_5
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lc/b/l/e0;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto :goto_6

    .line 6
    :cond_7
    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/e0;->D:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/e0;->E:Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {p0}, Lc/b/l/e0;->f()V

    :goto_6
    iget-object p1, p0, Lc/b/l/e0;->z:Ljava/lang/String;

    iget-object p2, p0, Lc/b/l/e0;->A:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc/b/l/e0;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/l/e0;->c:Landroid/view/View;

    return-object p1
.end method
