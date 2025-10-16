.class public Lc/d/a/c/x/u;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/c/x/u$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lc/d/a/c/x/u$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/d/a/c/x/a;

.field public final c:Lc/d/a/c/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/c/x/d<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lc/d/a/c/x/g$f;

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/d/a/c/x/d;Lc/d/a/c/x/a;Lc/d/a/c/x/g$f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/d/a/c/x/d<",
            "*>;",
            "Lc/d/a/c/x/a;",
            "Lc/d/a/c/x/g$f;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    .line 1
    iget-object v0, p3, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 2
    iget-object v1, p3, Lc/d/a/c/x/a;->d:Lc/d/a/c/x/r;

    .line 3
    iget-object v2, p3, Lc/d/a/c/x/a;->f:Lc/d/a/c/x/r;

    .line 4
    invoke-virtual {v0, v2}, Lc/d/a/c/x/r;->a(Lc/d/a/c/x/r;)I

    move-result v0

    if-gtz v0, :cond_2

    invoke-virtual {v2, v1}, Lc/d/a/c/x/r;->a(Lc/d/a/c/x/r;)I

    move-result v0

    if-gtz v0, :cond_1

    sget v0, Lc/d/a/c/x/s;->h:I

    .line 5
    sget v1, Lc/d/a/c/x/g;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lc/d/a/c/d;->mtrl_calendar_day_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int v0, v0, v1

    .line 6
    invoke-static {p1}, Lc/d/a/c/x/n;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    iput-object p1, p0, Lc/d/a/c/x/u;->a:Landroid/content/Context;

    add-int/2addr v0, v1

    iput v0, p0, Lc/d/a/c/x/u;->e:I

    iput-object p3, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    iput-object p2, p0, Lc/d/a/c/x/u;->c:Lc/d/a/c/x/d;

    iput-object p4, p0, Lc/d/a/c/x/u;->d:Lc/d/a/c/x/g$f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->setHasStableIds(Z)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lc/d/a/c/x/r;
    .locals 1

    iget-object v0, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 2
    invoke-virtual {v0, p1}, Lc/d/a/c/x/r;->x(I)Lc/d/a/c/x/r;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/d/a/c/x/r;)I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 2
    invoke-virtual {v0, p1}, Lc/d/a/c/x/r;->y(Lc/d/a/c/x/r;)I

    move-result p1

    return p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 1
    iget v0, v0, Lc/d/a/c/x/a;->h:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 2
    invoke-virtual {v0, p1}, Lc/d/a/c/x/r;->x(I)Lc/d/a/c/x/r;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lc/d/a/c/x/r;->c:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 3

    check-cast p1, Lc/d/a/c/x/u$a;

    .line 1
    iget-object v0, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    .line 2
    iget-object v0, v0, Lc/d/a/c/x/a;->c:Lc/d/a/c/x/r;

    .line 3
    invoke-virtual {v0, p2}, Lc/d/a/c/x/r;->x(I)Lc/d/a/c/x/r;

    move-result-object p2

    iget-object v0, p1, Lc/d/a/c/x/u$a;->a:Landroid/widget/TextView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$a0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lc/d/a/c/x/r;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lc/d/a/c/x/u$a;->b:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v0, Lc/d/a/c/f;->month_grid:I

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lc/d/a/c/x/s;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lc/d/a/c/x/s;

    move-result-object v0

    iget-object v0, v0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    invoke-virtual {p2, v0}, Lc/d/a/c/x/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lc/d/a/c/x/s;

    move-result-object p2

    .line 4
    iget-object v0, p2, Lc/d/a/c/x/s;->e:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lc/d/a/c/x/s;->f(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lc/d/a/c/x/s;->d:Lc/d/a/c/x/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lc/d/a/c/x/d;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lc/d/a/c/x/s;->f(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lc/d/a/c/x/s;->d:Lc/d/a/c/x/d;

    invoke-interface {v0}, Lc/d/a/c/x/d;->m()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p2, Lc/d/a/c/x/s;->e:Ljava/util/Collection;

    goto :goto_2

    .line 5
    :cond_2
    new-instance v0, Lc/d/a/c/x/s;

    iget-object v1, p0, Lc/d/a/c/x/u;->c:Lc/d/a/c/x/d;

    iget-object v2, p0, Lc/d/a/c/x/u;->b:Lc/d/a/c/x/a;

    invoke-direct {v0, p2, v1, v2}, Lc/d/a/c/x/s;-><init>(Lc/d/a/c/x/r;Lc/d/a/c/x/d;Lc/d/a/c/x/a;)V

    iget p2, p2, Lc/d/a/c/x/r;->f:I

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    :goto_2
    new-instance p2, Lc/d/a/c/x/t;

    invoke-direct {p2, p0, p1}, Lc/d/a/c/x/t;-><init>(Lc/d/a/c/x/u;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lc/d/a/c/h;->mtrl_calendar_month_labeled:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/c/x/n;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    iget v1, p0, Lc/d/a/c/x/u;->e:I

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lc/d/a/c/x/u$a;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lc/d/a/c/x/u$a;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lc/d/a/c/x/u$a;

    invoke-direct {p1, p2, v1}, Lc/d/a/c/x/u$a;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p1
.end method
