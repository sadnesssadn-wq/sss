.class public Lc/b/o/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic c:Lc/b/o/s;


# direct methods
.method public constructor <init>(Lc/b/o/s;)V
    .locals 0

    iput-object p1, p0, Lc/b/o/o;->c:Lc/b/o/s;

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

    iget-object p1, p0, Lc/b/o/o;->c:Lc/b/o/s;

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p1, Lc/b/o/s;->I:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/emsportal/model/ObjProvince;

    invoke-virtual {p1}, Lcom/emsportal/model/ObjProvince;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lc/b/o/o;->c:Lc/b/o/s;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lc/b/o/h;

    invoke-direct {p3, p2}, Lc/b/o/h;-><init>(Lc/b/o/s;)V

    .line 4
    sget p2, Lc/b/s/a;->d:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p4, "province_code"

    invoke-virtual {p2, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p4, 0x1

    const-string p5, "http://ws.ems.com.vn/api/v1/address/district"

    invoke-static {p5, p2, p4, p3}, Lc/b/t/b;->a(Ljava/lang/String;Ljava/util/HashMap;ZLc/b/t/b$d;)V

    .line 5
    iget-object p2, p0, Lc/b/o/o;->c:Lc/b/o/s;

    .line 6
    iput-object p1, p2, Lc/b/o/s;->O:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p2, ""

    iput-object p2, p1, Lc/b/o/s;->O:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lc/b/o/s;->k:Landroid/widget/Spinner;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

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
