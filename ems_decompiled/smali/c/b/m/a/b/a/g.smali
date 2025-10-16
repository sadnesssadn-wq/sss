.class public Lc/b/m/a/b/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 30

    move-object/from16 v0, p0

    invoke-static {}, Lb/u/a;->M()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 1
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v2, 0x7f100263

    .line 2
    invoke-static {v1, v2}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->d:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 5
    iget-object v3, v3, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->e:Landroidx/appcompat/widget/SwitchCompat;

    .line 6
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    iget-object v4, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 7
    iget-object v4, v4, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->f:Landroidx/appcompat/widget/SwitchCompat;

    .line 8
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    iget-object v5, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 9
    iget-object v5, v5, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->j:Landroid/widget/EditText;

    .line 10
    invoke-static {v5}, Lc/a/a/a/a;->K(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 11
    iget-object v6, v6, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 12
    invoke-virtual {v6, v5}, Lc/b/m/d/j;->O(Ljava/lang/String;)V

    iget-object v5, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 13
    iget-object v6, v5, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 14
    iget-object v5, v5, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->v:Ljava/lang/String;

    .line 15
    invoke-virtual {v6, v5}, Lc/b/m/d/j;->N(Ljava/lang/String;)V

    iget-object v5, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 16
    iget-object v6, v5, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 17
    iget-object v5, v5, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->w:Ljava/lang/String;

    .line 18
    invoke-virtual {v6, v5}, Lc/b/m/d/j;->P(Ljava/lang/String;)V

    iget-object v5, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 19
    iget-object v5, v5, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 20
    invoke-virtual {v5, v1}, Lc/b/m/d/j;->U(I)V

    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 21
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 22
    invoke-virtual {v1, v3}, Lc/b/m/d/j;->T(I)V

    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 23
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 24
    invoke-virtual {v1, v4}, Lc/b/m/d/j;->Q(I)V

    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 25
    iget-object v3, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 26
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v1}, Lc/b/m/d/j;->R(Ljava/lang/String;)V

    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 28
    iget-object v3, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 29
    iget-object v1, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->u:Ljava/util/List;

    .line 30
    invoke-virtual {v3, v1}, Lc/b/m/d/j;->S(Ljava/util/List;)V

    iget-object v1, v0, Lc/b/m/a/b/a/g;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 31
    iget-object v3, v1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->s:Lc/b/m/d/j;

    .line 32
    invoke-virtual {v1, v2}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    new-instance v2, Lc/b/m/a/b/a/h;

    invoke-direct {v2, v1}, Lc/b/m/a/b/a/h;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V

    .line 33
    sget v1, Lc/b/s/a;->d:I

    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v1

    const-string v4, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/b/v/c/a;->g()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "http://ws.ems.com.vn/api/v1/orders/create-v2"

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/b/v/c/a;->g()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v5, "http://ws.ems.com.vn/api/v1/orders/rc-create"

    :cond_2
    invoke-virtual {v3}, Lc/b/m/d/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lc/b/m/d/j;->z()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lc/b/m/d/j;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lc/b/m/d/j;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lc/b/m/d/j;->y()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lc/b/m/d/j;->G()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lc/b/m/d/j;->L()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lc/b/m/d/j;->J()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3}, Lc/b/m/d/j;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lc/b/m/d/j;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lc/b/m/d/j;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lc/b/m/d/j;->D()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v2

    invoke-virtual {v3}, Lc/b/m/d/j;->u()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v5

    invoke-virtual {v3}, Lc/b/m/d/j;->i()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v5

    invoke-virtual {v3}, Lc/b/m/d/j;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lc/b/m/d/j;->q()I

    move-result v19

    invoke-virtual {v3}, Lc/b/m/d/j;->H()I

    move-result v20

    invoke-virtual {v3}, Lc/b/m/d/j;->I()I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v23, v5

    invoke-virtual {v3}, Lc/b/m/d/j;->w()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v0

    invoke-virtual {v3}, Lc/b/m/d/j;->M()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v13

    invoke-virtual {v3}, Lc/b/m/d/j;->r()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3}, Lc/b/m/d/j;->F()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_3

    invoke-virtual {v3}, Lc/b/m/d/j;->F()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v26

    goto :goto_1

    :cond_3
    move-object/from16 v27, v4

    :goto_1
    invoke-virtual {v3}, Lc/b/m/d/j;->n()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_4

    invoke-virtual {v3}, Lc/b/m/d/j;->n()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v28, v26

    goto :goto_2

    :cond_4
    move-object/from16 v28, v4

    :goto_2
    invoke-virtual {v3}, Lc/b/m/d/j;->K()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_5

    invoke-virtual {v3}, Lc/b/m/d/j;->K()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v29, v26

    goto :goto_3

    :cond_5
    move-object/from16 v29, v4

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_6
    move-object/from16 v0, v22

    const-string v4, "inventory"

    const-string v5, "to_name"

    invoke-static {v4, v1, v5, v6}, Lc/a/a/a/a;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v4, "to_phone"

    invoke-virtual {v1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "to_address"

    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "to_province"

    invoke-virtual {v1, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "to_district"

    invoke-virtual {v1, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "product_name"

    invoke-virtual {v1, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "total_quantity"

    invoke-virtual {v1, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "total_weight"

    invoke-virtual {v1, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_7

    const-string v4, "size"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "total_amount"

    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "service"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lc/b/m/d/j;->x()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const-string v8, "vas[%1$s]"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const-string v0, "money_collect"

    move-object/from16 v4, v25

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "payment_config"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "checked"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "fragile"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lc/b/m/d/j;->A()Ljava/lang/String;

    move-result-object v0

    const-string v3, "order_code"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "domain"

    const-string v3, "Android"

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "to_postal"

    move-object/from16 v3, v24

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "description"

    move-object/from16 v3, v18

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "to_province_name"

    move-object/from16 v4, v27

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "to_district_name"

    move-object/from16 v4, v28

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "to_postal_name"

    move-object/from16 v4, v29

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "phu_value"

    move-object/from16 v3, v23

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, v16

    move-object/from16 v5, v17

    invoke-static {v5, v1, v2, v0}, Lc/b/t/b;->d(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    return-void
.end method
