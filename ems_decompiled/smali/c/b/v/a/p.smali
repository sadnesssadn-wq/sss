.class public Lc/b/v/a/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/user/activity/LogInActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/user/activity/LogInActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/v/a/p;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    iget-object p1, p0, Lc/b/v/a/p;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002bc

    invoke-static {p1, v0}, Lb/u/a;->n0(Landroid/content/Context;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/v/a/p;->a:Lcom/emsportal/user/activity/LogInActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
