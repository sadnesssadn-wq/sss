.class public Lc/b/o/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lc/b/o/s;


# direct methods
.method public constructor <init>(Lc/b/o/s;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/n;->c:Lc/b/o/s;

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

    iget-object p1, p0, Lc/b/o/n;->c:Lc/b/o/s;

    .line 1
    iget-object p2, p1, Lc/b/o/s;->G:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/m/d/h0;

    invoke-virtual {p2}, Lc/b/m/d/h0;->h()Ljava/lang/String;

    move-result-object p2

    .line 3
    iput-object p2, p1, Lc/b/o/s;->P:Ljava/lang/String;

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
