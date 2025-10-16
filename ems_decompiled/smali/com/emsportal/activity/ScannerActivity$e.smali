.class public Lcom/emsportal/activity/ScannerActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/b/t/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/activity/ScannerActivity;->v(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/emsportal/activity/ScannerActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/ScannerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/activity/ScannerActivity$e;->b:Lcom/emsportal/activity/ScannerActivity;

    iput-object p2, p0, Lcom/emsportal/activity/ScannerActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/t/a;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lc/b/t/a;->c:Z

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc/b/m/d/f;

    invoke-virtual {p1, v0}, Lc/b/t/a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/m/d/f;

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity$e;->b:Lcom/emsportal/activity/ScannerActivity;

    .line 3
    sget v1, Lcom/emsportal/activity/ScannerActivity;->n:I

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATA_INVENTORY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class p1, Lcom/emsportal/express/activity/parcel/detail/DetailInventoryActivity;

    invoke-static {v0, p1, v1}, Lb/u/a;->q0(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/emsportal/activity/ScannerActivity$e;->b:Lcom/emsportal/activity/ScannerActivity;

    .line 6
    iget-object v0, p1, Lcom/emsportal/activity/ScannerActivity;->d:Lcom/emsportal/activity/ScannerActivity;

    const v2, 0x7f10029a

    .line 7
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/emsportal/activity/ScannerActivity$e;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity$e;->b:Lcom/emsportal/activity/ScannerActivity;

    .line 8
    iget-object v0, v0, Lcom/emsportal/activity/ScannerActivity;->d:Lcom/emsportal/activity/ScannerActivity;

    .line 9
    iget-object p1, p1, Lc/b/t/a;->d:Ljava/lang/String;

    .line 10
    :goto_0
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/emsportal/activity/ScannerActivity$e;->b:Lcom/emsportal/activity/ScannerActivity;

    .line 1
    iget-object v0, v0, Lcom/emsportal/activity/ScannerActivity;->d:Lcom/emsportal/activity/ScannerActivity;

    .line 2
    invoke-static {v0, p1}, Lb/u/a;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
