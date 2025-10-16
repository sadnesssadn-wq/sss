.class public Lcom/emsportal/user/activity/CreateStoreActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/user/activity/CreateStoreActivity;->w(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/user/activity/CreateStoreActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

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
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/user/activity/CreateStoreActivity;->y:Lc/b/i/b;

    .line 4
    iget-object v0, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 6
    iget-object v0, v0, Lcom/emsportal/user/activity/CreateStoreActivity;->z:Ljava/util/ArrayList;

    .line 7
    invoke-static {}, Lcom/emsportal/model/ObjDistrict;->b()Lcom/emsportal/model/ObjDistrict;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 8
    iget-object v0, v0, Lcom/emsportal/user/activity/CreateStoreActivity;->y:Lc/b/i/b;

    .line 9
    iget-object v1, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 10
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    const/16 v1, 0x39

    invoke-static {v0, v1, p1}, Lcom/emsportal/user/activity/CreateStoreActivity;->v(Lcom/emsportal/user/activity/CreateStoreActivity;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 11
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 12
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/user/activity/CreateStoreActivity$d;->a:Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
