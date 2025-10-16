.class public Lc/b/l/s;
.super Lc/d/a/c/s/e;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/l/s$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Ljava/lang/String;

.field public C:I

.field public D:I

.field public E:I

.field public F:Ljava/lang/String;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Z

.field public J:Lc/b/l/s$a;

.field public K:Lcom/emsportal/dialog/DateTimeOption;

.field public L:Lcom/emsportal/dialog/DateTimeOption;

.field public M:Z

.field public N:I

.field public O:Ljava/lang/String;

.field public P:Ljava/lang/String;

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

.field public o:Landroid/view/ViewGroup;

.field public p:Landroid/widget/RadioButton;

.field public q:Landroid/widget/RadioButton;

.field public r:Landroid/widget/RadioGroup;

.field public s:Landroid/widget/RadioGroup;

.field public t:Landroid/widget/RadioGroup;

.field public u:Landroid/widget/RadioButton;

.field public v:Landroid/widget/RadioButton;

.field public w:Landroid/widget/RadioButton;

.field public x:Landroid/widget/RadioButton;

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/d/a/c/s/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b/l/s;->I:Z

    iput-boolean v0, p0, Lc/b/l/s;->M:Z

    const-string v0, "created_at"

    iput-object v0, p0, Lc/b/l/s;->O:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lc/b/l/s;->P:Ljava/lang/String;

    return-void
.end method

.method public static l()Lc/b/l/s;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lc/b/l/s;

    invoke-direct {v1}, Lc/b/l/s;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/b/l/s;->G:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lc/b/l/s;->H:Landroid/widget/TextView;

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

    iput v5, p0, Lc/b/l/s;->C:I

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v4

    iput v6, p0, Lc/b/l/s;->D:I

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lc/b/l/s;->E:I

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    const/16 v7, -0x1e

    invoke-static {v2, v6, v7, v1}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lc/b/l/s;->y:I

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v4

    iput v5, p0, Lc/b/l/s;->z:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lc/b/l/s;->A:I

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/s;->F:Ljava/lang/String;

    return-void
.end method

