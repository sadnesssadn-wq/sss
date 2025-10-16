.class public Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 6

    const-class v0, Lc/b/p/e/m;

    invoke-virtual {p1, v0}, Lc/b/t/a;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/m;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 1
    sget v1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->s:I

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lc/b/p/e/m;->c()D

    move-result-wide v1

    invoke-virtual {p1}, Lc/b/p/e/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lc/b/p/e/m;->b()Ljava/util/List;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#,### \u0111"

    invoke-static {v1, v2}, Lb/u/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->c:Landroid/widget/TextView;

    const-string v2, "#.### Km"

    invoke-static {v3, v2}, Lb/u/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/f;

    invoke-virtual {p1}, Lc/b/p/e/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lc/b/p/e/f;->a()Ljava/lang/String;

    move-result-object p1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    aget-object v3, v3, v5

    iput-object v3, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->o:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-le v4, v5, :cond_1

    aget-object v1, v3, v1

    aget-object v3, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->q:I

    :cond_1
    iget-object v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->k:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->o:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;->a:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;->n:Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity;

    .line 2
    new-instance v1, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b$a;

    invoke-direct {v1, p0}, Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b$a;-><init>(Lcom/emsportal/grab/activity/ConfirmGrabParcelActivity$b;)V

    invoke-static {v0, p1, v1}, Lb/u/a;->j0(Landroid/content/Context;Ljava/lang/String;Lc/b/w/m;)V

    return-void
.end method
