.class public Lc/b/v/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/user/activity/ChangePasswordActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/ChangePasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/b;->a:Lcom/emsportal/user/activity/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    iget-object v0, p0, Lc/b/v/a/b;->a:Lcom/emsportal/user/activity/ChangePasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/v/a/b;->a:Lcom/emsportal/user/activity/ChangePasswordActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/v/a/b;->a:Lcom/emsportal/user/activity/ChangePasswordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
