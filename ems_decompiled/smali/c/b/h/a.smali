.class public final synthetic Lc/b/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectPlaceManualActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/emsportal/activity/SelectPlaceManualActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/b/h/a;->c:Lcom/emsportal/activity/SelectPlaceManualActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lc/b/h/a;->c:Lcom/emsportal/activity/SelectPlaceManualActivity;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    iget-object p2, p1, Lcom/emsportal/activity/SelectPlaceManualActivity;->f:Lc/b/i/h;

    .line 3
    iget-object p4, p2, Lc/b/i/h;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lc/b/i/h;->c:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/emsportal/model/PlaceManual;

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    iput-object p2, p1, Lcom/emsportal/activity/SelectPlaceManualActivity;->g:Lcom/emsportal/model/PlaceManual;

    iget-object p3, p1, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    const p4, 0x7fffffff

    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    invoke-virtual {p2}, Lcom/emsportal/model/PlaceManual;->h()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p3, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/emsportal/activity/SelectPlaceManualActivity;->c:Landroid/widget/AutoCompleteTextView;

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
