.class public Lc/b/m/a/c/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/request/CreateRequestActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/request/CreateRequestActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/c/c;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/m/a/c/c;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/m/a/c/c;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    const/16 v0, 0x144

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lc/b/m/a/c/c;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/m/a/c/c;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/c/c;->a:Lcom/emsportal/express/activity/request/CreateRequestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
