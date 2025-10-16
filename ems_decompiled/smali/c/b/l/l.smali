.class public Lc/b/l/l;
.super Lc/d/a/c/s/e;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/l/l$a;
    }
.end annotation


# static fields
.field public static final synthetic A:I


# instance fields
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

.field public m:Landroid/widget/EditText;

.field public n:I

.field public o:I

.field public p:I

.field public q:Ljava/lang/String;

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Landroid/widget/TextView;

.field public w:Landroid/widget/TextView;

.field public x:Lc/b/l/l$a;

.field public y:Lcom/emsportal/dialog/DateTimeOption;

.field public z:Lcom/emsportal/dialog/DateTimeOption;


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

    iget-object v0, p0, Lc/b/l/l;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lc/b/l/l;->w:Landroid/widget/TextView;

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

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lc/b/l/l;->r:I

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    iput v6, p0, Lc/b/l/l;->s:I

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lc/b/l/l;->t:I

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/16 v7, -0x1e

    invoke-static {v2, v6, v7, v1}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lc/b/l/l;->n:I

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lc/b/l/l;->o:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lc/b/l/l;->p:I

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/l;->u:Ljava/lang/String;

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

.method public onClick(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    const/16 v1, -0x5a

    const/4 v2, 0x6

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :sswitch_0
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    new-instance v6, Lc/b/l/k;

    invoke-direct {v6, p0}, Lc/b/l/k;-><init>(Lc/b/l/l;)V

    iget v7, p0, Lc/b/l/l;->r:I

    iget v0, p0, Lc/b/l/l;->s:I

    add-int/lit8 v8, v0, -0x1

    iget v9, p0, Lc/b/l/l;->t:I

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, v2, v1, p1}, Lc/a/a/a/a;->F(Ljava/util/Calendar;IILandroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc/a/a/a/a;->G(Ljava/util/Calendar;Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a/a/a/a;->E(Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_4

    .line 2
    :sswitch_1
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    new-instance v5, Lc/b/l/j;

    invoke-direct {v5, p0}, Lc/b/l/j;-><init>(Lc/b/l/l;)V

    iget v6, p0, Lc/b/l/l;->n:I

    iget v0, p0, Lc/b/l/l;->o:I

    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lc/b/l/l;->p:I

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, v2, v1, p1}, Lc/a/a/a/a;->F(Ljava/util/Calendar;IILandroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc/a/a/a/a;->G(Ljava/util/Calendar;Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v0

    invoke-static {v0, p1}, Lc/a/a/a/a;->E(Landroid/widget/DatePicker;Landroid/app/DatePickerDialog;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_4

    .line 3
    :sswitch_2
    iget-object p1, p0, Lc/b/l/l;->x:Lc/b/l/l$a;

    if-eqz p1, :cond_9

    .line 4
    iget-object p1, p0, Lc/b/l/l;->z:Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "dd/MM/yyyy"

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    const-string v4, "end"

    const-string v5, "start"

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v7, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/b/l/l;->f()V

    goto/16 :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->r:I

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v2

    iput v10, p0, Lc/b/l/l;->s:I

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->t:I

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    const/16 v10, -0xe

    invoke-static {v8, v6, v10, v0}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->n:I

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, p0, Lc/b/l/l;->o:I

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lc/b/l/l;->p:I

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lc/b/l/l;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->r:I

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v2

    iput v10, p0, Lc/b/l/l;->s:I

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->t:I

    invoke-virtual {v8}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Calendar;

    const/4 v10, -0x7

    invoke-static {v8, v6, v10, v0}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->n:I

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, p0, Lc/b/l/l;->o:I

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lc/b/l/l;->p:I

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lc/b/l/l;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 9
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-static {v9, v7, v0, v6, v6}, Lc/a/a/a/a;->y(Ljava/util/Calendar;IIII)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->n:I

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v2

    iput v10, p0, Lc/b/l/l;->o:I

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->p:I

    invoke-static {v9, v6, v6, v8}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->r:I

    invoke-virtual {v9, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, p0, Lc/b/l/l;->s:I

    invoke-virtual {v9, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lc/b/l/l;->t:I

    invoke-virtual {p1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lc/b/l/l;->u:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-static {v8, v6, v6, v0}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->n:I

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v10, v2

    iput v10, p0, Lc/b/l/l;->o:I

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->p:I

    invoke-static {v8, v6, v6, v0}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iput v10, p0, Lc/b/l/l;->r:I

    invoke-virtual {v8, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, p0, Lc/b/l/l;->s:I

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lc/b/l/l;->t:I

    invoke-virtual {p1, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lc/b/l/l;->u:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_5
    iget-object p1, p0, Lc/b/l/l;->q:Ljava/lang/String;

    iget-object v0, p0, Lc/b/l/l;->u:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lc/b/l/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :goto_0
    iget-object p1, p0, Lc/b/l/l;->m:Landroid/widget/EditText;

    invoke-static {p1}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v4, p0, Lc/b/l/l;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v1}, Lb/u/a;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0}, Lb/u/a;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v6, v4, v0

    if-lez v6, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v0, 0x7f1002bb

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    .line 17
    :cond_7
    new-instance v0, Lc/b/m/d/m;

    iget-object v1, p0, Lc/b/l/l;->q:Ljava/lang/String;

    iget-object v3, p0, Lc/b/l/l;->u:Ljava/lang/String;

    iget-object v4, p0, Lc/b/l/l;->z:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v0, v1, v3, v4}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    iget v1, p0, Lc/b/l/l;->p:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->x(I)V

    iget v1, p0, Lc/b/l/l;->o:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->z(I)V

    iget v1, p0, Lc/b/l/l;->n:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->E(I)V

    iget v1, p0, Lc/b/l/l;->t:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->F(I)V

    iget v1, p0, Lc/b/l/l;->s:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->G(I)V

    iget v1, p0, Lc/b/l/l;->r:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->H(I)V

    .line 18
    new-instance v1, Lc/d/c/e;

    invoke-direct {v1}, Lc/d/c/e;-><init>()V

    invoke-virtual {v1}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    const-string v3, "PREF_SETTINGS_FILTER_PARCEL_COD"

    invoke-virtual {v1, v3, v0}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lc/b/l/l;->x:Lc/b/l/l$a;

    iget-object v1, p0, Lc/b/l/l;->q:Ljava/lang/String;

    iget-object v3, p0, Lc/b/l/l;->u:Ljava/lang/String;

    check-cast v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->m:Ljava/lang/String;

    iput-object v3, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->n:Ljava/lang/String;

    iput-object p1, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->o:Ljava/lang/String;

    iput v2, v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->q:I

    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f100263

    .line 21
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 22
    :cond_8
    invoke-virtual {v0}, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;->w()V

    .line 23
    :cond_9
    :goto_2
    :sswitch_3
    invoke-virtual {p0}, Lc/d/a/c/s/e;->dismiss()V

    goto/16 :goto_4

    :pswitch_0
    iget-object p1, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v5, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object v7, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v8, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    iget-object v9, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_3

    :pswitch_1
    iget-object v1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->SENVEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->OPTION:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/l;->z:Lcom/emsportal/dialog/DateTimeOption;

    .line 24
    iget-object p1, p0, Lc/b/l/l;->q:Ljava/lang/String;

    iget-object v0, p0, Lc/b/l/l;->u:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lc/b/l/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :pswitch_4
    iget-object v2, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object v6, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->LAST_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_3

    :pswitch_5
    iget-object v1, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    iget-object v2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object v3, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v4, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->FOURTEEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    :goto_3
    iput-object p1, p0, Lc/b/l/l;->z:Lcom/emsportal/dialog/DateTimeOption;

    :cond_a
    :goto_4
    return-void

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

    const p3, 0x7f0b00a4

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080222

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f08021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f08021f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080221

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080223

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080220

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080448

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/l;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/l/l;->j:Landroid/widget/ImageView;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080261

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/l/l;->l:Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080480

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/l;->v:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f0804d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/l;->w:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080245

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/l/l;->m:Landroid/widget/EditText;

    .line 2
    iget-object p1, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->v:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->w:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    new-instance p2, Lc/b/l/i;

    invoke-direct {p2, p0}, Lc/b/l/i;-><init>(Lc/b/l/l;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/l;->m:Landroid/widget/EditText;

    const p2, 0x7f1000d9

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setHint(I)V

    .line 3
    invoke-static {}, Lb/u/a;->D()Lc/b/m/d/m;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/b/l/l;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/b/l/l;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->b()I

    move-result p2

    iput p2, p0, Lc/b/l/l;->p:I

    invoke-virtual {p1}, Lc/b/m/d/m;->f()I

    move-result p2

    iput p2, p0, Lc/b/l/l;->o:I

    invoke-virtual {p1}, Lc/b/m/d/m;->q()I

    move-result p2

    iput p2, p0, Lc/b/l/l;->n:I

    invoke-virtual {p1}, Lc/b/m/d/m;->r()I

    move-result p2

    iput p2, p0, Lc/b/l/l;->t:I

    invoke-virtual {p1}, Lc/b/m/d/m;->u()I

    move-result p2

    iput p2, p0, Lc/b/l/l;->s:I

    invoke-virtual {p1}, Lc/b/m/d/m;->v()I

    move-result p2

    iput p2, p0, Lc/b/l/l;->r:I

    invoke-virtual {p1}, Lc/b/m/d/m;->a()Lcom/emsportal/dialog/DateTimeOption;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/l;->z:Lcom/emsportal/dialog/DateTimeOption;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, p2, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto :goto_5

    :cond_0
    iget-object p1, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    :goto_0
    iget-object p2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object p3, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    :goto_1
    iget-object p3, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    :goto_2
    iget-object v0, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object p3, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v0, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    :goto_3
    iget-object v1, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lc/b/l/l;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/l;->e:Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/l;->f:Landroid/widget/RadioButton;

    iget-object p3, p0, Lc/b/l/l;->g:Landroid/widget/RadioButton;

    iget-object v0, p0, Lc/b/l/l;->h:Landroid/widget/RadioButton;

    iget-object v1, p0, Lc/b/l/l;->d:Landroid/widget/RadioButton;

    :goto_4
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lc/b/l/l;->j(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    goto :goto_5

    .line 5
    :cond_6
    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/l;->y:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/l;->z:Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {p0}, Lc/b/l/l;->f()V

    :goto_5
    iget-object p1, p0, Lc/b/l/l;->q:Ljava/lang/String;

    iget-object p2, p0, Lc/b/l/l;->u:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc/b/l/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/l/l;->c:Landroid/view/View;

    return-object p1
.end method
