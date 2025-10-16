.class public Lc/b/m/a/b/a/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;)V
    .locals 0

    iput-object p1, p0, Lc/b/m/a/b/a/c;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p1, p0, Lc/b/m/a/b/a/c;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->q:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lc/b/m/a/b/a/c;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    const-string p2, ""

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/b/m/a/b/a/c;->c:Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;

    .line 3
    iget-object p2, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->q:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/m/d/u;

    invoke-virtual {p2}, Lc/b/m/d/u;->a()Ljava/lang/String;

    move-result-object p2

    .line 5
    :goto_0
    iput-object p2, p1, Lcom/emsportal/express/activity/parcel/create/ConfirmInventoryActivity;->t:Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
