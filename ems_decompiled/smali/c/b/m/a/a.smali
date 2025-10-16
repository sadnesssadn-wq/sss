.class public Lc/b/m/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/express/activity/FreightActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/FreightActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/a;->a:Lcom/emsportal/express/activity/FreightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 1

    const-class v0, Lc/b/m/d/o;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/m/a/a;->a:Lcom/emsportal/express/activity/FreightActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/express/activity/FreightActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lc/b/m/a/a;->a:Lcom/emsportal/express/activity/FreightActivity;

    .line 3
    iget-object p1, p1, Lcom/emsportal/express/activity/FreightActivity;->f:Lc/b/m/b/d;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/b/m/a/a;->a:Lcom/emsportal/express/activity/FreightActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
