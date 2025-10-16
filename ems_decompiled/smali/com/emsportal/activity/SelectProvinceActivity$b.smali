.class public Lcom/emsportal/activity/SelectProvinceActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/activity/SelectProvinceActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectProvinceActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectProvinceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/activity/SelectProvinceActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 3
    iget-object p2, p1, Lcom/emsportal/activity/SelectProvinceActivity;->e:Ljava/util/List;

    .line 4
    iget-object p1, p1, Lcom/emsportal/activity/SelectProvinceActivity;->g:Ljava/util/List;

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/emsportal/activity/SelectProvinceActivity;->f:Lc/b/i/j;

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 8
    iget-object p2, p2, Lcom/emsportal/activity/SelectProvinceActivity;->g:Ljava/util/List;

    .line 9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 10
    invoke-virtual {p2, p1}, Lcom/emsportal/activity/SelectProvinceActivity;->x(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 12
    iget-object p2, p2, Lcom/emsportal/activity/SelectProvinceActivity;->e:Ljava/util/List;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    .line 14
    iget-object p2, p2, Lcom/emsportal/activity/SelectProvinceActivity;->e:Ljava/util/List;

    .line 15
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/activity/SelectProvinceActivity$b;->c:Lcom/emsportal/activity/SelectProvinceActivity;

    goto :goto_0

    :goto_1
    return-void
.end method
