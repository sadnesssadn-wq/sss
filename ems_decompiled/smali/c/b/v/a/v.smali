.class public Lc/b/v/a/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/emsportal/user/activity/RegisterActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/v;->b:Lcom/emsportal/user/activity/RegisterActivity;

    iput-object p2, p0, Lc/b/v/a/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    sget-object v0, Lcom/emsportal/base/BaseNavigationActivity;->self:Lcom/emsportal/base/BaseNavigationActivity;

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    new-instance v1, Lc/b/v/a/v$a;

    invoke-direct {v1, p0}, Lc/b/v/a/v$a;-><init>(Lc/b/v/a/v;)V

    invoke-static {v0, p1, v1}, Lb/u/a;->j0(Landroid/content/Context;Ljava/lang/String;Lc/b/w/m;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/v/a/v;->b:Lcom/emsportal/user/activity/RegisterActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
