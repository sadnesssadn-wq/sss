.class public Lc/b/v/a/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/emsportal/user/activity/UpdateUserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/w;->c:Lcom/emsportal/user/activity/UpdateUserInfoActivity;

    iput-object p2, p0, Lc/b/v/a/w;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/b/v/a/w;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    iget-object v0, p0, Lc/b/v/a/w;->c:Lcom/emsportal/user/activity/UpdateUserInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lb/u/a;->H()Lc/b/v/c/a;

    move-result-object p1

    iget-object v0, p0, Lc/b/v/a/w;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/b/v/c/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lc/b/v/a/w;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc/b/v/c/a;->l(Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/d/c/e;

    invoke-direct {v0}, Lc/d/c/e;-><init>()V

    invoke-virtual {v0}, Lc/d/c/e;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/b/k/a;->b()Lc/b/k/a;

    move-result-object v1

    iget-object v1, v1, Lc/b/k/a;->a:Lc/b/k/e;

    invoke-virtual {p1}, Lc/b/v/c/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lc/b/k/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lc/b/v/a/w;->c:Lcom/emsportal/user/activity/UpdateUserInfoActivity;

    const/16 v0, 0x144

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lc/b/v/a/w;->c:Lcom/emsportal/user/activity/UpdateUserInfoActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/v/a/w;->c:Lcom/emsportal/user/activity/UpdateUserInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
