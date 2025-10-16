.class public Lc/b/r/a/o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/RouteInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/RouteInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/o0;->a:Lcom/emsportal/international/activity/RouteInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lc/b/r/b/c;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/r/b/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/b/r/b/c;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/b/r/a/o0;->a:Lcom/emsportal/international/activity/RouteInternationalParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lc/b/r/a/o0;->a:Lcom/emsportal/international/activity/RouteInternationalParcelActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lc/b/r/a/o0;->a:Lcom/emsportal/international/activity/RouteInternationalParcelActivity;

    .line 5
    iget-object v1, v0, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v2, Lc/b/r/b/o;

    iget-object v3, v0, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;->f:Lc/b/r/c/e;

    invoke-virtual {v3}, Lc/b/r/c/e;->F()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lc/b/r/b/o;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;->d:Lc/b/r/b/o;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, v0, Lcom/emsportal/international/activity/RouteInternationalParcelActivity;->d:Lc/b/r/b/o;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    new-instance p1, Lc/b/x/d;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-direct {p1, v0, v2}, Lc/b/x/d;-><init>(Landroid/content/Context;F)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/o0;->a:Lcom/emsportal/international/activity/RouteInternationalParcelActivity;

    new-instance v1, Lc/b/r/a/o0$a;

    invoke-direct {v1, p0}, Lc/b/r/a/o0$a;-><init>(Lc/b/r/a/o0;)V

    invoke-static {v0, p1, v1}, Lb/u/a;->j0(Landroid/content/Context;Ljava/lang/String;Lc/b/w/m;)V

    return-void
.end method
