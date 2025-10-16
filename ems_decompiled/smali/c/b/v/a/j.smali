.class public Lc/b/v/a/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/user/activity/CreateStoreActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/j;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

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
    const-class v0, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/v/a/j;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/user/activity/CreateStoreActivity;->w:Lc/b/i/i;

    .line 4
    iget-object v1, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lc/b/v/a/j;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    const/16 v1, 0xc1

    invoke-static {v0, v1, p1}, Lcom/emsportal/user/activity/CreateStoreActivity;->v(Lcom/emsportal/user/activity/CreateStoreActivity;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/v/a/j;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/v/a/j;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
