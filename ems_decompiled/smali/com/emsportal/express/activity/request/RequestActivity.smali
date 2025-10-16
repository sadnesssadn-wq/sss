.class public Lcom/emsportal/express/activity/request/RequestActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/emsportal/express/activity/request/RequestActivity$b;
    }
.end annotation


# instance fields
.field public c:Landroidx/viewpager/widget/ViewPager;

.field public d:Lcom/google/android/material/tabs/TabLayout;

.field public e:Lcom/emsportal/express/activity/request/RequestActivity$b;

.field public f:Landroid/widget/TextView;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/emsportal/model/ObjTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0071

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/m;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x7b

    if-ne p1, p3, :cond_0

    const/16 p1, 0x144

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/emsportal/express/activity/request/RequestActivity;->v()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/emsportal/express/activity/request/RequestActivity$b;

    invoke-virtual {p0}, Lb/m/d/m;->getSupportFragmentManager()Lb/m/d/y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/emsportal/express/activity/request/RequestActivity$b;-><init>(Lcom/emsportal/express/activity/request/RequestActivity;Lb/m/d/y;)V

    iput-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->e:Lcom/emsportal/express/activity/request/RequestActivity$b;

    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/emsportal/express/activity/request/RequestActivity;->v()V

    return-void
.end method

.method public r()V
    .locals 1

    const v0, 0x7f1003a8

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080507

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->c:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f08040c

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->d:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f080463

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->f:Landroid/widget/TextView;

    return-void
.end method

.method public final v()V
    .locals 4

    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity;->e:Lcom/emsportal/express/activity/request/RequestActivity$b;

    .line 1
    iget-object v1, v0, Lcom/emsportal/express/activity/request/RequestActivity$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lcom/emsportal/express/activity/request/RequestActivity$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    :cond_0
    new-instance v0, Lcom/emsportal/express/activity/request/RequestActivity$a;

    invoke-direct {v0, p0}, Lcom/emsportal/express/activity/request/RequestActivity$a;-><init>(Lcom/emsportal/express/activity/request/RequestActivity;)V

    .line 3
    sget v1, Lc/b/s/a;->d:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/tickets/count-group"

    invoke-static {v3, v1, v2, v0}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
