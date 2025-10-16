.class public Lc/b/q/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/a/d;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    iget-object p1, p0, Lc/b/q/a/d;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 1
    sget v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->o:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/b/q/a/c;

    invoke-direct {v0, p1}, Lc/b/q/a/c;-><init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V

    const v1, 0x7f1002c2

    invoke-static {p1, v1, v0}, Lb/u/a;->m0(Landroid/content/Context;ILc/b/w/m;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/q/a/d;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
