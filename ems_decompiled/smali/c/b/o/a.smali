.class public final synthetic Lc/b/o/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/emsportal/base/BaseAdapter$IOnClickItemListener;


# instance fields
.field public final synthetic c:Lc/b/o/t;


# direct methods
.method public synthetic constructor <init>(Lc/b/o/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/o/a;->c:Lc/b/o/t;

    return-void
.end method


# virtual methods
.method public final k(I)V
    .locals 6

    iget-object v0, p0, Lc/b/o/a;->c:Lc/b/o/t;

    .line 1
    iget-object v1, v0, Lc/b/o/t;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjActionHome;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjActionHome;->a()I

    move-result p1

    const/16 v1, 0xbc5

    const/16 v2, 0xbc4

    const/16 v3, 0x4c7

    const v4, 0x7f100263

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 2
    :pswitch_1
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    const-class v0, Lcom/emsportal/express/activity/parcel/report/codbyday/ReportCodByDayActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 4
    :pswitch_2
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    const-class p1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-static {v0, p1, v1}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 6
    :pswitch_3
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    .line 7
    :cond_1
    const-class p1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    invoke-static {v0, p1, v2}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 8
    :pswitch_4
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 9
    :cond_2
    const-class p1, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-static {v0, p1, v1}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 10
    :pswitch_5
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    const-class v0, Lcom/emsportal/express/activity/parcel/list/ManageOrderActivity;

    const/16 v1, 0x7b

    invoke-static {p1, v0, v1}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 12
    :pswitch_6
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    const-class p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-static {v0, p1, v2}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 14
    :pswitch_7
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportOrderActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 16
    :pswitch_8
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    .line 17
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v0, Lcom/emsportal/express/retail/activity/ListOrderRCActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 18
    :pswitch_9
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    const-class v0, Lcom/emsportal/grab/activity/ListGrabParcelActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 20
    :pswitch_a
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    const-class p1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    invoke-static {v0, p1, v3}, Lb/u/a;->t0(Landroidx/fragment/app/Fragment;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 22
    :pswitch_b
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    const-class v0, Lcom/emsportal/express/activity/CalculateFreightActivity;

    const/16 v1, 0x7c9

    invoke-static {p1, v0, v1}, Lb/u/a;->r0(Lb/b/k/h;Ljava/lang/Class;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_c
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1}, Lb/u/a;->l0(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 25
    new-instance p1, Lc/b/m/d/j$b;

    invoke-direct {p1}, Lc/b/m/d/j$b;-><init>()V

    const-string v1, "Nguy\u1ec5n B\u00e1 H\u00f9ng"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->L(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "0999666888"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->N(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "32 l\u00fd th\u00e1i t\u1ed5, ho\u00e0n ki\u1ebfm"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->z(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "Kh\u0103n gi\u1ea5y x 30 th\u00f9ng"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->K(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "30"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->R(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "3000"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->U(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "3000000"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->S(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->E(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "-99999"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->I(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "10"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->B(Ljava/lang/String;)Lc/b/m/d/j$b;

    new-instance v2, Lcom/emsportal/model/ObjProvince;

    const-string v4, ""

    const-string v5, "H\u00e0 N\u1ed9i"

    invoke-direct {v2, v4, v1, v5}, Lcom/emsportal/model/ObjProvince;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lc/b/m/d/j$b;->P(Lcom/emsportal/model/ObjProvince;)Lc/b/m/d/j$b;

    new-instance v1, Lcom/emsportal/model/ObjDistrict;

    const-string v2, "1100"

    const-string v5, "Ho\u00e0n Ki\u1ebfm"

    invoke-direct {v1, v4, v5, v2}, Lcom/emsportal/model/ObjDistrict;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->F(Lcom/emsportal/model/ObjDistrict;)Lc/b/m/d/j$b;

    invoke-virtual {p1, v2}, Lc/b/m/d/j$b;->A(Ljava/lang/String;)Lc/b/m/d/j$b;

    const-string v1, "11000"

    invoke-virtual {p1, v1}, Lc/b/m/d/j$b;->D(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {p1, v4}, Lc/b/m/d/j$b;->J(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {p1, v4}, Lc/b/m/d/j$b;->V(Ljava/lang/String;)Lc/b/m/d/j$b;

    invoke-virtual {p1, v4}, Lc/b/m/d/j$b;->H(Ljava/lang/String;)Lc/b/m/d/j$b;

    .line 26
    new-instance v1, Lc/b/m/d/j;

    invoke-direct {v1, p1}, Lc/b/m/d/j;-><init>(Lc/b/m/d/j$b;)V

    .line 27
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_INVENTORY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v0

    check-cast v0, Lb/b/k/h;

    const-class v1, Lcom/emsportal/express/activity/parcel/create/CreateInventoryActivity;

    invoke-static {v0, v1, v3, p1}, Lb/u/a;->s0(Lb/b/k/h;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 28
    :pswitch_e
    invoke-static {}, Lb/u/a;->M()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    check-cast p1, Lb/b/k/h;

    const-class v0, Lcom/emsportal/express/activity/parcel/report/cod/ReportParcelCODActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 30
    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-static {p1, v4}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
