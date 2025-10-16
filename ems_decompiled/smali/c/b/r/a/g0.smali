.class public Lc/b/r/a/g0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/w/m;


# instance fields
.field public final synthetic a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/r/a/g0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lc/b/r/a/g0;->a:Lcom/emsportal/international/activity/CreateParcelBatchActivity;

    .line 1
    sget v1, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->c0:I

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->G(Z)V

    invoke-virtual {v0}, Lcom/emsportal/international/activity/CreateParcelBatchActivity;->E()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lc/b/r/a/c0;

    invoke-direct {v2, v0}, Lc/b/r/a/c0;-><init>(Lcom/emsportal/international/activity/CreateParcelBatchActivity;)V

    invoke-static {v1, v2}, Lc/b/s/a;->r(Ljava/util/List;Lc/b/t/b$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
