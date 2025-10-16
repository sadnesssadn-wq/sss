.class public Lcom/emsportal/activity/FilterStatiticsActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public c:Landroidx/recyclerview/widget/RecyclerView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/b/m/d/m;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lc/b/i/c;

.field public i:I

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Lc/b/m/d/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public k(I)V
    .locals 3

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/m/d/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/b/m/d/m;->B(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/m;

    iput-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/b/m/d/m;->B(Z)V

    invoke-virtual {v0}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->l:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/emsportal/activity/FilterStatiticsActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->h:Lc/b/i/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/emsportal/activity/FilterStatiticsActivity;->w()Ljava/util/Map;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/emsportal/activity/FilterStatiticsActivity;->x()Ljava/util/Map;

    :goto_1
    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0x7f0b0034

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->l:Ljava/lang/String;

    const-string v0, "dd/MM/yyyy"

    invoke-static {p1, v0}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Lb/u/a;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002c4

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/16 p1, 0x209

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    invoke-static {p1}, Lb/u/a;->d0(Lc/b/m/d/m;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 1
    new-instance p1, Landroid/app/DatePickerDialog;

    new-instance v3, Lc/b/h/e;

    invoke-direct {v3, p0}, Lc/b/h/e;-><init>(Lcom/emsportal/activity/FilterStatiticsActivity;)V

    iget v4, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->i:I

    iget v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->j:I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->k:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x3

    invoke-static {v0, v1, v2, p1}, Lc/a/a/a/a;->F(Ljava/util/Calendar;IILandroid/app/DatePickerDialog;)Landroid/widget/DatePicker;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    goto :goto_0

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 3
    new-instance p1, Landroid/app/DatePickerDialog;

    new-instance v3, Lc/b/h/f;

    invoke-direct {v3, p0}, Lc/b/h/f;-><init>(Lcom/emsportal/activity/FilterStatiticsActivity;)V

    iget v4, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->m:I

    iget v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->n:I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->o:I

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 8

    const v0, 0x7f10039a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    new-instance v1, Lc/b/m/d/m;

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H\u00f4m nay"

    .line 3
    invoke-direct {v1, v4, v2, v3}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/emsportal/activity/FilterStatiticsActivity;->x()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lc/b/m/d/m;

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "start"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "end"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "Tu\u1ea7n n\u00e0y"

    invoke-direct {v3, v7, v5, v2}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/emsportal/activity/FilterStatiticsActivity;->w()Ljava/util/Map;

    move-result-object v2

    new-instance v5, Lc/b/m/d/m;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "Th\u00e1ng n\u00e0y"

    invoke-direct {v5, v6, v4, v2}, Lc/b/m/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lb/u/a;->E()Lc/b/m/d/m;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/m/d/m;

    invoke-virtual {v4}, Lc/b/m/d/m;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lc/b/m/d/m;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-object v4, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    invoke-virtual {v4}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    invoke-virtual {v1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lc/b/m/d/m;->B(Z)V

    .line 4
    invoke-virtual {v4}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/emsportal/activity/FilterStatiticsActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    invoke-virtual {v1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->q:Lc/b/m/d/m;

    invoke-virtual {v2}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lc/b/m/d/m;->B(Z)V

    .line 6
    invoke-virtual {v1}, Lc/b/m/d/m;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lc/b/m/d/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/emsportal/activity/FilterStatiticsActivity;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    :goto_0
    new-instance v1, Lc/b/i/c;

    iget-object v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lc/b/i/c;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->h:Lc/b/i/c;

    .line 8
    iput-object p0, v1, Lcom/emsportal/base/BaseAdapter;->onClickItemListener:Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;

    .line 9
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->h:Lc/b/i/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f080215

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f080480

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0804d3

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f08047c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->f:Landroid/widget/TextView;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final w()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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

    iput v6, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->i:I

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    iput v7, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->j:I

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->k:I

    invoke-static {v2, v3, v3, v1}, Lc/a/a/a/a;->r(Ljava/util/Calendar;IILjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->m:I

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v5

    iput v6, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->n:I

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->o:I

    const-string v2, "start"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public x()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;

    const/4 v2, 0x7

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->i:I

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->j:I

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->k:I

    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v6}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->m:I

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->n:I

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, p0, Lcom/emsportal/activity/FilterStatiticsActivity;->o:I

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
