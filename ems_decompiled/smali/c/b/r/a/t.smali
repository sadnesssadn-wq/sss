.class public Lc/b/r/a/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->S:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 3
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->S:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->v(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Z)V

    const-class v0, Lc/b/r/c/a;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    .line 5
    iget-object v0, v0, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->S:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateInternationalParcelActivity;->v(Lcom/emsportal/international/activity/CreateInternationalParcelActivity;Z)V

    iget-object v0, p0, Lc/b/r/a/t;->a:Lcom/emsportal/international/activity/CreateInternationalParcelActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
