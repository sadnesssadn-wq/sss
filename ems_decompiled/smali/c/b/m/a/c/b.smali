.class public Lc/b/m/a/c/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/request/CreateRequestActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/request/CreateRequestActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/c/b;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/m/a/c/b;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/express/activity/request/CreateRequestActivity;->j:Ljava/util/ArrayList;

    .line 4
    const-class v1, Lc/b/m/d/h;

    invoke-virtual {p1, v1}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/m/a/c/b;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/express/activity/request/CreateRequestActivity;->i:Lc/b/m/b/r;

    .line 6
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/m/a/c/b;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/c/b;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
