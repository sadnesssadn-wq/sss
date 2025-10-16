.class public Lc/d/a/c/x/s;
.super Landroid/widget/BaseAdapter;
.source ""


# static fields
.field public static final h:I


# instance fields
.field public final c:Lc/d/a/c/x/r;

.field public final d:Lc/d/a/c/x/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/d/a/c/x/d<",
            "*>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lc/d/a/c/x/c;

.field public final g:Lc/d/a/c/x/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lc/d/a/c/x/z;->e()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lc/d/a/c/x/s;->h:I

    return-void
.end method

.method public constructor <init>(Lc/d/a/c/x/r;Lc/d/a/c/x/d;Lc/d/a/c/x/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/c/x/r;",
            "Lc/d/a/c/x/d<",
            "*>;",
            "Lc/d/a/c/x/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    iput-object p2, p0, Lc/d/a/c/x/s;->d:Lc/d/a/c/x/d;

    iput-object p3, p0, Lc/d/a/c/x/s;->g:Lc/d/a/c/x/a;

    invoke-interface {p2}, Lc/d/a/c/x/d;->m()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/c/x/s;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Lc/d/a/c/x/s;->b()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    invoke-virtual {v0}, Lc/d/a/c/x/r;->v()I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    invoke-virtual {v0}, Lc/d/a/c/x/r;->v()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/c/x/s;->d()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    .line 1
    invoke-virtual {v0}, Lc/d/a/c/x/r;->v()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, v0, Lc/d/a/c/x/r;->c:Ljava/util/Calendar;

    invoke-static {v0}, Lc/d/a/c/x/z;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    invoke-virtual {v0}, Lc/d/a/c/x/r;->v()I

    move-result v0

    iget-object v1, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    iget v1, v1, Lc/d/a/c/x/r;->g:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e(Landroid/widget/TextView;J)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/d/a/c/x/s;->g:Lc/d/a/c/x/a;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/a;->e:Lc/d/a/c/x/a$c;

    .line 2
    invoke-interface {v0, p2, p3}, Lc/d/a/c/x/a$c;->j(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    iget-object v2, p0, Lc/d/a/c/x/s;->d:Lc/d/a/c/x/d;

    invoke-interface {v2}, Lc/d/a/c/x/d;->m()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p2, p3}, Lc/d/a/c/x/z;->a(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lc/d/a/c/x/z;->a(J)J

    move-result-wide v3

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 4
    iget-object p2, p0, Lc/d/a/c/x/s;->f:Lc/d/a/c/x/c;

    iget-object p2, p2, Lc/d/a/c/x/c;->b:Lc/d/a/c/x/b;

    goto :goto_0

    :cond_3
    invoke-static {}, Lc/d/a/c/x/z;->d()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, v0, p2

    iget-object p2, p0, Lc/d/a/c/x/s;->f:Lc/d/a/c/x/c;

    if-nez v2, :cond_4

    iget-object p2, p2, Lc/d/a/c/x/c;->c:Lc/d/a/c/x/b;

    goto :goto_0

    :cond_4
    iget-object p2, p2, Lc/d/a/c/x/c;->a:Lc/d/a/c/x/b;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p0, Lc/d/a/c/x/s;->f:Lc/d/a/c/x/c;

    iget-object p2, p2, Lc/d/a/c/x/c;->g:Lc/d/a/c/x/b;

    :goto_0
    invoke-virtual {p2, p1}, Lc/d/a/c/x/b;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public final f(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    invoke-static {p2, p3}, Lc/d/a/c/x/r;->u(J)Lc/d/a/c/x/r;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    invoke-virtual {v0, v1}, Lc/d/a/c/x/r;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    .line 1
    iget-object v0, v0, Lc/d/a/c/x/r;->c:Ljava/util/Calendar;

    invoke-static {v0}, Lc/d/a/c/x/z;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lc/d/a/c/x/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/d/a/c/x/s;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lc/d/a/c/x/s;->e(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    iget v0, v0, Lc/d/a/c/x/r;->g:I

    invoke-virtual {p0}, Lc/d/a/c/x/s;->b()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lc/d/a/c/x/s;->c(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    iget v0, v0, Lc/d/a/c/x/r;->f:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lc/d/a/c/x/s;->f:Lc/d/a/c/x/c;

    if-nez v2, :cond_0

    new-instance v2, Lc/d/a/c/x/c;

    invoke-direct {v2, v1}, Lc/d/a/c/x/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lc/d/a/c/x/s;->f:Lc/d/a/c/x/c;

    .line 3
    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lc/d/a/c/h;->mtrl_calendar_day:I

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lc/d/a/c/x/s;->b()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_6

    iget-object p3, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    iget v3, p3, Lc/d/a/c/x/r;->g:I

    if-lt p2, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v3, 0x1

    add-int/2addr p2, v3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {p3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    .line 4
    iget-object p3, p3, Lc/d/a/c/x/r;->c:Ljava/util/Calendar;

    invoke-static {p3}, Lc/d/a/c/x/z;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 v4, 0x5

    invoke-virtual {p3, v4, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    .line 5
    iget-object v5, p0, Lc/d/a/c/x/s;->c:Lc/d/a/c/x/r;

    iget v5, v5, Lc/d/a/c/x/r;->e:I

    .line 6
    invoke-static {}, Lc/d/a/c/x/z;->d()Ljava/util/Calendar;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-static {v6}, Lc/d/a/c/x/z;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    const-string v4, "UTC"

    const/16 v6, 0x18

    if-ne v5, v7, :cond_4

    .line 8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-lt v0, v6, :cond_3

    .line 9
    sget-object v0, Lc/d/a/c/x/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "MMMEd"

    .line 10
    invoke-static {v0, v5}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 11
    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 12
    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 13
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Lc/d/a/c/x/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    invoke-static {v2, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lc/d/a/c/x/z;->c()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 16
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-lt v0, v6, :cond_5

    .line 18
    sget-object v0, Lc/d/a/c/x/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "yMMMEd"

    .line 19
    invoke-static {v0, v5}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 20
    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 21
    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 22
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 23
    :cond_5
    sget-object v0, Lc/d/a/c/x/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    invoke-static {v2, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {}, Lc/d/a/c/x/z;->c()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 25
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 26
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lc/d/a/c/x/s;->c(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lc/d/a/c/x/s;->e(Landroid/widget/TextView;J)V

    :goto_3
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
