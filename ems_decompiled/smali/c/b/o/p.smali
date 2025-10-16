.class public Lc/b/o/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lc/b/o/s;


# direct methods
.method public constructor <init>(Lc/b/o/s;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/p;->c:Lc/b/o/s;

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

    iget-object p1, p0, Lc/b/o/p;->c:Lc/b/o/s;

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lc/b/o/s;->K:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjDistrict;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjDistrict;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/o/p;->c:Lc/b/o/s;

    .line 3
    iput-object p1, p2, Lc/b/o/s;->N:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    iput-object p2, p1, Lc/b/o/s;->N:Ljava/lang/String;

    :goto_0
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
