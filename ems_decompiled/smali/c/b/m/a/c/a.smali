.class public Lc/b/m/a/c/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/request/CreateRequestActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/request/CreateRequestActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object p1, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    const/4 p2, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->j:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/h;

    iget-object p3, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    .line 3
    iget-object p3, p3, Lcom/emsportal/express/activity/request/CreateRequestActivity;->j:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lc/b/m/d/h;

    invoke-virtual {p4, p2}, Lc/b/m/d/h;->f(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lc/b/m/d/h;->f(Z)V

    iget-object p2, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {p1}, Lc/b/m/d/h;->a()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p2, Lcom/emsportal/express/activity/request/CreateRequestActivity;->h:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    .line 7
    iget-object p1, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->i:Lc/b/m/b/r;

    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    .line 9
    iget-object p1, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->d:Landroid/widget/EditText;

    .line 10
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 11
    :cond_1
    iget-object p1, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->j:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/b/m/d/h;

    invoke-virtual {p3, p2}, Lc/b/m/d/h;->f(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    .line 13
    iget-object p1, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->i:Lc/b/m/b/r;

    .line 14
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/m/a/c/a;->c:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    const-string p2, ""

    .line 15
    iput-object p2, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->h:Ljava/lang/String;

    :goto_2
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
