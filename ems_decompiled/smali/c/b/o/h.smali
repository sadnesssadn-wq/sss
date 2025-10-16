.class public Lc/b/o/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lc/b/o/s;


# direct methods
.method public constructor <init>(Lc/b/o/s;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/h;->a:Lc/b/o/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/o/h;->a:Lc/b/o/s;

    .line 3
    iget-object v0, v0, Lc/b/o/s;->J:Lc/b/i/b;

    .line 4
    iget-object v0, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    new-instance v0, Lcom/emsportal/model/ObjDistrict;

    const-string v1, "1111"

    const-string v2, "Qu\u1eadn/Huy\u1ec7n"

    invoke-direct {v0, v1, v2}, Lcom/emsportal/model/ObjDistrict;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lc/b/o/h;->a:Lc/b/o/s;

    .line 6
    iget-object v1, v1, Lc/b/o/s;->K:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/b/o/h;->a:Lc/b/o/s;

    .line 8
    iget-object v0, v0, Lc/b/o/s;->J:Lc/b/i/b;

    .line 9
    const-class v1, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1, v1}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 10
    iget-object v1, v0, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lc/b/o/h;->a:Lc/b/o/s;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    .line 12
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 13
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/o/h;->a:Lc/b/o/s;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
