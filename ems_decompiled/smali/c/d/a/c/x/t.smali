.class public Lc/d/a/c/x/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field public final synthetic d:Lc/d/a/c/x/u;


# direct methods
.method public constructor <init>(Lc/d/a/c/x/u;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/c/x/t;->d:Lc/d/a/c/x/u;

    iput-object p2, p0, Lc/d/a/c/x/t;->c:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

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

    iget-object p1, p0, Lc/d/a/c/x/t;->c:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lc/d/a/c/x/s;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Lc/d/a/c/x/s;->b()I

    move-result p2

    if-lt p3, p2, :cond_0

    invoke-virtual {p1}, Lc/d/a/c/x/s;->d()I

    move-result p1

    if-gt p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lc/d/a/c/x/t;->d:Lc/d/a/c/x/u;

    .line 3
    iget-object p1, p1, Lc/d/a/c/x/u;->d:Lc/d/a/c/x/g$f;

    .line 4
    iget-object p2, p0, Lc/d/a/c/x/t;->c:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lc/d/a/c/x/s;

    move-result-object p2

    invoke-virtual {p2, p3}, Lc/d/a/c/x/s;->c(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    check-cast p1, Lc/d/a/c/x/g$d;

    .line 5
    iget-object p4, p1, Lc/d/a/c/x/g$d;->a:Lc/d/a/c/x/g;

    .line 6
    iget-object p4, p4, Lc/d/a/c/x/g;->f:Lc/d/a/c/x/a;

    .line 7
    iget-object p4, p4, Lc/d/a/c/x/a;->e:Lc/d/a/c/x/a$c;

    .line 8
    invoke-interface {p4, p2, p3}, Lc/d/a/c/x/a$c;->j(J)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p1, Lc/d/a/c/x/g$d;->a:Lc/d/a/c/x/g;

    .line 9
    iget-object p4, p4, Lc/d/a/c/x/g;->e:Lc/d/a/c/x/d;

    .line 10
    invoke-interface {p4, p2, p3}, Lc/d/a/c/x/d;->s(J)V

    iget-object p2, p1, Lc/d/a/c/x/g$d;->a:Lc/d/a/c/x/g;

    iget-object p2, p2, Lc/d/a/c/x/w;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/d/a/c/x/v;

    iget-object p4, p1, Lc/d/a/c/x/g$d;->a:Lc/d/a/c/x/g;

    .line 11
    iget-object p4, p4, Lc/d/a/c/x/g;->e:Lc/d/a/c/x/d;

    .line 12
    invoke-interface {p4}, Lc/d/a/c/x/d;->o()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Lc/d/a/c/x/v;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lc/d/a/c/x/g$d;->a:Lc/d/a/c/x/g;

    .line 13
    iget-object p2, p2, Lc/d/a/c/x/g;->k:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    iget-object p1, p1, Lc/d/a/c/x/g$d;->a:Lc/d/a/c/x/g;

    .line 15
    iget-object p1, p1, Lc/d/a/c/x/g;->j:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
