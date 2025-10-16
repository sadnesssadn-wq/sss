.class public Lc/b/h/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/SelectPostalActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectPostalActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_2

    .line 2
    const-class v0, Lcom/emsportal/model/Postal;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/activity/SelectPostalActivity;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 5
    iget-object v1, v1, Lcom/emsportal/activity/SelectPostalActivity;->e:Ljava/util/List;

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iput-object v0, p1, Lcom/emsportal/activity/SelectPostalActivity;->g:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 9
    iget-object p1, p1, Lcom/emsportal/activity/SelectPostalActivity;->e:Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 11
    iget-object p1, p1, Lcom/emsportal/activity/SelectPostalActivity;->k:Lcom/emsportal/activity/SelectPostalActivity;

    const v0, 0x7f1002b4

    .line 12
    new-instance v1, Lc/b/h/o$a;

    invoke-direct {v1, p0}, Lc/b/h/o$a;-><init>(Lc/b/h/o;)V

    invoke-static {p1, v0, v1}, Lb/u/a;->m0(Landroid/content/Context;ILc/b/w/m;)V

    return-void

    :cond_0
    iget-object p1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 13
    iget-object v0, p1, Lcom/emsportal/activity/SelectPostalActivity;->j:Lcom/emsportal/model/Postal;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Lcom/emsportal/activity/SelectPostalActivity;->w(Lcom/emsportal/model/Postal;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    .line 16
    iget-object p1, p1, Lcom/emsportal/activity/SelectPostalActivity;->f:Lc/b/i/j;

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 19
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/h/o;->a:Lcom/emsportal/activity/SelectPostalActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
