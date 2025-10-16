.class public Lc/b/p/d/b;
.super Lcom/emsportal/base/BaseListFragment;
.source ""

# interfaces
.implements Lc/b/p/b/d$a;


# static fields
.field public static final synthetic k:I


# instance fields
.field public c:Lc/b/p/b/d;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/p/e/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 0

    return-void
.end method

.method public k(I)V
    .locals 2

    iget-object v0, p0, Lc/b/p/d/b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/b;

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v1, Lcom/emsportal/grab/activity/DetailGrabParcelActivity;

    invoke-static {p1, v1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(IZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/b/p/d/b;->e:Ljava/lang/String;

    iget-object v1, p0, Lc/b/p/d/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lc/b/p/d/b;->g:Ljava/lang/String;

    iget-object v3, p0, Lc/b/p/d/b;->i:Ljava/lang/String;

    iget-object v4, p0, Lc/b/p/d/b;->j:Ljava/lang/String;

    iget-object v5, p0, Lc/b/p/d/b;->h:Ljava/lang/String;

    new-instance v6, Lc/b/p/d/a;

    invoke-direct {v6, p0, p1}, Lc/b/p/d/a;-><init>(Lc/b/p/d/b;I)V

    .line 2
    sget v7, Lc/b/s/a;->d:I

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v8, "page"

    invoke-virtual {v7, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string p1, "dd/MM/yyyy"

    invoke-static {v0, p1}, Lb/u/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "time_start"

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " 23:59:59"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dd/MM/yyyy HH:mm:ss"

    invoke-static {p1, v0}, Lb/u/a;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "time_end"

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, "tracking_code"

    invoke-virtual {v7, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v3, :cond_3

    const-string p1, "from_user"

    invoke-virtual {v7, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v4, :cond_4

    const-string p1, "to_user"

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v5, :cond_5

    const-string p1, "status"

    invoke-virtual {v7, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string p1, "limit"

    const-string v0, "10"

    invoke-virtual {v7, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "http://ws.ems.com.vn/api/v1/grab/list"

    invoke-static {p1, v7, p2, v6}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public s()Lcom/emsportal/base/BaseAdapter;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/p/d/b;->d:Ljava/util/List;

    new-instance v0, Lc/b/p/b/d;

    iget-object v1, p0, Lc/b/p/d/b;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lc/b/p/b/d;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lc/b/p/d/b;->c:Lc/b/p/b/d;

    .line 1
    iput-object p0, v0, Lc/b/p/b/d;->a:Lc/b/p/b/d$a;

    return-object v0
.end method

.method public t()Landroidx/recyclerview/widget/RecyclerView$m;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
