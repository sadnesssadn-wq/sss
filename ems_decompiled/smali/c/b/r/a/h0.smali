.class public Lc/b/r/a/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    const-class v0, Lc/b/r/c/i;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/i;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lc/b/j/a;->a:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 1
    iget-object v1, v1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->M:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 3
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->N:Lc/b/r/b/q;

    .line 4
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 5
    iget-object p1, p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->M:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object v2, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 7
    iget-object v2, v2, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->B:Landroid/widget/Spinner;

    .line 8
    invoke-virtual {v2, p1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    iget-object p1, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-static {p1, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V

    iget-object p1, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 9
    invoke-virtual {p1, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->G(Z)V

    new-instance v1, Lc/b/r/a/i0;

    invoke-direct {v1, p1}, Lc/b/r/a/i0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

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

    iget-object v0, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V

    iget-object v0, p0, Lc/b/r/a/h0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
