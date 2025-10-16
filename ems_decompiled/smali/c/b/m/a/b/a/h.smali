.class public Lc/b/m/a/b/a/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 5

    iget-object v0, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/b/v/c/a;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    iget-object v2, v2, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const v3, 0x7f100266

    .line 4
    invoke-static {v2, v3}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object v2, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const/16 v3, 0x144

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    iget-object v2, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {v0}, Lc/b/v/c/a;->g()Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lc/b/m/d/p;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/p;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-virtual {p1}, Lc/b/m/d/p;->c()Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f1002a6

    .line 5
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc/b/m/a/b/a/i;

    invoke-direct {v2, v0, p1}, Lc/b/m/a/b/a/i;-><init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lb/b/k/g$a;

    invoke-direct {p1, v0}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v3, p1, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    const-string v4, "Th\u00f4ng b\u00e1o"

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    .line 8
    iput-object v1, v3, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    const v1, 0x7f100058

    .line 9
    new-instance v3, Lc/b/w/j;

    invoke-direct {v3, v2}, Lc/b/w/j;-><init>(Lc/b/w/n;)V

    invoke-virtual {p1, v1, v3}, Lb/b/k/g$a;->e(ILandroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    const v1, 0x7f100073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/b/w/k;

    invoke-direct {v1, v2}, Lc/b/w/k;-><init>(Lc/b/w/n;)V

    invoke-virtual {p1, v0, v1}, Lb/b/k/g$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {p1}, Lb/b/k/g$a;->g()Lb/b/k/g;

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 11
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 12
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 13
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    iget-object v0, p0, Lc/b/m/a/b/a/h;->a:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->x:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