.method public final varargs j([Landroid/widget/RadioButton;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 4

    new-instance v0, Lc/b/m/d/m;

    iget-object v1, p0, Lc/b/l/s;->B:Ljava/lang/String;

    iget-object v2, p0, Lc/b/l/s;->F:Ljava/lang/String;

    iget-object v3, p0, Lc/b/l/s;->L:Lcom/emsportal/dialog/DateTimeOption;

    invoke-direct {v0, v1, v2, v3}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/emsportal/dialog/DateTimeOption;)V

    iget v1, p0, Lc/b/l/s;->A:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->x(I)V

    iget v1, p0, Lc/b/l/s;->z:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->z(I)V

    iget v1, p0, Lc/b/l/s;->y:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->E(I)V

    iget v1, p0, Lc/b/l/s;->E:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->F(I)V

    iget v1, p0, Lc/b/l/s;->D:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->G(I)V

    iget v1, p0, Lc/b/l/s;->C:I

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->H(I)V

    iget-object v1, p0, Lc/b/l/s;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->A(Ljava/lang/String;)V

    iget-object v1, p0, Lc/b/l/s;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->D(Ljava/lang/String;)V

    iget v1, p0, Lc/b/l/s;->N:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lb/u/a;->d0(Lc/b/m/d/m;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1bf

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lb/u/a;->c0(Lc/b/m/d/m;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lc/b/l/s;->x:Landroid/widget/RadioButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lc/b/l/s;->v:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lc/b/l/s;->t:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    return-void

    :cond_1
    iget-object v0, p0, Lc/b/l/s;->u:Landroid/widget/RadioButton;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lc/b/l/s;->w:Landroid/widget/RadioButton;

    if-ne p1, v0, :cond_3

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lc/b/l/s;->s:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, -0x5a

    const/4 v2, 0x6

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :sswitch_0
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v5

    new-instance v6, Lc/b/l/r;

    invoke-direct {v6, p0}, Lc/b/l/r;-><init>(Lc/b/l/s;)V

    iget v7, p0, Lc/b/l/s;->C:I

    iget v0, p0, Lc/b/l/s;->D:I

    add-int/lit8 v8, v0, -0x1

    iget v9, p0, Lc/b/l/s;->E:I

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

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_3

    .line 2
    :sswitch_1
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v4

    new-instance v5, Lc/b/l/q;

    invoke-direct {v5, p0}, Lc/b/l/q;-><init>(Lc/b/l/s;)V

    iget v6, p0, Lc/b/l/s;->y:I

    iget v0, p0, Lc/b/l/s;->z:I

    add-int/lit8 v7, v0, -0x1

    iget v8, p0, Lc/b/l/s;->A:I

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

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto/16 :goto_3

    .line 3
    :sswitch_2
    iget-object p1, p0, Lc/b/l/s;->J:Lc/b/l/s$a;

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lc/b/l/s;->q()V

    iget-object p1, p0, Lc/b/l/s;->n:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 4
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lc/b/l/s;->F:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-static {v1}, Lb/u/a;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {p1}, Lb/u/a;->f(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long p1, v1, v6

    if-lez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const v1, 0x7f1002bb

    invoke-static {p1, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lc/b/l/s;->o()V

    iget-object v4, p0, Lc/b/l/s;->J:Lc/b/l/s$a;

    iget-object v6, p0, Lc/b/l/s;->B:Ljava/lang/String;

    iget-object v7, p0, Lc/b/l/s;->F:Ljava/lang/String;

    iget-object v8, p0, Lc/b/l/s;->O:Ljava/lang/String;

    iget-object v9, p0, Lc/b/l/s;->P:Ljava/lang/String;

    invoke-interface/range {v4 .. v9}, Lc/b/l/s$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    :sswitch_3
    invoke-virtual {p0}, Lc/d/a/c/s/e;->dismiss()V

    iput-boolean v0, p0, Lc/b/l/s;->M:Z

    goto/16 :goto_3

    :pswitch_0
    iget-object p1, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, v5, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object v5, p1, v3

    iget-object v3, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object v3, p1, v0

    iget-object v0, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object v0, p1, v4

    iget-object v0, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object v0, p1, v2

    iget-object v0, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIS_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    goto/16 :goto_2

    :pswitch_1
    new-array p1, v5, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object v5, p1, v3

    iget-object v3, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object v3, p1, v0

    iget-object v0, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object v0, p1, v4

    iget-object v0, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object v0, p1, v2

    iget-object v0, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    goto/16 :goto_2

    :pswitch_2
    new-array p1, v5, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object v5, p1, v3

    iget-object v3, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object v3, p1, v0

    iget-object v0, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object v0, p1, v4

    iget-object v0, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object v0, p1, v2

    iget-object v0, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->SENVEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_2

    :pswitch_3
    new-array p1, v5, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object v5, p1, v3

    iget-object v3, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object v3, p1, v0

    iget-object v0, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object v0, p1, v4

    iget-object v0, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object v0, p1, v2

    iget-object v0, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->OPTION:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/s;->L:Lcom/emsportal/dialog/DateTimeOption;

    .line 6
    iget-object p1, p0, Lc/b/l/s;->B:Ljava/lang/String;

    iget-object v0, p0, Lc/b/l/s;->F:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lc/b/l/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    new-array p1, v5, [Landroid/widget/RadioButton;

    .line 7
    iget-object v5, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object v5, p1, v3

    iget-object v3, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object v3, p1, v0

    iget-object v0, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object v0, p1, v4

    iget-object v0, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object v0, p1, v2

    iget-object v0, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->LAST_MONTH:Lcom/emsportal/dialog/DateTimeOption;

    goto :goto_2

    :pswitch_5
    new-array p1, v5, [Landroid/widget/RadioButton;

    iget-object v5, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object v5, p1, v3

    iget-object v3, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object v3, p1, v0

    iget-object v0, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object v0, p1, v4

    iget-object v0, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object v0, p1, v2

    iget-object v0, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->FOURTEEN_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    :goto_2
    iput-object p1, p0, Lc/b/l/s;->L:Lcom/emsportal/dialog/DateTimeOption;

    :cond_3
    :goto_3
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
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0b00a5

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080222

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08021e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08021f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080221

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080223

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080220

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080448

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/s;->k:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080157

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lc/b/l/s;->j:Landroid/widget/ImageView;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080261

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/l/s;->l:Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080480

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/s;->G:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f0804d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lc/b/l/s;->H:Landroid/widget/TextView;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080245

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/l/s;->m:Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080110

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lc/b/l/s;->n:Landroid/widget/EditText;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08025c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lc/b/l/s;->o:Landroid/view/ViewGroup;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080202

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->p:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08020c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->q:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080206

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lc/b/l/s;->r:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f080209

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lc/b/l/s;->s:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08020b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->u:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08020d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->v:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08020a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lc/b/l/s;->t:Landroid/widget/RadioGroup;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f08020e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->w:Landroid/widget/RadioButton;

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    const p2, 0x7f0801fd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lc/b/l/s;->x:Landroid/widget/RadioButton;

    .line 2
    iget-object p1, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->G:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->H:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    new-instance p2, Lc/b/l/m;

    invoke-direct {p2, p0}, Lc/b/l/m;-><init>(Lc/b/l/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->r:Landroid/widget/RadioGroup;

    new-instance p2, Lc/b/l/n;

    invoke-direct {p2, p0}, Lc/b/l/n;-><init>(Lc/b/l/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->s:Landroid/widget/RadioGroup;

    new-instance p2, Lc/b/l/o;

    invoke-direct {p2, p0}, Lc/b/l/o;-><init>(Lc/b/l/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->t:Landroid/widget/RadioGroup;

    new-instance p2, Lc/b/l/p;

    invoke-direct {p2, p0}, Lc/b/l/p;-><init>(Lc/b/l/s;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->x:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->v:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->u:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lc/b/l/s;->w:Landroid/widget/RadioButton;

    invoke-virtual {p1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean p1, p0, Lc/b/l/s;->I:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/l/s;->m:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lc/b/l/s;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iget p2, p0, Lc/b/l/s;->N:I

    const/16 p3, 0x1bf

    if-ne p2, p3, :cond_1

    invoke-static {}, Lb/u/a;->C()Lc/b/m/d/m;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 p3, 0xb0

    if-ne p2, p3, :cond_2

    invoke-static {}, Lb/u/a;->E()Lc/b/m/d/m;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/b/l/s;->F:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->b()I

    move-result p2

    iput p2, p0, Lc/b/l/s;->A:I

    invoke-virtual {p1}, Lc/b/m/d/m;->f()I

    move-result p2

    iput p2, p0, Lc/b/l/s;->z:I

    invoke-virtual {p1}, Lc/b/m/d/m;->q()I

    move-result p2

    iput p2, p0, Lc/b/l/s;->y:I

    invoke-virtual {p1}, Lc/b/m/d/m;->r()I

    move-result p2

    iput p2, p0, Lc/b/l/s;->E:I

    invoke-virtual {p1}, Lc/b/m/d/m;->u()I

    move-result p2

    iput p2, p0, Lc/b/l/s;->D:I

    invoke-virtual {p1}, Lc/b/m/d/m;->v()I

    move-result p2

    iput p2, p0, Lc/b/l/s;->C:I

    invoke-virtual {p1}, Lc/b/m/d/m;->h()Ljava/lang/String;

    move-result-object p2

    const-string p3, "created_at"

    if-nez p2, :cond_3

    move-object p2, p3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lc/b/m/d/m;->h()Ljava/lang/String;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lc/b/l/s;->O:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->l()Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    if-nez p2, :cond_4

    move-object p2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lc/b/m/d/m;->l()Ljava/lang/String;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lc/b/l/s;->P:Ljava/lang/String;

    invoke-virtual {p1}, Lc/b/m/d/m;->a()Lcom/emsportal/dialog/DateTimeOption;

    move-result-object p1

    iput-object p1, p0, Lc/b/l/s;->L:Lcom/emsportal/dialog/DateTimeOption;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_a

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, p2, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, p2, [Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object p2, p1, v5

    iget-object p2, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object p2, p1, v4

    iget-object p2, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object p2, p1, v3

    iget-object p2, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    :cond_6
    iget-object p1, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, p2, [Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object p2, p1, v5

    iget-object p2, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object p2, p1, v4

    iget-object p2, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object p2, p1, v3

    iget-object p2, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    goto/16 :goto_3

    :cond_7
    iget-object p1, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, p2, [Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object p2, p1, v5

    iget-object p2, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object p2, p1, v4

    iget-object p2, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object p2, p1, v3

    iget-object p2, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, p2, [Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object p2, p1, v5

    iget-object p2, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object p2, p1, v4

    iget-object p2, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object p2, p1, v3

    iget-object p2, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, p2, [Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object p2, p1, v5

    iget-object p2, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object p2, p1, v4

    iget-object p2, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object p2, p1, v3

    iget-object p2, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lc/b/l/s;->i:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-array p1, p2, [Landroid/widget/RadioButton;

    iget-object p2, p0, Lc/b/l/s;->e:Landroid/widget/RadioButton;

    aput-object p2, p1, v0

    iget-object p2, p0, Lc/b/l/s;->f:Landroid/widget/RadioButton;

    aput-object p2, p1, v5

    iget-object p2, p0, Lc/b/l/s;->g:Landroid/widget/RadioButton;

    aput-object p2, p1, v4

    iget-object p2, p0, Lc/b/l/s;->h:Landroid/widget/RadioButton;

    aput-object p2, p1, v3

    iget-object p2, p0, Lc/b/l/s;->d:Landroid/widget/RadioButton;

    aput-object p2, p1, v2

    invoke-virtual {p0, p1}, Lc/b/l/s;->j([Landroid/widget/RadioButton;)V

    .line 5
    :goto_3
    iget-object p1, p0, Lc/b/l/s;->O:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lc/b/l/s;->p:Landroid/widget/RadioButton;

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lc/b/l/s;->q:Landroid/widget/RadioButton;

    :goto_4
    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lc/b/l/s;->P:Ljava/lang/String;

    if-eqz p1, :cond_c

    const-string p2, "A"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lc/b/l/s;->u:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_c
    iget-object p1, p0, Lc/b/l/s;->P:Ljava/lang/String;

    if-eqz p1, :cond_d

    const-string p2, "P"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lc/b/l/s;->v:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_d
    iget-object p1, p0, Lc/b/l/s;->P:Ljava/lang/String;

    if-eqz p1, :cond_e

    const-string p2, "C"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lc/b/l/s;->w:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_e
    iget-object p1, p0, Lc/b/l/s;->P:Ljava/lang/String;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lc/b/l/s;->x:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_5

    :cond_f
    sget-object p1, Lcom/emsportal/dialog/DateTimeOption;->THIRDTY_DAY_AGO:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/s;->K:Lcom/emsportal/dialog/DateTimeOption;

    iput-object p1, p0, Lc/b/l/s;->L:Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {p0}, Lc/b/l/s;->f()V

    :cond_10
    :goto_5
    iget-object p1, p0, Lc/b/l/s;->B:Ljava/lang/String;

    iget-object p2, p0, Lc/b/l/s;->F:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc/b/l/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/l/s;->c:Landroid/view/View;

    return-object p1
.end method

.method public p(Lb/m/d/y;Lc/b/l/s$a;I)V
    .locals 0

    iput p3, p0, Lc/b/l/s;->N:I

    iput-object p2, p0, Lc/b/l/s;->J:Lc/b/l/s$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb/m/d/l;->show(Lb/m/d/y;Ljava/lang/String;)V

    return-void
.end method

.method public final q()V
    .locals 10

    iget-object v0, p0, Lc/b/l/s;->L:Lcom/emsportal/dialog/DateTimeOption;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "end"

    const-string v2, "start"

    const-string v3, "dd/MM/yyyy"

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2

    const/4 v7, 0x4

    if-eq v0, v7, :cond_1

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/b/l/s;->f()V

    goto/16 :goto_0

    .line 1
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->C:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    iput v9, p0, Lc/b/l/s;->D:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->E:I

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    const/16 v9, -0xe

    invoke-static {v3, v4, v9, v7}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->y:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v6

    iput v5, p0, Lc/b/l/s;->z:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lc/b/l/s;->A:I

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/s;->F:Ljava/lang/String;

    goto/16 :goto_0

    .line 3
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->C:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    iput v9, p0, Lc/b/l/s;->D:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->E:I

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    const/4 v9, -0x7

    invoke-static {v3, v4, v9, v7}, Lc/a/a/a/a;->q(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->y:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v6

    iput v5, p0, Lc/b/l/s;->z:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lc/b/l/s;->A:I

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/s;->F:Ljava/lang/String;

    goto/16 :goto_0

    .line 5
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v8, -0x1

    invoke-static {v3, v5, v8, v4, v4}, Lc/a/a/a/a;->y(Ljava/util/Calendar;IIII)Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->y:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    iput v9, p0, Lc/b/l/s;->z:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->A:I

    invoke-static {v3, v4, v4, v7}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->C:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v6

    iput v5, p0, Lc/b/l/s;->D:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lc/b/l/s;->E:I

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/s;->F:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3, v4, v4, v7}, Lc/a/a/a/a;->s(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->y:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/2addr v9, v6

    iput v9, p0, Lc/b/l/s;->z:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->A:I

    invoke-static {v3, v4, v4, v7}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lc/b/l/s;->C:I

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v6

    iput v5, p0, Lc/b/l/s;->D:I

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iput v3, p0, Lc/b/l/s;->E:I

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lc/b/l/s;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lc/b/l/s;->F:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_5
    iget-object v0, p0, Lc/b/l/s;->B:Ljava/lang/String;

    iget-object v1, p0, Lc/b/l/s;->F:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc/b/l/s;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
