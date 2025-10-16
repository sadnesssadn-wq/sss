.class public Lcom/emsportal/express/activity/request/RequestActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/request/RequestActivity;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/request/RequestActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/request/RequestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 5

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    const-class v1, Lcom/emsportal/model/ObjTab;

    invoke-virtual {p1, v1}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 3
    iput-object p1, v0, Lcom/emsportal/express/activity/request/RequestActivity;->g:Ljava/util/ArrayList;

    .line 4
    iget-object p1, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/express/activity/request/RequestActivity;->g:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    .line 7
    iget-object p1, p1, Lcom/emsportal/express/activity/request/RequestActivity;->g:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/emsportal/model/ObjTab;

    iget-object v1, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    .line 9
    sget v2, Lc/b/m/c/d;->f:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lc/b/m/c/d;

    invoke-direct {v3}, Lc/b/m/c/d;-><init>()V

    const-string v4, "OBJ_TAB"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object v0, v3, Lc/b/m/c/d;->d:Lcom/emsportal/model/ObjTab;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {v0}, Lcom/emsportal/model/ObjTab;->b()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, v1, Lcom/emsportal/express/activity/request/RequestActivity;->e:Lcom/emsportal/express/activity/request/RequestActivity$b;

    .line 12
    iget-object v2, v1, Lcom/emsportal/express/activity/request/RequestActivity$b;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lcom/emsportal/express/activity/request/RequestActivity$b;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    .line 14
    iget-object v0, p1, Lcom/emsportal/express/activity/request/RequestActivity;->c:Landroidx/viewpager/widget/ViewPager;

    .line 15
    iget-object v1, p1, Lcom/emsportal/express/activity/request/RequestActivity;->e:Lcom/emsportal/express/activity/request/RequestActivity$b;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/x/a/a;)V

    iget-object p1, p1, Lcom/emsportal/express/activity/request/RequestActivity;->d:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 17
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 18
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/request/RequestActivity$a;->a:Lcom/emsportal/express/activity/request/RequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
