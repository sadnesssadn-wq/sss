.class public Lc/b/q/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/q/a/b;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 10

    const-class v0, Lc/b/q/d/f;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/q/d/f;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lc/b/q/a/b;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 1
    sget v1, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->o:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/q/d/f;->c()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#,### \u0111"

    invoke-static {v2, v3}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/q/d/f;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v4, "#.### Km"

    invoke-static {v2, v4}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lc/b/q/d/f;->a()D

    move-result-wide v1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    cmpl-double v8, v1, v6

    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->l:Landroid/view/ViewGroup;

    if-lez v8, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/q/d/f;->a()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-virtual {p1}, Lc/b/q/d/f;->d()D

    move-result-wide v1

    cmpl-double v8, v1, v6

    if-lez v8, :cond_1

    iget-object v1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lc/b/q/d/f;->d()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/q/a/b;->a:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;->n:Lcom/emsportal/instant/activity/ConfirmSuperParcelCreatedActivity;

    .line 2
    new-instance v1, Lc/b/q/a/b$a;

    invoke-direct {v1, p0}, Lc/b/q/a/b$a;-><init>(Lc/b/q/a/b;)V

    invoke-static {v0, p1, v1}, Lb/u/a;->j0(Landroid/content/Context;Ljava/lang/String;Lc/b/w/m;)V

    return-void
.end method
