.class public Lc/b/r/a/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 3

    iget-object v0, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V

    iget-object p1, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const/16 v0, 0x338

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0xbc5

    const-string v2, "KEY_CREATE_INTERNATIONAL_SUCCESS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-class v1, Lcom/emsportal/international/activity/ListInternationalParcelActivity;

    invoke-static {p1, v1, v0}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lc/b/r/a/b0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V

    return-void
.end method
