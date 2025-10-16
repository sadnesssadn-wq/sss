.class public Lcom/emsportal/user/activity/CreateStoreActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emsportal/user/activity/CreateStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/user/activity/CreateStoreActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/CreateStoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lcom/emsportal/user/activity/CreateStoreActivity;->x:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 3
    invoke-virtual {p2, p1}, Lcom/emsportal/user/activity/CreateStoreActivity;->w(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 5
    iput-object p1, p2, Lcom/emsportal/user/activity/CreateStoreActivity;->C:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    iput-object p2, p1, Lcom/emsportal/user/activity/CreateStoreActivity;->C:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/emsportal/user/activity/CreateStoreActivity;->y:Lc/b/i/b;

    .line 7
    iget-object p1, p1, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    invoke-static {}, Lcom/emsportal/model/ObjDistrict;->b()Lcom/emsportal/model/ObjDistrict;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 9
    iget-object p2, p2, Lcom/emsportal/user/activity/CreateStoreActivity;->z:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 11
    iget-object p1, p1, Lcom/emsportal/user/activity/CreateStoreActivity;->y:Lc/b/i/b;

    .line 12
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 13
    iget-object p1, p1, Lcom/emsportal/user/activity/CreateStoreActivity;->A:Lc/b/i/m;

    .line 14
    iget-object p1, p1, Lcom/emsportal/base/BaseSpinnerAdapter;->listDatas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 15
    invoke-static {}, Lcom/emsportal/model/ObjWard;->b()Lcom/emsportal/model/ObjWard;

    move-result-object p1

    iget-object p2, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 16
    iget-object p2, p2, Lcom/emsportal/user/activity/CreateStoreActivity;->B:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/emsportal/user/activity/CreateStoreActivity$a;->c:Lcom/emsportal/user/activity/CreateStoreActivity;

    .line 18
    iget-object p1, p1, Lcom/emsportal/user/activity/CreateStoreActivity;->A:Lc/b/i/m;

    .line 19
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
