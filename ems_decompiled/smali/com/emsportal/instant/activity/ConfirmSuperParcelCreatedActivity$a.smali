.class public Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 1
    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    if-eqz v1, :cond_2

    .line 2
    iget-object v0, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->h:Landroid/widget/EditText;

    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 4
    iget-object v1, v1, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->c:Landroid/widget/RadioButton;

    .line 5
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "1"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 6
    iget-object v1, v1, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->d:Landroid/widget/RadioButton;

    .line 7
    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "18"

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 8
    iget-object v1, v1, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    .line 9
    invoke-virtual {v1, v0}, Lc/b/q/d/a;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 10
    iget-object v0, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    .line 11
    invoke-virtual {v0, v2}, Lc/b/q/d/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity$a;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 12
    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->i:Lc/b/q/d/a;

    new-instance v2, Lc/b/q/a/d;

    invoke-direct {v2, v0}, Lc/b/q/a/d;-><init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V

    .line 13
    sget v0, Lc/b/s/a;->d:I

    invoke-virtual {v1}, Lc/b/q/d/a;->n()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    const-string v3, "http://ws.ems.com.vn/api/v1/be/orders/create"

    invoke-static {v3, v0, v1, v2}, Lc/b/t/b;->e(Ljava/lang/String;Lorg/json/JSONObject;ZLc/b/t/b$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
