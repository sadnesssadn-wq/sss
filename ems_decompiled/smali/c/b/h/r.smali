.class public Lc/b/h/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/activity/SelectWardActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectWardActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/emsportal/model/ObjWard;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/activity/SelectWardActivity;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    .line 5
    iget-object v1, v1, Lcom/emsportal/activity/SelectWardActivity;->e:Ljava/util/List;

    .line 6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    iput-object v0, p1, Lcom/emsportal/activity/SelectWardActivity;->g:Ljava/util/List;

    .line 8
    iget-object p1, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    .line 9
    iget-object v0, p1, Lcom/emsportal/activity/SelectWardActivity;->j:Lcom/emsportal/model/ObjWard;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p1, v0}, Lcom/emsportal/activity/SelectWardActivity;->x(Lcom/emsportal/model/ObjWard;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    .line 12
    iget-object p1, p1, Lcom/emsportal/activity/SelectWardActivity;->f:Lc/b/i/j;

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 14
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 15
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/h/r;->a:Lcom/emsportal/activity/SelectWardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
