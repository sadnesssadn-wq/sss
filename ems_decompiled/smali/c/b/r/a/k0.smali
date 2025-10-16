.class public Lc/b/r/a/k0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/DetailInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    const-class v1, Lc/b/m/d/e0;

    invoke-virtual {p1, v1}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 5
    iput-object p1, v0, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->D:Ljava/util/List;

    .line 6
    iget-object p1, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    .line 7
    iget-object p1, p1, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->E:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    .line 9
    iget-object p1, p1, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->D:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/e0;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    .line 11
    iget-object p1, p1, Lcom/emsportal/international/activity/DetailInternationalParcelActivity;->F:Lc/b/r/b/p;

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/r/a/k0;->a:Lcom/emsportal/international/activity/DetailInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
