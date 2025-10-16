.class public Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/international/activity/ListInternationalParcelActivity;->w(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/ListInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lc/b/r/c/n;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->l:Lc/b/l/f0;

    .line 2
    iget-object v1, v0, Lc/b/l/f0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lc/b/l/f0;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, v0, Lc/b/l/f0;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v0, Lc/b/l/f0;->g:Lc/b/r/b/r;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/n;

    invoke-virtual {v0}, Lc/b/r/c/n;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    iget-object v2, v2, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    .line 4
    iget-object v1, v0, Lc/b/r/c/n;->e:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lc/b/r/c/n;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    .line 8
    iget-object p1, p1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/international/activity/ListInternationalParcelActivity$b;->a:Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
