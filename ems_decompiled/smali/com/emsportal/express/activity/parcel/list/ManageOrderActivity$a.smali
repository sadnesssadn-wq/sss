.class public Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    const-class v0, Lc/b/m/d/w;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->i:Lc/b/l/g0;

    .line 2
    invoke-virtual {v0, p1}, Lc/b/l/g0;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    iget-boolean v1, v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->u:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->t:Z

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/w;

    invoke-virtual {v0}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/w;

    invoke-virtual {p1}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    .line 5
    invoke-virtual {v1, v0, p1}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/m/d/w;

    invoke-virtual {v0}, Lc/b/m/d/w;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    invoke-virtual {v0}, Lc/b/m/d/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lc/b/m/d/w;->h()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v1, v0}, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    .line 9
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity$a;->a:Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
