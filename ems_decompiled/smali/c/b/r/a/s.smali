.class public Lc/b/r/a/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 6

    const-class v0, Lc/b/r/c/p;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/p;

    invoke-virtual {v0}, Lc/b/r/c/p;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 5
    iget-object v2, v2, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->M:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/r/c/i;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lc/b/r/c/i;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 7
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->M:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/i;

    iget-object v1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 9
    iget v1, v1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->W:I

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lc/b/r/c/i;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 11
    iget-object v1, v1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 13
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->O:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Lc/b/r/c/p;

    const-string v1, "Lo\u1ea1i h\u00e0ng ho\u00e1"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lc/b/r/c/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 15
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->P:Lc/b/r/b/s;

    .line 16
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 17
    invoke-virtual {p1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->C()V

    .line 18
    iget-object p1, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-static {p1, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->v(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->v(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Z)V

    iget-object v0, p0, Lc/b/r/a/s;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
