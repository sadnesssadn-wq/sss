.class public Lc/b/v/a/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/user/activity/LogInActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/LogInActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 10

    const-string v0, "login"

    :try_start_0
    iget-object v1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    const/16 v2, 0x86

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 1
    iget-object p1, p1, Lc/b/t/a;->a:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lb/u/a;->f0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-static {p1}, Lb/u/a;->u(Ljava/lang/String;)Lio/jsonwebtoken/Claims;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "user_info"

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-interface {v2, v3, v4}, Lio/jsonwebtoken/Claims;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    new-instance v3, Lc/d/c/e;

    invoke-direct {v3}, Lc/d/c/e;-><init>()V

    invoke-virtual {v3}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->h(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    const-class v4, Lc/b/v/c/a;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/v/c/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    :catch_0
    :cond_0
    const/4 v2, 0x1

    .line 4
    :try_start_2
    invoke-virtual {v1, v2}, Lc/b/v/c/a;->k(Z)V

    invoke-virtual {v1, p1}, Lc/b/v/c/a;->m(Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lb/u/a;->z()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc/b/v/c/a;

    invoke-virtual {v1}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v7, v2}, Lc/b/v/c/a;->k(Z)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v5}, Lc/b/v/c/a;->k(Z)V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-ltz v3, :cond_3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {p1, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-static {p1}, Lb/u/a;->Z(Ljava/util/ArrayList;)V

    :cond_5
    invoke-static {v1}, Lb/u/a;->g0(Lc/b/v/c/a;)V

    invoke-virtual {v1}, Lc/b/v/c/a;->d()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5
    :try_start_3
    invoke-static {p1}, Lcom/zoho/livechat/android/ZohoLiveChat;->registerVisitor(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/zoho/livechat/android/exception/InvalidVisitorIDException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_1
    invoke-virtual {v1}, Lc/b/v/c/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/b/v/c/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->setContactNumber(Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->setEmail(Ljava/lang/String;)V

    invoke-virtual {v1}, Lc/b/v/c/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "name"

    invoke-static {v1, p1}, Lcom/zoho/salesiqembed/ZohoSalesIQ$Visitor;->addInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    .line 8
    iget-object v1, v1, Lcom/emsportal/user/activity/LogInActivity;->l:Lc/b/m/d/r;

    if-eqz v1, :cond_6

    const-string v2, "OBJ_NOTIFICATION"

    .line 9
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_6
    invoke-virtual {p1, v0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    .line 10
    iget-object v0, v0, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    .line 11
    const-class v1, Lcom/emsportal/MainActivity;

    invoke-static {v0, v1, p1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object p1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    .line 12
    iget-object p1, p1, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    const v0, 0x7f100285

    .line 13
    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    iget-object p1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "user_not_found"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    const v1, 0x7f1002cf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/user/activity/LogInActivity;->j:Lcom/emsportal/user/activity/LogInActivity;

    .line 2
    const-class v0, Lcom/emsportal/activity/MaintainSystemActivity;

    invoke-static {p1, v0}, Lb/u/a;->p0(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/b/v/a/q;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
