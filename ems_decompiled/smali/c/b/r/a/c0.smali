.class public Lc/b/r/a/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/c0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lc/b/r/a/c0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V

    const-class v0, Lc/b/r/c/d;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v3, v0

    move-wide v9, v3

    move-wide v11, v9

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/b/r/c/d;

    invoke-virtual {v2}, Lc/b/r/c/d;->a()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {v2}, Lc/b/r/c/d;->b()D

    move-result-wide v5

    add-double/2addr v9, v5

    invoke-virtual {v2}, Lc/b/r/c/d;->c()D

    move-result-wide v5

    add-double/2addr v11, v5

    .line 1
    iget-object v5, v2, Lc/b/r/c/d;->c:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lc/b/r/c/d;->c:Ljava/util/List;

    :cond_1
    iget-object v2, v2, Lc/b/r/c/d;->c:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/b/r/c/o;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-double v7, v3, v0

    iget-object v2, p0, Lc/b/r/a/c0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v12}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->w(Lcom/emsportal/international/activity/CreateParcelBatchActivity;DDDDD)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/b/r/a/c0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->v(Lcom/emsportal/international/activity/CreateParcelBatchActivity;Z)V

    iget-object v0, p0, Lc/b/r/a/c0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
