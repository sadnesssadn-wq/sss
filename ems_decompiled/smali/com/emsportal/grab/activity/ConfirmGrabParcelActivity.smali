.class public Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;
.super Lcom/emsportal/base/BaseNavigationActivity;
.source ""


# static fields
.field public static final synthetic s:I


# instance fields
.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/EditText;

.field public i:Lc/b/p/e/a;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/ImageView;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:I

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/emsportal/base/BaseNavigationActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->r:Z

    return-void
.end method

.method public static v(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->i:Lc/b/p/e/a;

    new-instance v2, Lc/b/p/a/c;

    invoke-direct {v2, v0}, Lc/b/p/a/c;-><init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V

    .line 2
    sget v0, Lc/b/s/a;->d:I

    const-string v0, "description"

    const-string v3, "district"

    const-string v4, "province"

    const-string v5, "address"

    const-string v6, "phone"

    const-string v7, "name"

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lc/b/p/e/a;->n()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lc/b/p/e/a;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lc/b/p/e/a;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lc/b/p/e/a;->c()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lc/b/p/e/a;->l()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual {v1}, Lc/b/p/e/a;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 p0, v8

    invoke-virtual {v1}, Lc/b/p/e/a;->a()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v17, v11

    invoke-virtual {v1}, Lc/b/p/e/a;->p()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v6, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v5, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v4, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "serviceType"

    move-object/from16 v8, p0

    move-object/from16 v10, v17

    invoke-virtual {v8, v2, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "origin"

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "inventory"

    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "domain"

    const-string v9, "Android"

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1}, Lc/b/p/e/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/b/p/e/j;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9}, Lc/b/p/e/j;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lc/b/p/e/j;->q()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lc/b/p/e/j;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lc/b/p/e/j;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lc/b/p/e/j;->f()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v17, v1

    invoke-virtual {v9}, Lc/b/p/e/j;->r()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v8

    invoke-virtual {v9}, Lc/b/p/e/j;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lc/b/p/e/j;->v()I

    move-result v19

    move-object/from16 v20, v2

    invoke-virtual {v9}, Lc/b/p/e/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lc/b/p/e/j;->x()I

    move-result v21

    invoke-virtual {v9}, Lc/b/p/e/j;->l()I

    move-result v22

    invoke-virtual {v9}, Lc/b/p/e/j;->y()I

    move-result v23

    invoke-virtual {v9}, Lc/b/p/e/j;->i()I

    move-result v24

    invoke-virtual {v9}, Lc/b/p/e/j;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v7, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v6, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v5, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v4, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v3, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "product_name"

    invoke-virtual {v11, v10, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v0, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "quantity"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "total_amount"

    const-string v8, "1000"

    invoke-virtual {v11, v1, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "money_collect"

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "weight"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v22, :cond_0

    const/16 v22, 0x1

    :cond_0
    if-nez v23, :cond_1

    const/16 v23, 0x1

    :cond_1
    if-nez v24, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move/from16 v10, v24

    :goto_1
    const-string v1, "length"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extra"

    invoke-virtual {v11, v1, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v1, v20

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v2, v1

    move-object/from16 v1, v17

    move-object/from16 v8, v18

    goto/16 :goto_0

    :cond_3
    move-object v1, v2

    move-object/from16 v18, v8

    const-string v0, "destination"

    move-object/from16 v2, v18

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "http://ws.ems.com.vn/api/v1/grab/deliveries"

    move-object/from16 v1, v16

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lc/b/t/b;->e(Ljava/lang/String;Lorg/json/JSONObject;ZLc/b/t/b$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    const v0, 0x7f0b0022

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->e:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->r:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->n:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    const v0, 0x7f100255

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void

    :cond_0
    invoke-static {}, Lb/u/a;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f100259

    new-instance v1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;

    invoke-direct {v1, p0}, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$a;-><init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V

    invoke-static {p0, v0, v1}, Lb/u/a;->i0(Landroid/content/Context;ILc/b/w/m;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100263

    invoke-static {v0, v1}, Lb/u/a;->n0(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->k:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    .line 1
    iget-object p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->o:Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x0

    if-le v0, v1, :cond_3

    aget-object v0, p1, v2

    aget-object p1, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    move v7, p1

    move v6, v2

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    new-instance p1, Landroid/app/TimePickerDialog;

    new-instance v5, Lc/b/p/a/a;

    invoke-direct {v5, p0}, Lc/b/p/a/a;-><init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {p1}, Landroid/app/TimePickerDialog;->show()V

    return-void

    .line 2
    :cond_4
    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->l:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_6

    iget-boolean p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->r:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->r:Z

    if-eqz p1, :cond_5

    const p1, 0x7f070059

    goto :goto_2

    :cond_5
    const p1, 0x7f07005a

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->m:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    const-class p1, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;

    invoke-static {p0, p1}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_7
    return-void
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v1, "DATA_SUPER_SPEED_PARCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lc/b/p/e/a;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->i:Lc/b/p/e/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Lc/b/p/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "00:00"

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public r()V
    .locals 1

    iput-object p0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->n:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    const v0, 0x7f10006f

    invoke-virtual {p0, v0}, Lcom/emsportal/base/BaseNavigationActivity;->s(I)V

    const v0, 0x7f080473

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0804d6

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f080461

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0800ff

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->h:Landroid/widget/EditText;

    const v0, 0x7f080472

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v0, 0x7f0804d8

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f080243

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f080247

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f0804ad

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f080456

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->g:Landroid/widget/TextView;

    const v0, 0x7f0804c4

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->l:Landroid/widget/ImageView;

    const v0, 0x7f0804b0

    invoke-virtual {p0, v0}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->m:Landroid/widget/TextView;

    return-void
.end method

.method public final w()V
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->i:Lc/b/p/e/a;

    new-instance v2, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;

    invoke-direct {v2, v1}, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;-><init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V

    .line 1
    sget v3, Lc/b/s/a;->d:I

    const-string v3, "description"

    const-string v4, "district"

    const-string v5, "province"

    const-string v6, "address"

    const-string v7, "phone"

    const-string v8, "name"

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Lc/b/p/e/a;->n()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lc/b/p/e/a;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lc/b/p/e/a;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lc/b/p/e/a;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Lc/b/p/e/a;->l()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v2

    invoke-virtual {v0}, Lc/b/p/e/a;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v9

    invoke-virtual {v0}, Lc/b/p/e/a;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v12

    invoke-virtual {v0}, Lc/b/p/e/a;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v7, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v6, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v4, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v3, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "serviceType"

    move-object/from16 v2, v17

    move-object/from16 v9, v18

    invoke-virtual {v2, v1, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "origin"

    invoke-virtual {v2, v1, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "inventory"

    invoke-virtual {v2, v1, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lc/b/p/e/a;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/b/p/e/j;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9}, Lc/b/p/e/j;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Lc/b/p/e/j;->q()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lc/b/p/e/j;->a()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lc/b/p/e/j;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lc/b/p/e/j;->f()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v0

    invoke-virtual {v9}, Lc/b/p/e/j;->r()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v2

    invoke-virtual {v9}, Lc/b/p/e/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lc/b/p/e/j;->v()I

    move-result v20

    move-object/from16 v21, v1

    invoke-virtual {v9}, Lc/b/p/e/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lc/b/p/e/j;->x()I

    move-result v22

    invoke-virtual {v9}, Lc/b/p/e/j;->l()I

    move-result v23

    invoke-virtual {v9}, Lc/b/p/e/j;->y()I

    move-result v24

    invoke-virtual {v9}, Lc/b/p/e/j;->i()I

    move-result v25

    invoke-virtual {v9}, Lc/b/p/e/j;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v8, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v7, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v6, v14}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v5, v15}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v4, v10}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "product_name"

    invoke-virtual {v11, v10, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v11, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quantity"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "total_amount"

    const-string v2, "1000"

    invoke-virtual {v11, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "money_collect"

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "weight"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-nez v23, :cond_0

    const/16 v23, 0x1

    :cond_0
    if-nez v24, :cond_1

    const/16 v24, 0x1

    :cond_1
    if-nez v25, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    move/from16 v10, v25

    :goto_1
    const-string v0, "length"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "width"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "height"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "extra"

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    move-object/from16 v0, v18

    move-object/from16 v2, v19

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    move-object/from16 v19, v2

    const-string v1, "destination"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "http://ws.ems.com.vn/api/v1/grab/quotations"

    move-object/from16 v1, v16

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lc/b/t/b;->e(Ljava/lang/String;Lorg/json/JSONObject;ZLc/b/t/b$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
