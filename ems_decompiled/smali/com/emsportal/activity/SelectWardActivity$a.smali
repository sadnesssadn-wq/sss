.class public Lcom/emsportal/activity/SelectWardActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/emsportal/activity/SelectWardActivity;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/emsportal/activity/SelectWardActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/activity/SelectWardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

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

    iget-object p1, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 1
    iget-object p1, p1, Lcom/emsportal/activity/SelectWardActivity;->e:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 3
    iget-object p2, p1, Lcom/emsportal/activity/SelectWardActivity;->e:Ljava/util/List;

    .line 4
    iget-object p1, p1, Lcom/emsportal/activity/SelectWardActivity;->g:Ljava/util/List;

    .line 5
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 6
    iget-object p2, p2, Lcom/emsportal/activity/SelectWardActivity;->g:Ljava/util/List;

    .line 7
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 8
    invoke-virtual {p2, p1}, Lcom/emsportal/activity/SelectWardActivity;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 10
    iget-object p2, p2, Lcom/emsportal/activity/SelectWardActivity;->e:Ljava/util/List;

    .line 11
    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/emsportal/activity/SelectWardActivity$a;->c:Lcom/emsportal/activity/SelectWardActivity;

    .line 12
    iget-object p2, p2, Lcom/emsportal/activity/SelectWardActivity;->e:Ljava/util/List;

    goto :goto_0

    .line 13
    :goto_1
    iget-object p1, p1, Lcom/emsportal/activity/SelectWardActivity;->f:Lc/b/i/j;

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    return-void
.end method
