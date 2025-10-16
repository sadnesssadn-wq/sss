.class public Lc/b/v/a/v$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/v/a/v;->a(Lc/b/t/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/v/a/v;


# direct methods
.method public constructor <init>(Lc/b/v/a/v;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v0, v0, Lc/b/v/a/v;->b:Lcom/emsportal/user/activity/RegisterActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v1, v1, Lc/b/v/a/v;->a:Ljava/lang/String;

    const-string v2, "KEY_PHONE_OR_EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v1, v1, Lc/b/v/a/v;->b:Lcom/emsportal/user/activity/RegisterActivity;

    const/16 v3, 0xd6

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v0, v0, Lc/b/v/a/v;->b:Lcom/emsportal/user/activity/RegisterActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    new-instance v1, Lc/d/a/b/i/a/b;

    invoke-direct {v1, v0}, Lc/d/a/b/i/a/b;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lc/d/a/b/e/m/m/r$a;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lc/d/a/b/e/m/m/r$a;-><init>(Lc/d/a/b/e/m/m/o1;)V

    .line 3
    new-instance v3, Lc/d/a/b/i/a/i;

    const-string v4, "EMSVIETNAM"

    invoke-direct {v3, v1, v4}, Lc/d/a/b/i/a/i;-><init>(Lc/d/a/b/i/a/b;Ljava/lang/String;)V

    .line 4
    iput-object v3, v0, Lc/d/a/b/e/m/m/r$a;->a:Lc/d/a/b/e/m/m/o;

    const/4 v3, 0x1

    new-array v4, v3, [Lc/d/a/b/e/c;

    const/4 v5, 0x0

    .line 5
    sget-object v6, Lc/d/a/b/i/a/c;->d:Lc/d/a/b/e/c;

    aput-object v6, v4, v5

    .line 6
    iput-object v4, v0, Lc/d/a/b/e/m/m/r$a;->c:[Lc/d/a/b/e/c;

    const/16 v4, 0x620

    .line 7
    iput v4, v0, Lc/d/a/b/e/m/m/r$a;->d:I

    .line 8
    invoke-virtual {v0}, Lc/d/a/b/e/m/m/r$a;->a()Lc/d/a/b/e/m/m/r;

    move-result-object v0

    .line 9
    invoke-virtual {v1, v3, v0}, Lc/d/a/b/e/m/d;->c(ILc/d/a/b/e/m/m/r;)Lc/d/a/b/p/l;

    .line 10
    iget-object v0, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v0, v0, Lc/b/v/a/v;->a:Ljava/lang/String;

    invoke-static {v0}, Lb/u/a;->O(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v1, v1, Lc/b/v/a/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    const-class v2, Lcom/emsportal/user/activity/ConfirmOtpActivity;

    invoke-static {v1, v2, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lc/b/v/a/v$a;->a:Lc/b/v/a/v;

    iget-object v0, v0, Lc/b/v/a/v;->b:Lcom/emsportal/user/activity/RegisterActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
