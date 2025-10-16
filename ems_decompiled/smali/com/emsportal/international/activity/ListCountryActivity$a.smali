.class public Lcom/emsportal/international/activity/ListCountryActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/international/activity/ListCountryActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/international/activity/ListCountryActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/international/activity/ListCountryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

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
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 3
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 5
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    .line 6
    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    iget-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 7
    iget-object p2, p1, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 8
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->h:Ljava/util/List;

    .line 9
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 10
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->h:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 12
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    .line 13
    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 14
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->h:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_3

    iget-object v0, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 16
    iget-object v0, v0, Lcom/emsportal/international/activity/ListCountryActivity;->h:Ljava/util/List;

    .line 17
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/r/c/a;

    .line 18
    iget-object v1, v0, Lc/b/r/c/a;->d:Ljava/lang/String;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lb/u/a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 20
    iget-object v1, v1, Lcom/emsportal/international/activity/ListCountryActivity;->i:Ljava/util/List;

    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 22
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 24
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 25
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 26
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    .line 27
    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeRemoved(II)V

    iget-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 28
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->i:Ljava/util/List;

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 30
    iget-object p4, p2, Lcom/emsportal/international/activity/ListCountryActivity;->g:Ljava/util/List;

    .line 31
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->i:Ljava/util/List;

    .line 32
    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 33
    iget-object p2, p2, Lcom/emsportal/international/activity/ListCountryActivity;->j:Lc/b/r/b/a;

    .line 34
    invoke-virtual {p2, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyItemRangeInserted(II)V

    iget-object p1, p0, Lcom/emsportal/international/activity/ListCountryActivity$a;->c:Lcom/emsportal/international/activity/ListCountryActivity;

    .line 35
    iget-object p1, p1, Lcom/emsportal/international/activity/ListCountryActivity;->i:Ljava/util/List;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_1
    return-void
.end method
