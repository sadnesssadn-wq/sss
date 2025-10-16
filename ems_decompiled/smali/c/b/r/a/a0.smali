.class public Lc/b/r/a/a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lc/b/r/c/i;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->M:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 3
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->N:Lc/b/r/b/q;

    .line 4
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->M:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object v1, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 7
    iget-object v1, v1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->B:Landroid/widget/Spinner;

    .line 8
    invoke-virtual {v1, p1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object p1, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->v(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Z)V

    iget-object p1, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 9
    invoke-virtual {p1, v0}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->E(Z)V

    new-instance v1, Lc/b/r/a/s;

    invoke-direct {v1, p1}, Lc/b/r/a/s;-><init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V

    .line 10
    sget p1, Lc/b/s/a;->d:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "datatype"

    const-string v3, "list"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://ws.ems.com.vn/api/v1/order-intl/item-type"

    invoke-static {v2, p1, v0, v1}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->v(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Z)V

    iget-object v0, p0, Lc/b/r/a/a0;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
