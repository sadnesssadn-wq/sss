.class public Lc/b/p/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/u/a$b;


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/RequestGrabParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    iget-object v0, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/p/e/i;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/p/e/i;

    .line 1
    iput-object v1, v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->p:Lc/b/p/e/i;

    .line 2
    iget-object v0, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/p/e/i;

    .line 3
    iput-object p1, v0, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->q:Lc/b/p/e/i;

    .line 4
    iget-object p1, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 5
    iget-object v0, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->p:Lc/b/p/e/i;

    .line 6
    iput-object v0, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->r:Lc/b/p/e/i;

    .line 7
    iget-object p1, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->h:Landroid/widget/RadioButton;

    .line 8
    invoke-virtual {v0}, Lc/b/p/e/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 9
    iget-object v0, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->i:Landroid/widget/RadioButton;

    .line 10
    iget-object p1, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->q:Lc/b/p/e/i;

    .line 11
    invoke-virtual {p1}, Lc/b/p/e/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    .line 12
    iget-object v0, p1, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->o:Lc/b/p/e/b;

    .line 13
    invoke-virtual {p1, v0}, Lcom/emsportal/grab/activity/RequestGrabParcelActivity;->v(Lc/b/p/e/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lc/b/p/a/f;->a:Lcom/emsportal/grab/activity/RequestGrabParcelActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    return-void
.end method
