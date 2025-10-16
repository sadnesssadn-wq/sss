.class public final synthetic Lc/b/m/a/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

.field public final synthetic d:Lc/b/m/b/b;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;Lc/b/m/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/m/a/b/a/a;->c:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    iput-object p2, p0, Lc/b/m/a/b/a/a;->d:Lc/b/m/b/b;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object p1, p0, Lc/b/m/a/b/a/a;->c:Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    iget-object p2, p0, Lc/b/m/a/b/a/a;->d:Lc/b/m/b/b;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p4, p2, Lc/b/m/b/b;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lc/b/m/b/b;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/m/d/x;

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Lc/b/m/d/x;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lc/b/m/d/x;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lc/b/m/d/x;->a()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2}, Lc/b/m/d/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lc/b/m/d/x;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lc/b/m/d/x;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lc/b/m/d/x;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lc/b/m/d/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lc/b/m/d/x;->f()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Lcom/emsportal/model/ObjProvince;

    invoke-direct {v5, v3, v3, v0}, Lcom/emsportal/model/ObjProvince;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/emsportal/model/ObjDistrict;

    invoke-direct {v6, v4, v1, v4}, Lcom/emsportal/model/ObjDistrict;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/emsportal/model/Postal;

    invoke-direct {v7, p2, v2}, Lcom/emsportal/model/Postal;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->H:Lcom/emsportal/model/ObjProvince;

    iput-object v6, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->I:Lcom/emsportal/model/ObjDistrict;

    iput-object v7, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->J:Lcom/emsportal/model/Postal;

    iput-object v3, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->z:Ljava/lang/String;

    iput-object v4, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->y:Ljava/lang/String;

    iput-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->A:Ljava/lang/String;

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->h:Landroid/widget/EditText;

    invoke-virtual {p2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->i:Landroid/widget/EditText;

    invoke-virtual {p2, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p2, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    invoke-virtual {p2, p3}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;->p:Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
